;########################################################################
;### FUNCTION: drawSprite_clipping_m0                                 ###
;########################################################################
;### This function copies a generic NxM bytes sprite from memory to a ###
;### video-memory location (either present video-memory or hardware   ###
;### backbuffer. The original sprite must be stored as an array (i.e. ###
;### with all of its pixels stored as consecutive bytes in memory) It ###
;### only works for solid, rectangular sprites, with 1-63 bytes width ###
;###------------------------------------------------------------------###
;### WARNING: Do not draw sprites wider than 63 bytes with this routi-###
;### ne: width will be considered negative yielding unexpected results###
;########################################################################
;### INPUTS (6 Bytes)                                                 ###
;###  * (2B DE) Source Sprite Pointer (array with pixel data)         ###
;###  * (1B B) X Coord                                                ###
;###  * (1B C) Y Coord                                                ###
;########################################################################
;### EXIT STATUS                                                      ###
;###  Destroyed Register values: AF, BC, DE, HL                       ###
;########################################################################
;### MEASURES                                                         ###
;### MEMORY:                                                          ###
;### TIME:                  (w=width, h=height)                       ###
;########################################################################
;### This routine was inspired in the original cpc_PutSprite from     ###
;### cpcrslib by Raul Simarro.                                        ###
;########################################################################
;
.globl _drawSprite_clipping_m0
_drawSprite_clipping_m0::

;;
;; Constant values
;;
.equ right, 160                   ;; Limite derecho en mode 0
.equ bottom, 200                  ;; Limite inferior en mode 0       

   ;; GET Parameters from the stack (Pop is fastest way)
   LD (ds_restoreSP+1), SP    ;; [20] Save SP into placeholder of the instruction LD SP, 0, to quickly restore it later.
   DI                         ;; [ 4] Disable interrupts to ensure no one overwrites return address in the stack
   POP  AF                    ;; [10] AF = Return Address
   POP  DE                    ;; [10] DE = Source Address (Sprite data array)
   POP  BC                    ;; [10] BC = X,Y
ds_restoreSP:
   LD SP, #0                  ;; [10] -- Restore Stack Pointer -- (0 is a placeholder which is filled up with actual SP value previously)
   EI                         ;; [ 4] Enable interrupts again
   
inicializar:
    ld a,(de)
    ld (#alto),a
    inc de
    ld a,(de)
    ld (#ancho),a
    ld a,b
    ld (#coord_x),a
    ld a,c
    ld (#coord_y),a
    ld (#sprite_addr),de

;;
;;  calculardireccion
;;  

calculardireccion:			;busco la dirección de pantalla en la tabla de direcciones 
    ld a,c         			;cargo la coordenada y del sprite en a
    ld de,#direcciones_pantalla		;cargo la tabla de direcciones de pantalla
    ld h,#0
    ld l,a				;cargo HL con la coordenada y del sprite
    add hl,hl				;Multiplico por dos la coordenda y porque los elementos de la tabla son de dos bytes 
    add hl,de				;posiciono DE en el valor concreto de la tabla
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
    ld a,b				;cargo la coordenada x en A
    add l				;añado la coordenada x a la dirección obtenida en la tabla
    ld l,a
    jr nc,#calcularclipping
    inc h
    ld (#screen_addr),hl
;;
;; calcularclipping
;;

calcularclipping:
y_menor_que_0:
    ld a,(#coord_y)
    or a
    jr c,#caso_1
    
x_mas_w_mayorque_right:
    ld a,(#coord_x)
    ld bc,(#alto)
    add c
    cp #right
    jr nc,#caso_2
    
y_mas_h_mayorque_bottom:
    ld a,(#coord_y)
    ld bc,(#alto)
    add b
    cp #bottom
    jr nc,#caso_3
    
x_menorque_0:
    ld a,(#coord_x)
    cp #0
    jr c,#caso_4
    
    jr #cpct_drawSprite
    
caso_1:                         ;sprite_address = sprite_address + w * (-y)
    neg  
    ld b,a                       ;ahora en a tengo -y
    ld hl,#sprite_addr
    ld d,#0
    ld a,(#ancho)
    ld e,a
restar_ancho:
    sbc hl,de
    djnz #restar_ancho
    ld a,(#alto)                ;h = h + y
    ld bc,(#coord_x)
    add c
    ld (#alto),a
    xor a
    ld (#coord_y),a             ;y = 0
    jr #x_mas_w_mayorque_right
    
caso_2: 
    ld bc,(#coord_x)            ;extra_right = x + w - right
    ld de,(#alto)
    ld a,b
    add e
    sub #right
    ld (#extra_right+1),a       ;extra_right son dos bytes  
    ld a,#right                  ;w = right - x
    sub b
    ld (#coord_x),a
    jr #y_mas_h_mayorque_bottom
    
caso_3:
    ld bc,(#coord_x)
    ld a,#bottom                 ;h = bottom-y
    sub c
    ld (#alto),a
    jr #x_menorque_0
    
caso_4:
    ld a,(#coord_x)             ;extra_left = -x
    neg
    ld (#extra_left+1),a        ;extra_left son dos bytes
    ld d,a                      ;w = w - extra_left
    ld a,(#ancho)
    add d
    ld (#ancho),a
    xor a                       ;x = 0
    ld (#coord_x),a
    
;;
;; cpct_drawSprite
;;

cpct_drawSprite:

   ;; Añadido por el clipping
   ld HL,(#sprite_addr)
   ld DE,(#screen_addr)

   ;; Modify code using width to jump in drawSpriteWidth
   LD  A, #126                   ;; [ 7] We need to jump 126 bytes (63 LDIs*2 bytes) minus the width of the sprite*2 (2B)
   SUB C                         ;; [ 4]    to do as much LDIs as bytes the Sprite is wide
   SUB C                         ;; [ 4]
   LD (ds_drawSpriteWidth+#4), A ;; [13] Modify JR data to create the jump we need

   LD   A, B                  ;; [ 4] A = Height (used as counter for the number of lines we have to copy)
   EX   DE, HL                ;; [ 4] Instead of jumping over the next line, we do the inverse operation because it is only 4 cycles and not 10, as a JP would be)

ds_drawSpriteWidth_next:
   ;; NEXT LINE
   EX   DE, HL                ;; [ 4] HL and DE are exchanged every line to do 16bit math with DE. This line reverses it before proceeding to copy the next line.

   ;; Añadido por el clipping
   push bc
   ld bc,(#extra_left)
   add hl,bc               
   pop bc
   ;; 

ds_drawSpriteWidth:
   ;; Draw a sprite-line of n bytes
   LD BC, #0x800           ;; [10] 0x800 bytes is the distance in memory from one pixel line to the next within every 8 pixel lines. Each LDI performed will decrease this by 1, as we progress through memory copying the present line
   .DW #0x0018  ;; JR 0    ;; [12] Self modifying instruction: the '00' will be substituted by the required jump forward. (Note: Writting JR 0 compiles but later it gives odd linking errors)
   LDI                     ;; [16] <| 80 LDIs, which are able to copy up to 80 bytes each time.
   LDI                     ;; [16]  | That means that each Sprite line should be 80 bytes width at most.
   LDI                     ;; [16]  | The JR instruction at the start makes us ingnore the LDIs we dont need (jumping over them)
   LDI                     ;; [16] <| That ensures we will be doing only as much LDIs as bytes our sprit is wide
   LDI                     ;; [16] <|
   LDI                     ;; [16]  |
   LDI                     ;; [16]  |
   LDI                     ;; [16] <|
   LDI                     ;; [16] <|
   LDI                     ;; [16]  |
   LDI                     ;; [16]  |
   LDI                     ;; [16] <|
   LDI                     ;; [16] <|
   LDI                     ;; [16]  |
   LDI                     ;; [16]  |
   LDI                     ;; [16] <|
   LDI                     ;; [16] <|
   LDI                     ;; [16]  |
   LDI                     ;; [16]  |
   LDI                     ;; [16] <|
   LDI                     ;; [16]  |
   LDI                     ;; [16] <|
   LDI                     ;; [16] <|
   LDI                     ;; [16]  |
   LDI                     ;; [16]  |
   LDI                     ;; [16] <|
   LDI                     ;; [16] <|
   LDI                     ;; [16]  |
   LDI                     ;; [16]  |
   LDI                     ;; [16] <|
   LDI                     ;; [16]  |
   LDI                     ;; [16] <|
   LDI                     ;; [16] <|
   LDI                     ;; [16]  |
   LDI                     ;; [16]  |
   LDI                     ;; [16] <|
   LDI                     ;; [16] <|
   LDI                     ;; [16]  |
   LDI                     ;; [16]  |
   LDI                     ;; [16] <|
   LDI                     ;; [16]  |
   LDI                     ;; [16] <|
   LDI                     ;; [16] <|
   LDI                     ;; [16]  |
   LDI                     ;; [16]  |
   LDI                     ;; [16] <|
   LDI                     ;; [16] <|
   LDI                     ;; [16]  |
   LDI                     ;; [16]  |
   LDI                     ;; [16] <|
   LDI                     ;; [16]  |
   LDI                     ;; [16] <|
   LDI                     ;; [16] <|
   LDI                     ;; [16]  |
   LDI                     ;; [16]  |
   LDI                     ;; [16] <|
   LDI                     ;; [16] <|
   LDI                     ;; [16]  |
   LDI                     ;; [16]  |
   LDI                     ;; [16] <|   
   LDI                     ;; [16] <|
   LDI                     ;; [16]  |
   LDI                     ;; [16]  |
   
   ;; Añadido por el clipping
   push bc
   ld bc,(#extra_right)
   add hl,bc               
   pop bc
   ;;

   DEC A                   ;; [ 4] Another line finished: we discount it from A
   RET Z                   ;; [11c/5] If that was the last line, we safely return

   ;; Jump destination pointer to the start of the next line in video memory
   EX  DE, HL              ;; [ 4] DE has destination, but we have to exchange it with HL to be able to do 16bit math
   ADD HL, BC              ;; [11] We add 0x800 minus the width of the sprite (BC) to destination pointer 
   LD  B, A                ;; [ 4] Save A into B (B = A)
   LD  A, H                ;; [ 4] We check if we have crossed video memory boundaries (which will happen every 8 lines). If that happens, bits 13,12 and 11 of destination pointer will be 0
   AND #0x38               ;; [ 7] leave out only bits 13,12 and 11
   LD  A, B                ;; [ 4] Restore A from B (A = B)
   JP NZ, ds_drawSpriteWidth_next ;; [10] If that does not leave as with 0, we are still inside video memory boundaries, so proceed with next line

   ;; Every 8 lines, we cross the 16K video memory boundaries and have to
   ;; reposition destination pointer. That means our next line is 16K-0x50 bytes back
   ;; which is the same as advancing 48K+0x50 = 0xC050 bytes, as memory is 64K 
   ;; and our 16bit pointers cycle over it
   LD  BC, #0xC050            ;; [10] We advance destination pointer to next line
   ADD HL, BC                 ;; [11]  HL += 0xC050
   JP ds_drawSpriteWidth_next ;; [10] Continue copying


sprite_addr:     .dw #0
screen_addr:     .dw #0
alto:           .db #0	        ;alto del sprite a imprimir
ancho:          .db #0	        ;ancho del sprite a imprimir
coord_x:         .db #0          ;coordenada x
coord_y:         .db #0          ;coordenada y
extra_right:    .db #0,#0	;almacena el ancho del sprite a imprimir
extra_left:     .db #0,#0	;almacena el ancho del sprite a imprimir
direcciones_pantalla:
    .dw #0xC000,#0xC800,#0xD000,#0xD800,#0xE000,#0xE800,#0xF000,#0xF800,#0xC050,#0xC850
    .dw #0xD050,#0xD850,#0xE050,#0xE850,#0xF050,#0xF850,#0xC0A0,#0xC8A0,#0xD0A0,#0xD8A0
    .dw #0xE0A0,#0xE8A0,#0xF0A0,#0xF8A0,#0xC0F0,#0xC8F0,#0xD0F0,#0xD8F0,#0xE0F0,#0xE8F0
    .dw #0xF0F0,#0xF8F0,#0xC140,#0xC940,#0xD140,#0xD940,#0xE140,#0xE940,#0xF140,#0xF940
    .dw #0xC190,#0xC990,#0xD190,#0xD990,#0xE190,#0xE990,#0xF190,#0xF990,#0xC1E0,#0xC9E0
    .dw #0xD1E0,#0xD9E0,#0xE1E0,#0xE9E0,#0xF1E0,#0xF9E0,#0xC230,#0xCA30,#0xD230,#0xDA30 
    .dw #0xE230,#0xEA30,#0xF230,#0xFA30,#0xC280,#0xCA80,#0xD280,#0xDA80,#0xE280,#0xEA80
    .dw #0xF280,#0xFA80,#0xC2D0,#0xCAD0,#0xD2D0,#0xDAD0,#0xE2D0,#0xEAD0,#0xF2D0,#0xFAD0
    .dw #0xC320,#0xCB20,#0xD320,#0xDB20,#0xE320,#0xEB20,#0xF320,#0xFB20,#0xC370,#0xCB70
    .dw #0xD370,#0xDB70,#0xE370,#0xEB70,#0xF370,#0xFB70,#0xC3C0,#0xCBC0,#0xD3C0,#0xDBC0
    .dw #0xE3C0,#0xEBC0,#0xF3C0,#0xFBC0,#0xC410,#0xCC10,#0xD410,#0xDC10,#0xE410,#0xEC10
    .dw #0xF410,#0xFC10,#0xC460,#0xCC60,#0xD460,#0xDC60,#0xE460,#0xEC60,#0xF460,#0xFC60
    .dw #0xC4B0,#0xCCB0,#0xD4B0,#0xDCB0,#0xE4B0,#0xECB0,#0xF4B0,#0xFCB0,#0xC500,#0xCD00
    .dw #0xD500,#0xDD00,#0xE500,#0xED00,#0xF500,#0xFD00,#0xC550,#0xCD50,#0xD550,#0xDD50
    .dw #0xE550,#0xED50,#0xF550,#0xFD50,#0xC5A0,#0xCDA0,#0xD5A0,#0xDDA0,#0xE5A0,#0xEDA0
    .dw #0xF5A0,#0xFDA0,#0xC5F0,#0xCDF0,#0xD5F0,#0xDDF0,#0xE5F0,#0xEDF0,#0xF5F0,#0xFDF0
    .dw #0xC640,#0xCE40,#0xD640,#0xDE40,#0xE640,#0xEE40,#0xF640,#0xFE40,#0xC690,#0xCE90
    .dw #0xD690,#0xDE90,#0xE690,#0xEE90,#0xF690,#0xFE90,#0xC6E0,#0xCEE0,#0xD6E0,#0xDEE0
    .dw #0xE6E0,#0xEEE0,#0xF6E0,#0xFEE0,#0xC730,#0xCF30,#0xD730,#0xDF30,#0xE730,#0xEF30
    .dw #0xF730,#0xFF30,#0xC780,#0xCF80,#0xD780,#0xDF80,#0xE780,#0xEF80,#0xF780,#0xFF80