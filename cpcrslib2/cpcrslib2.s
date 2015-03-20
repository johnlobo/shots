; ******************************************************
; **       Librería de rutinas SDCC para Amstrad CPC  **
; **       Raúl Simarro (Artaburu)    -   2009, 2012  **
; ******************************************************


.globl _cpc_DisableFirmware

_cpc_DisableFirmware::
	DI
	LD HL,(#0X0038)
	LD (backup_fw),HL
	LD HL,#0X0038
	LD (HL),#0XFB		;EI
	INC HL
	LD (HL),#0XC9		;RET
	EI
	RET

backup_fw:
	.DW  #0

.globl 	_cpc_EnableFirmware

_cpc_EnableFirmware::
	DI
	LD DE,(backup_fw)
	LD HL,#0X0038
	LD (HL),E			;EI
	INC HL
	LD (HL),D			;RET
	EI
	RET


.globl _cpc_SetMode

_cpc_SetMode::
	;ld a,l
	LD HL,#2
	ADD HL,SP
	LD L,(HL)				; Comprobar que el valor vaya a L!!
	LD BC,#0x7F00          ;Gate array port
	LD D,#140 ;@10001100	   ;Mode  and  rom  selection  (and Gate Array function)
	ADD D
	OUT (C),A
	RET


.globl  _cpc_SetColour

_cpc_SetColour::		;El número de tinta 17 es el borde
    LD HL,#2
    ADD HL,SP
  	LD A,(HL)
    INC HL
  	;INC HL
    LD E,(HL)
  	LD BC,#0x7F00                     ;Gate Array
	OUT (C),A                       ;Número de tinta
	LD A,#64 ;@01000000              	;Color (y Gate Array)
	ADD E
	OUT (C),A
	RET


.globl _cpc_SetInk

_cpc_SetInk::
	LD HL,#2
	ADD HL,SP
	LD A,(HL)
	INC HL

	LD B,(HL)
	LD C,B
	JP 0XBC32



.globl _cpc_Random

_cpc_Random::


 ;          LD A,(#valor_previo)
 ;           LD C,A
;			LD L,A
;			LD A,R;
;			ADD L
;            AND #0xB8
;            SCF
;            JP PO,NO_CLR
;            CCF
;NO_CLR:      LD A,C
 ;           RLA
 ;           LD C,A
 ;           LD A,R
 ;           ADD C
 ;           LD (#valor_previo),A
 ;           LD L,A
;            RET

	LD A,(#valor_previo)
	LD L,A
	LD A,R
	ADD L ;LOS 2 ÚLTIMOS BITS DE A DIRÁN SI ES 0,1,2,3
	LD (#valor_previo),A
	LD L,A ;SE DEVUELVE L (CHAR)
	LD H,#0
	RET
valor_previo:
	.db #0xFF





.globl _cpc_ClrScr

_cpc_ClrScr::
	XOR A
	LD HL,#0xC000
	LD DE,#0xC001
	LD BC,#16383
	LD (HL),A
	LDIR
	RET


.globl _cpc_PrintStr

_cpc_PrintStr::
	LD IX,#2
	ADD IX,SP
   	LD l,0 (IX)
	LD h,1 (IX)	;TEXTO ORIGEN

;	LD HL,#2
 ;   ADD HL,SP
;	LD E,(HL)
;	INC HL
;	LD D,(HL)
;	EX DE,HL
bucle_imp_cadena:
	LD A,(HL)
	OR A
	JR Z,salir_bucle_imp_cadena
	CALL #0XBB5A
	INC HL
	JR bucle_imp_cadena
salir_bucle_imp_cadena:
	LD A,#0X0D				; PARA TERMINAR HACE UN SALTO DE LÍNEA
	CALL #0XBB5A
	LD A,#0X0A
	JP 0XBB5A


.globl _cpc_RLI		;rota las líneas que se le digan hacia la izq y mete lo rotado por la derecha.

_cpc_RLI::
	LD IX,#2
	ADD IX,SP
	LD L,0 (IX)
	LD H,1 (IX)	;posición inicial
	LD A,2 (IX)	;lineas
	LD (alto_cpc_RLI+1),A
	LD A,3 (IX)	;ancho
	LD (ancho_cpc_RLI+1),A
	DEC HL
alto_cpc_RLI:
	LD A,#8					;; parametro
ciclo0_cpc_RLI:
	PUSH AF
	PUSH HL
	INC HL
	LD A,(HL)
	LD D,H
	LD E,L
	DEC HL
	LD B, #0
ancho_cpc_RLI:
	LD C,#50	; parametro
	LDDR
	INC HL
	LD (HL),A
	POP HL
	POP AF
	DEC A
	RET Z
	LD BC,#0X800	;salto de línea, ojo salto caracter.
	ADD HL,BC
	JP NC,ciclo0_cpc_RLI ;sig_linea_2zz		;si no desborda va a la siguiente linea
	LD BC,#0XC050
	ADD HL,BC
	JP ciclo0_cpc_RLI


.globl _cpc_RRI
;cpc_RRI(unsigned int pos, unsigned char w, unsigned char h);
_cpc_RRI::
	LD IX,#2
	ADD IX,SP
	LD L,0 (IX)
	LD H,1 (IX)	;posición inicial
	LD A,2 (IX)	;lineas
	LD (alto_cpc_RRI+1),A
	LD A,3 (IX)	;ancho
	LD (ancho_cpc_RRI+1),A
	INC HL
alto_cpc_RRI:
	LD A,#8					;; parametro
ciclo0_cpc_RRI:
	PUSH AF
	PUSH HL
	DEC HL
	LD A,(HL)
	LD D,H
	LD E,L
	INC HL		; SOLO MUEVE 1 BYTE
	LD B, #0
ancho_cpc_RRI:
	LD C,#50	; PARAMETRO
	LDIR
	DEC HL
	LD (HL),A
	POP HL
	POP AF
	DEC A
	RET Z
	LD BC,#0X800	;salto de línea, ojo salto caracter
	ADD HL,BC
	JP NC,ciclo0_cpc_RRI ;sig_linea_2zz		;si no desborda va a la siguiente linea
	LD BC,#0XC050
	ADD HL,BC
	JP ciclo0_cpc_RRI


	

