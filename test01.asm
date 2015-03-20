;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
; This file was generated Fri Mar 20 19:33:18 2015
;--------------------------------------------------------
	.module test01
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _setColours
	.globl _pause
	.globl _cpc_SetColour
	.globl _cpc_SetMode
	.globl _cpc_DisableFirmware
	.globl _cpc_EnableFirmware
	.globl _drawSprite_clipping_m0
	.globl _tintas
	.globl _heart
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_heart::
	.ds 17
_tintas::
	.ds 17
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;test01.c:20: void pause(unsigned int p){
;	---------------------------------
; Function pause
; ---------------------------------
_pause_start::
_pause:
;test01.c:22: for (i=0; i < p; i++) {
	ld	de,#0x0000
00103$:
	ld	hl,#2
	add	hl,sp
	ld	a,e
	sub	a, (hl)
	ld	a,d
	inc	hl
	sbc	a, (hl)
	ret	NC
;test01.c:25: __endasm;
	halt
;test01.c:22: for (i=0; i < p; i++) {
	inc	de
	jr	00103$
	ret
_pause_end::
;test01.c:33: void setColours()
;	---------------------------------
; Function setColours
; ---------------------------------
_setColours_start::
_setColours:
;test01.c:36: for (x=0; x<17; x++)
	ld	e,#0x00
00102$:
;test01.c:38: cpc_SetColour(x,tintas[x]);
	ld	hl,#_tintas
	ld	d,#0x00
	add	hl, de
	ld	h,(hl)
	push	de
	push	hl
	inc	sp
	ld	a,e
	push	af
	inc	sp
	call	_cpc_SetColour
	pop	af
	pop	de
;test01.c:36: for (x=0; x<17; x++)
	inc	e
	ld	a,e
	sub	a, #0x11
	jr	C,00102$
	ret
_setColours_end::
;test01.c:42: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main_start::
_main:
;test01.c:46: cpc_DisableFirmware();
	call	_cpc_DisableFirmware
;test01.c:48: cpc_SetMode(0);
	xor	a, a
	push	af
	inc	sp
	call	_cpc_SetMode
	inc	sp
;test01.c:50: setColours();
	call	_setColours
;test01.c:52: cpc_SetColour(17,3);
	ld	hl,#0x0311
	push	hl
	call	_cpc_SetColour
	pop	af
;test01.c:54: for (i=0;i<200;i=i+5){
	ld	d,#0x00
;test01.c:55: for (j=0;j<79;j=j+3){
00109$:
	ld	e,#0x00
00103$:
;test01.c:57: drawSprite_clipping_m0(heart,j,i);
	ld	bc,#_heart
	push	de
	push	de
	push	bc
	call	_drawSprite_clipping_m0
	pop	af
	pop	af
	pop	de
;test01.c:55: for (j=0;j<79;j=j+3){
	inc	e
	inc	e
	inc	e
	ld	a,e
	sub	a, #0x4F
	jr	C,00103$
;test01.c:54: for (i=0;i<200;i=i+5){
	ld	a,d
	add	a, #0x05
	ld	d,a
	sub	a, #0xC8
	jr	C,00109$
;test01.c:61: pause(1000);
	ld	hl,#0x03E8
	push	hl
	call	_pause
	pop	af
;test01.c:62: cpc_EnableFirmware();
	jp	_cpc_EnableFirmware
_main_end::
	.area _CODE
	.area _INITIALIZER
__xinit__heart:
	.db #0x03	; 3
	.db #0x05	; 5
	.db #0x50	; 80	'P'
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0xB4	; 180
	.db #0x3C	; 60
	.db #0x28	; 40
	.db #0xB4	; 180
	.db #0x3C	; 60
	.db #0x28	; 40
	.db #0x14	; 20
	.db #0x3C	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x00	; 0
__xinit__tintas:
	.db #0x14	; 20
	.db #0x01	; 1
	.db #0x0B	; 11
	.db #0x09	; 9
	.db #0x0A	; 10
	.db #0x0E	; 14
	.db #0x0C	; 12
	.db #0x1C	; 28
	.db #0x1A	; 26
	.db #0x16	; 22
	.db #0x1E	; 30
	.db #0x13	; 19
	.db #0x1F	; 31
	.db #0x17	; 23
	.db #0x15	; 21
	.db #0x10	; 16
	.db #0x14	; 20
	.area _CABS (ABS)
