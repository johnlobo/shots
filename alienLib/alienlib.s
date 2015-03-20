;
;########################################################################
;### FUNCTION: cpct_drawSprite                                        ###
;########################################################################
;### This function copies a generic NxM bytes sprite from memory to a ###
;### video-memory location (either present video-memory or hardware   ###
;### backbuffer. The original sprite must be stored as an array (i.e. ###
;### with all of its pixels stored as consecutive bytes in memory) It ###
;### only works for solid, rectangular sprites, with 1-63 bytes width ###
;########################################################################
;### INPUTS (6 Bytes)                                                 ###
;###  * (2B) Source Sprite Pointer (array with pixel data)            ###
;###  * (2B) Destination video memory pointer                         ###
;###  * (1B) Sprite Width in bytes (Max.63)                           ###
;###  * (1B) Sprite Height in bytes                                   ###
;########################################################################
;### EXIT STATUS                                                      ###
;###  Destroyed Register values: AF, BC, DE, HL                       ###
;########################################################################
;### MEASURED TIME                                                    ###
;### [82 + (79 + 16w)h + 31c] cycles; w=width,h=height,c=8linecrosses ###
;### Examples:                                                        ###
;### 2x16 byte sprite = 1920/1889 cycles                              ###
;### 4x32 byte sprite = 4782/4751 cycles                              ###
;########################################################################
;
.globl _cpct_drawSprite
_cpct_drawSprite::
   ;; GET Parameters from the stack (Push+Pop is faster than referencing with IX)
   POP  AF                 ;; [10c] AF = Return Address
   POP  HL                 ;; [10c] HL = Source address
   POP  DE                 ;; [10c] DE = Destination address
   ;;POP  BC                 ;; [10c] BC = Height/Width
   ;;PUSH BC                 ;; [11c] Leave the stack as it was
   PUSH DE                 ;; [11c] 
   PUSH HL                 ;; [11c] 
   PUSH AF                 ;; [11c] 

   ;; B = Width, C = Height
   LD C,(HL)
   INC HL
   LD B,(HL)
   INC HL
   
   ;; Modify code using width to jump in drawSpriteWidth
   LD  A, #126                   ;; [ 7c] We need to jump 126 bytes (63 LDIs*2 bytes) minus the width of the sprite*2 (2B)
   SUB C                         ;; [ 4c]    to do as much LDIs as bytes the Sprite is wide
   SUB C                         ;; [ 4c]
   LD (ds_drawSpriteWidth+#4), A ;; [13c] Modify JR data to create the jump we need

   LD   A, B                 ;; [ 4c] A = Height (used as counter for the number of lines we have to copy)
   EX   DE, HL               ;; [ 4c] Instead of jumping over the next line, we do the inverse operation because it is only 4 cycles and not 10, as a JP would be)

ds_drawSpriteWidth_next:
   ;; NEXT LINE
   EX   DE, HL             ;; [ 4c] HL and DE are exchanged every line to do 16bit math with DE. This line reverses it before proceeding to copy the next line.

ds_drawSpriteWidth:
   ;; Draw a sprite-line of n bytes
   LD BC, #0x800           ;; [10c] 0x800 bytes is the distance in memory from one pixel line to the next within every 8 pixel lines. Each LDI performed will decrease this by 1, as we progress through memory copying the present line
   .DW #0x0018  ;; JR 0    ;; [12c] Self modifying instruction: the '00' will be substituted by the required jump forward. (Note: Writting JR 0 compiles but later it gives odd linking errors)
   LDI                     ;; [16c] <| 80 LDIs, which are able to copy up to 80 bytes each time.
   LDI                     ;; [16c]  | That means that each Sprite line should be 80 bytes width at most.
   LDI                     ;; [16c]  | The JR instruction at the start makes us ingnore the LDIs we dont need (jumping over them)
   LDI                     ;; [16c] <| That ensures we will be doing only as much LDIs as bytes our sprit is wide
   LDI                     ;; [16c] <|
   LDI                     ;; [16c]  |
   LDI                     ;; [16c]  |
   LDI                     ;; [16c] <|
   LDI                     ;; [16c] <|
   LDI                     ;; [16c]  |
   LDI                     ;; [16c]  |
   LDI                     ;; [16c] <|
   LDI                     ;; [16c] <|
   LDI                     ;; [16c]  |
   LDI                     ;; [16c]  |
   LDI                     ;; [16c] <|
   LDI                     ;; [16c] <|
   LDI                     ;; [16c]  |
   LDI                     ;; [16c]  |
   LDI                     ;; [16c] <|
   LDI                     ;; [16c]  |
   LDI                     ;; [16c] <|
   LDI                     ;; [16c] <|
   LDI                     ;; [16c]  |
   LDI                     ;; [16c]  |
   LDI                     ;; [16c] <|
   LDI                     ;; [16c] <|
   LDI                     ;; [16c]  |
   LDI                     ;; [16c]  |
   LDI                     ;; [16c] <|
   LDI                     ;; [16c]  |
   LDI                     ;; [16c] <|
   LDI                     ;; [16c] <|
   LDI                     ;; [16c]  |
   LDI                     ;; [16c]  |
   LDI                     ;; [16c] <|
   LDI                     ;; [16c] <|
   LDI                     ;; [16c]  |
   LDI                     ;; [16c]  |
   LDI                     ;; [16c] <|
   LDI                     ;; [16c]  |
   LDI                     ;; [16c] <|
   LDI                     ;; [16c] <|
   LDI                     ;; [16c]  |
   LDI                     ;; [16c]  |
   LDI                     ;; [16c] <|
   LDI                     ;; [16c] <|
   LDI                     ;; [16c]  |
   LDI                     ;; [16c]  |
   LDI                     ;; [16c] <|
   LDI                     ;; [16c]  |
   LDI                     ;; [16c] <|
   LDI                     ;; [16c] <|
   LDI                     ;; [16c]  |
   LDI                     ;; [16c]  |
   LDI                     ;; [16c] <|
   LDI                     ;; [16c] <|
   LDI                     ;; [16c]  |
   LDI                     ;; [16c]  |
   LDI                     ;; [16c] <|   
   LDI                     ;; [16c] <|
   LDI                     ;; [16c]  |
   LDI                     ;; [16c]  |

   DEC A                   ;; [ 4c] Another line finished: we discount it from A
   RET Z                   ;; [11c/5c] If that was the last line, we safely return

   ;; Jump destination pointer to the start of the next line in video memory
   EX  DE, HL              ;; [ 4c] DE has destination, but we have to exchange it with HL to be able to do 16bit math
   ADD HL, BC              ;; [11c] We add 0x800 minus the width of the sprite (BC) to destination pointer 
   LD  B, A                ;; [ 4c] Save A into B (B = A)
   LD  A, H                ;; [ 4c] We check if we have crossed video memory boundaries (which will happen every 8 lines). If that happens, bits 13,12 and 11 of destination pointer will be 0
   AND #0x38               ;; [ 7c] leave out only bits 13,12 and 11
   LD  A, B                ;; [ 4c] Restore A from B (A = B)
   JP NZ, ds_drawSpriteWidth_next ;; [10c] If that does not leave as with 0, we are still inside video memory boundaries, so proceed with next line

   ;; Every 8 lines, we cross the 16K video memory boundaries and have to
   ;; reposition destination pointer. That means our next line is 16K-0x50 bytes back
   ;; which is the same as advancing 48K+0x50 = 0xC050 bytes, as memory is 64K 
   ;; and our 16bit pointers cycle over it
   LD  BC, #0xC050         ;; [10c] B850h = C050h - 800h
   ADD HL, BC              ;; [11c] We advance destination pointer to next line
   JP ds_drawSpriteWidth_next ;; [10c] and then continue copying

;******************************
; 	unsigned char fastCollision2(unsigned char x1,unsigned char y1,unsigned char w1,unsigned char h1,unsigned char x2,unsigned char y2,unsigned char w2,unsigned char h2){
; 	Descripción:	Devuelve la dirección de pantalla correspondiente a las coordenadas x,y pasadas 
;					como parámetro
;	Entrada:	- Coordenada x objeto 1
;				- Coordenada y objeto 1
;				- Ancho objeto 1
;				- Alto objeto 1
;				- Coordenada x objeto 1
;				- Coordenada y objeto 1
;				- Ancho objeto 1
;				- Alto objeto 1
;	Salida:		- HL = 1 si se ha producido una colisión, HL = 0 en caso contrario
;	Modificados: 
;
; @JohnLobo Nov15  
;******************************
.globl _fastCollision2
_fastCollision2::	

	ld ix,#2
	add ix,sp
	
	ld a,0 (ix)				;recupero la coordenada x1
	ld h,a
	ld a,2 (ix)				;recupero el ancho 1
	ld e,a
	ld a,3 (ix)
	ld d,a
	push de
	ld a,(de)
	add a,h
	ld l,a
	ld a,4 (ix)				;recupero la coordenada x2
	ld b,a
	ld a,6 (ix)				;recupero el ancho 2
	ld e,a
	ld a,7 (ix)
	ld d,a
	ld a,(de)
	add a,b
	ld c,a
	call #solseg2
	jr nc, no_choca2
	ld a,1 (ix)				;recupero la coordenada y1
	ld h,a
	pop bc					;recupero el alto 1
	push de
	push bc
	pop de
	inc de
	ld a,(de)
	add a,h
	ld l,a
	ld a,5 (ix)				;recupero la coordenada y2
	ld b,a
	pop de					;recupero el alto 2	
	inc de
	ld a,(de)
	add a,b
	ld c,a
	call #solseg2
	jr nc, no_choca2
	ld h,#0
	ld l,#1
	ret
no_choca2:
	ld h,#0
	ld l,#0
	ret

solseg2:
	ld a,c					;solapamaiento
	cp h
	jr c, #solseg12			;no hay colisión continua
	ld a,l
	cp b
solseg12:
	ccf						;complemento carry
	ret   
   
;******************************
; 	unsigned char fastCollision(unsigned char x1,unsigned char y1,unsigned char w1,unsigned char h1,unsigned char x2,unsigned char y2,unsigned char w2,unsigned char h2){
; 	Descripción:	Devuelve la dirección de pantalla correspondiente a las coordenadas x,y pasadas 
;					como parámetro
;	Entrada:	- Coordenada x objeto 1
;				- Coordenada y objeto 1
;				- Ancho objeto 1
;				- Alto objeto 1
;				- Coordenada x objeto 1
;				- Coordenada y objeto 1
;				- Ancho objeto 1
;				- Alto objeto 1
;	Salida:		- HL = 1 si se ha producido una colisión, HL = 0 en caso contrario
;	Modificados: 
;
; @JohnLobo Nov15  
;******************************
.globl _fastCollision
_fastCollision::	

	ld ix,#2
	add ix,sp
	
	ld a,0 (ix)				;recupero la coordenada x1
	ld h,a
	ld a,2 (ix)				;recupero el ancho 1
	add a,h
	ld l,a
	ld a,4 (ix)				;recupero la coordenada x2
	ld b,a
	ld a,6 (ix)				;recupero el ancho 2
	add a,b
	ld c,a
	call #solseg
	jr nc, no_choca
	ld a,1 (ix)				;recupero la coordenada y1
	ld h,a
	ld a,3 (ix)				;recupero el alto 1
	add a,h
	ld l,a
	ld a,5 (ix)				;recupero la coordenada y2
	ld b,a
	ld a,7 (ix)				;recupero el alto 2
	add a,b
	ld c,a
	call #solseg
	jr nc, no_choca
	ld h,#0
	ld l,#1
	ret
no_choca:
	ld h,#0
	ld l,#0
	ret

solseg:
	ld a,c					;solapamaiento
	cp h
	jr c, #solseg1			;no hay colisión continua
	ld a,l
	cp b
solseg1:
	ccf						;complemento carry
	ret
	
	
	
	

;******************************
; 	unsigned char detectColision(unsigned char x1,unsigned char y1,unsigned char w1,unsigned char h1,unsigned char x2,unsigned ; 			  char y2,unsigned char w2,unsigned char h2){
;	return ((x1 < x2 + w2) &&
;	(x1 + w1 > x2) &&
;	(y1 < y2 + h2) &&
;	(h1 + y1 > y2));
;
; 	Descripción:	Devuelve la dirección de pantalla correspondiente a las coordenadas x,y pasadas 
;					como parámetro
;	Entrada:	- Coordenada x objeto 1
;				- Coordenada y objeto 1
;				- Ancho objeto 1
;				- Alto objeto 1
;				- Coordenada x objeto 1
;				- Coordenada y objeto 1
;				- Ancho objeto 1
;				- Alto objeto 1
;	Salida:		- HL = 1 si se ha producido una colisión, HL = 0 en caso contrario
;	Modificados: 
;
; @JohnLobo Nov15  
;******************************
.globl _detectCollision
_detectCollision::		
	
	ld ix,#2
	add ix,sp
	
	ld a,0 (ix)				;recupero la coordenada x1
	ld (#coordenadas1),a
	ld a,1 (ix)				;recupero la coordenada y1
	ld (#coordenadas1+1),a
	ld a,2 (ix)				;recupero el ancho 1
	ld (#dimensiones1),a
	ld a,3 (ix)				;recupero el alto 1
	ld (#dimensiones1+1),a
	ld a,4 (ix)				;recupero la coordenada x2
	ld (#coordenadas2),a
	ld a,5 (ix)				;recupero la coordenada y2
	ld (#coordenadas2+1),a
	ld a,6 (ix)				;recupero el ancho 2
	ld (#dimensiones2),a
	ld a,7 (ix)				;recupero el alto 2
	ld (#dimensiones2+1),a

; x1 < x2 + w2
	ld b,#0
	ld a,(#coordenadas2)
	ld c,a
	ld h,#0
	ld a,(#dimensiones2)
	ld l,a
	add hl,bc
	ex de,hl
	ld h,#0
	ld a,(#coordenadas1)
	ld l,a
	or a
	sbc hl,de
	jp m,#positivo1   ; Salta si HL < DE
	jp comparacion2
positivo1:
	ld a,#1
	ld (#resultado1),a
; x1 + w1 > x2
comparacion2:
	ld d,#0
	ld a,(#dimensiones1)
	ld e,a
	add hl,de
	ex de,hl
	ld h,#0
	ld a,(#coordenadas2)
	ld l,a
	or a
	sbc hl,de
	jp p,#positivo2   ; Salta si DE > HL
	jp comparacion3
positivo2:
	ld a,#1
	ld (#resultado2),a
; y1 < y2 + h2
comparacion3:
	ld b,#0
	ld a,(#coordenadas2+1)
	ld c,a
	ld h,#0
	ld a,(#dimensiones2+1)
	ld l,a
	add hl,bc
	ex de,hl
	ld h,#0
	ld a,(#coordenadas1+1)
	ld l,a
	or a
	sbc hl,de
	jp m,#positivo3   ; Salta si HL < DE
	jp comparacion4
positivo3:
	ld a,#1
	ld (#resultado4),a
; h1 + y1 > y2
comparacion4:
	ld d,#0
	ld a,(#dimensiones1+1)
	ld e,a
	add hl,de
	ex de,hl
	ld h,#0
	ld a,(#coordenadas2+1)
	ld l,a
	or a
	sbc hl,de
	jp p,#positivo4   ; Salta si DE > HL
	jp colision
positivo4:
	ld a,#1
	ld (#resultado4),a
colision:
	ld b,#4
	ld de,#resultado1
bucle:
	ld a,(de)
	or a
	jp z, #nocol
	djnz #bucle
	ld h,#0
	ld l,#1
	jp salida
nocol:
	ld h,#0
	ld l,#0
salida:
	ret
	coordenadas1: .dw #0
	dimensiones1: .dw #0
	coordenadas2: .dw #0
	dimensiones2: .dw #0
	resultado1: .db #0
	resultado2: .db #0
	resultado3: .db #0
	resultado4: .db #0

;******************************
; 	int getScreenAddress (char x, char y)
;
; 	Descripción:	Devuelve la dirección de pantalla correspondiente a las coordenadas x,y pasadas 
;					como parámetro
;	Entrada:	- Coordenada x
;				- Coordenada y
;	Salida:		- HL : Dirección de pantalla.
;	Modificados: HL devuelve la dirección de pantalla
;
; @JohnLobo Nov15  
;******************************
.globl _getScreenAddress
_getScreenAddress::				; dibujar en pantalla el sprite
	push bc
	push de
	ld ix,#6
	add ix,sp
	ld b,0 (ix)					;recupero la coordenada x
	ld c,1 (ix)					;recupero la coordenada y

getScreenAddressInicio:	
	ld a,b						;Compruebo si x esta dentro de los limites de la pantalla
	cp #0
	jr c,#error
	cp #0x50
	jr nc,#error
	ld a,c						;Compruebo si y esta dentro de los limites de la pantalla
	cp #0xc8
	jr nc,#error
	cp #0
	jr c,#error
	
calculardireccionGSA:			;busco la dirección de pantalla en la tabla de direcciones 
	
	ld a,c						;cargo la coordenada y del sprite en A
	ld de,#direccionesPantalla	;cargo la tabla de direcciones de pantalla
	ld h,#0
	ld l,a						;cargo HL con la coordenada y del sprite
	add hl,hl					;Multiplico por dos la coordenda y porque los elementos de la tabla son de dos bytes 
	add hl,de					;posiciono DE en el valor concreto de la tabla
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
	ld a,b						;cargo la coordenada x en A
	add l						;añado la coordenada x a la dirección obtenida en la tabla
	ld l,a
	jr nc,#salir
	inc h
	jr #salir
error:
	ld hl,#0x0000
salir:
	pop de
	pop bc
	ret
	
;******************************
; printSpriteXOR (int sprite, char x, char y, int direccion)
;
; 	Descripción:	Imprime un sprite a partir de unas coordenadas de pantalla, o de una dirección 
;					aplicando clipping para no salir fuera de los límites de la pantalla y comprobando
;					al inicio si las coordenadas x e y están dentro de dichos límites.
;	Entrada:	- Dirección del sprite. Comienza con el alto y el ancho
;				- Coordenada x
;				- Coordenada y
;				- Dirección de pantalla. 0 Si se quiere que se calcule a partir de las coordenadas
;	Salida:	Ninguna
;	Modificados: Ninguno. Se hace uso del set alternativo de registros
;
; @JohnLobo Nov15  
;******************************
.globl _printSpriteXOR
_printSpriteXOR::			; dibujar en pantalla el sprite
	exx						; cambio los registros
	ld ix,#2
	add ix,sp
	ld b,2 (ix)				;recupero la coordenada x
	ld c,3 (ix)				;recupero la coordenada y
  	ld l,4 (ix)				;recupero la direccion del pantalla (2 bytes)
	ld h,5 (ix)
	
	ld a,b					;Compruebo si x esta dentro de los limites de la pantalla
	cp #0
	jp c,#volver
	cp #0x50
	jp nc,#volver
	ld a,c					;Compruebo si y esta dentro de los limites de la pantalla
	cp #0xc8
	jp nc,#volver
	cp #0
	jr c,#volver
	
	ld a,h					;compruebo si la dirección es 0 para calcularla o pasar a calcular el clipping
	or l
	jr nz,#calcularclipping
calculardireccion:			;busco la dirección de pantalla en la tabla de direcciones 
	ld a,c					;cargo la coordenada y del sprite en A
	ld de,#direccionesPantalla		;cargo la tabla de direcciones de pantalla
	ld h,#0
	ld l,a					;cargo HL con la coordenada y del sprite
	add hl,hl				;Multiplico por dos la coordenda y porque los elementos de la tabla son de dos bytes 
	add hl,de				;posiciono DE en el valor concreto de la tabla
    ld a,(hl)
    inc hl
    ld h,(hl)
    ld l,a
	ld a,b					;cargo la coordenada x en A
	add l					;añado la coordenada x a la dirección obtenida en la tabla
	ld l,a
	jr nc,#calcularclipping
	inc h
calcularclipping:
	ld e,0 (ix)				;recupero la dirección del sprite (dos bytes)
	ld d,1 (ix)
	xor a
	ld (#anchoFuera),a
	ld a,(de)
	ld (#ancho),a
	add b
	cp #0x50
	jr c,#calculoalto
	sub #0x50
	ld (#anchoFuera),a
calculoalto:
	xor a
	ld (#altoFuera),a
	inc de
	ld a,(de)
	inc de
	ld (#alto),a
	add c
	cp #0xc8
	jr c,#imprimirsprite
	ld a,#0xc8
	sub c
	ld (#altoFuera),a	
imprimirsprite:	
	ld a,(#ancho)
    ld (#anchox0+#1),a			;actualizo rutina de captura
	sub #1
	cpl
	ld (#suma_siguiente_lineax0+#1),a    ;comparten los 2 los mismos valores.
	ld a,(#alto)
	jp cpc_putspxor0
cpc_putspxor0:
	.db #0xfd
	ld h,a						;ALTO, SE PUEDE TRABAJAR CON HX DIRECTAMENTE
	ld b,#7
anchox0:
loop_alto_2x:
	ld c,#4
loop_ancho_2x:
	ld a, (#anchoFuera)		;clipping cargo en A los bytes que quedan fuera
	cp c					;comparo los bytes que quedan por imprimir con los que quedan fuera
	jr nc,#saltoClipping
	ld a,(de)
	xor (hl)
	ld (hl),a
saltoClipping:	
	inc de
	inc hl
	dec c
	jp nz,loop_ancho_2x
	.db #0xfd
	dec h
	jr z,#volver

suma_siguiente_lineax0:
salto_lineax:
	ld c,#0xff						;&07F6 			;SALTO LINEA MENOS ANCHO
	add hl,bc
	jp nc,loop_alto_2x 				;SIG_LINEA_2ZZ		;SI NO DESBORDA VA A LA SIGUIENTE LINEA
	ld bc,#0xc050
	add hl,bc
	ld b,#7							;SÓLO SE DARÍA UNA DE CADA 8 VECES EN UN SPRITE
	jp loop_alto_2x

volver:
	exx
	ret

ancho: .db #0				;almacena el ancho del sprite a imprimir
alto: .db #0				;almacena el ancho del sprite a imprimir
anchoFuera: .db #0			;almacena el ancho del sprite a imprimir
altoFuera: .db #0			;almacena el ancho del sprite a imprimir
direccionesPantalla:
.dw #0xC000,#0xC800,#0xD000,#0xD800,#0xE000,#0xE800,#0xF000,#0xF800,#0xC050,#0xC850,#0xD050,#0xD850,#0xE050,#0xE850,#0xF050,#0xF850,#0xC0A0,#0xC8A0,#0xD0A0,#0xD8A0,#0xE0A0,#0xE8A0,#0xF0A0,#0xF8A0,#0xC0F0,#0xC8F0,#0xD0F0,#0xD8F0,#0xE0F0,#0xE8F0,#0xF0F0,#0xF8F0,#0xC140,#0xC940,#0xD140,#0xD940,#0xE140,#0xE940,#0xF140,#0xF940,#0xC190,#0xC990,#0xD190,#0xD990,#0xE190,#0xE990,#0xF190,#0xF990,#0xC1E0,#0xC9E0,#0xD1E0,#0xD9E0,#0xE1E0,#0xE9E0,#0xF1E0,#0xF9E0,#0xC230,#0xCA30,#0xD230,#0xDA30,#0xE230,#0xEA30,#0xF230,#0xFA30,#0xC280,#0xCA80,#0xD280,#0xDA80,#0xE280,#0xEA80,#0xF280,#0xFA80,#0xC2D0,#0xCAD0,#0xD2D0,#0xDAD0,#0xE2D0,#0xEAD0,#0xF2D0,#0xFAD0,#0xC320,#0xCB20,#0xD320,#0xDB20,#0xE320,#0xEB20,#0xF320,#0xFB20,#0xC370,#0xCB70,#0xD370,#0xDB70,#0xE370,#0xEB70,#0xF370,#0xFB70,#0xC3C0,#0xCBC0,#0xD3C0,#0xDBC0,#0xE3C0,#0xEBC0,#0xF3C0,#0xFBC0,#0xC410,#0xCC10,#0xD410,#0xDC10,#0xE410,#0xEC10,#0xF410,#0xFC10,#0xC460,#0xCC60,#0xD460,#0xDC60,#0xE460,#0xEC60,#0xF460,#0xFC60,#0xC4B0,#0xCCB0,#0xD4B0,#0xDCB0,#0xE4B0,#0xECB0,#0xF4B0,#0xFCB0,#0xC500,#0xCD00,#0xD500,#0xDD00,#0xE500,#0xED00,#0xF500,#0xFD00,#0xC550,#0xCD50,#0xD550,#0xDD50,#0xE550,#0xED50,#0xF550,#0xFD50,#0xC5A0,#0xCDA0,#0xD5A0,#0xDDA0,#0xE5A0,#0xEDA0,#0xF5A0,#0xFDA0,#0xC5F0,#0xCDF0,#0xD5F0,#0xDDF0,#0xE5F0,#0xEDF0,#0xF5F0,#0xFDF0,#0xC640,#0xCE40,#0xD640,#0xDE40,#0xE640,#0xEE40,#0xF640,#0xFE40,#0xC690,#0xCE90,#0xD690,#0xDE90,#0xE690,#0xEE90,#0xF690,#0xFE90,#0xC6E0,#0xCEE0,#0xD6E0,#0xDEE0,#0xE6E0,#0xEEE0,#0xF6E0,#0xFEE0,#0xC730,#0xCF30,#0xD730,#0xDF30,#0xE730,#0xEF30,#0xF730,#0xFF30,#0xC780,#0xCF80,#0xD780,#0xDF80,#0xE780,#0xEF80,#0xF780,#0xFF80

