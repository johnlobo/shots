;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (Mac OS X i386)
; This file was generated Tue Mar 31 18:09:50 2015
;--------------------------------------------------------
	.module test02
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _setColours
	.globl _pause
	.globl _sprites
	.globl _cpc_SetColour
	.globl _cpc_SetMode
	.globl _cpc_DisableFirmware
	.globl _cpc_EnableFirmware
	.globl _drawSprite_clipping_m0
	.globl _way_points
	.globl _redFlag
	.globl _pos_ship
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_pos_ship::
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_redFlag::
	.ds 14
_way_points::
	.ds 8
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
;sprites.h:21: void sprites(void){
;	---------------------------------
; Function sprites
; ---------------------------------
_sprites_start::
_sprites:
;sprites.h:94: __endasm;
	_ship01:
	.db 0x06, 0x10 ; Width x Height
; pixels
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.db 0x00, 0x00, 0x44, 0x88, 0x00, 0x00
	.db 0x00, 0x00, 0x04, 0x08, 0x00, 0x00
	.db 0x00, 0x00, 0x0C, 0x0C, 0x00, 0x00
	.db 0x00, 0x00, 0x18, 0x24, 0x00, 0x00
	.db 0x00, 0x00, 0x18, 0x24, 0x00, 0x00
	.db 0x00, 0x00, 0x4C, 0x8C, 0x00, 0x00
	.db 0x00, 0x88, 0x0C, 0x0C, 0x44, 0x00
	.db 0x00, 0x88, 0x0C, 0x0C, 0x44, 0x00
	.db 0x00, 0x8C, 0x0C, 0x0C, 0x4C, 0x00
	.db 0x00, 0x8C, 0xCC, 0x64, 0x4C, 0x00
	.db 0x00, 0x4C, 0x98, 0x64, 0x8C, 0x00
	.db 0x00, 0x4C, 0x0C, 0x0C, 0x8C, 0x00
	.db 0x00, 0x04, 0x0C, 0x0C, 0x08, 0x00
	.db 0x00, 0x00, 0xA9, 0xA9, 0x00, 0x00
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	_bullet01:
	.db 0x00,0x00
	.db 0x14,0x28
	.db 0x14,0x02
	.db 0x01,0x02
	.db 0x01,0x02
	.db 0x01,0x02
	.db 0x00,0x00
	_bullet02:
	.db 0x00,0x00
	.db 0x11,0x22
	.db 0x11,0x8A
	.db 0x45,0x8A
	.db 0x00,0x00
	_heart:
	.db 0x03, 0x05 ; Width x Height
; pixels
	.db 0x01, 0x54, 0x00
	.db 0x56, 0xFC, 0xA8
	.db 0x56, 0xFC, 0xA8
	.db 0x54, 0xFC, 0x00
	.db 0x00, 0xA8, 0x00
	_plane:
	.db 0x03, 0x06 ; Width x Height
; pixels
	.db 0x00, 0x8C, 0x00
	.db 0x00, 0x8C, 0x00
	.db 0x23, 0xFF, 0x00
	.db 0xBF, 0xFF, 0xCC
	.db 0x00, 0xCC, 0x00
	.db 0x00, 0x00, 0x00
	_greenFlag:
	.db 0x03, 0x06 ; Width x Height
; pixels
	.db 0x00, 0x85, 0x00
	.db 0x21, 0x85, 0x00
	.db 0xA5, 0x85, 0x00
	.db 0xA5, 0x85, 0x00
	.db 0x00, 0x01, 0x00
	.db 0x00, 0x01, 0x00
	_tintas:
	.db 0x14,0x01,0x0b,0x09,0x0A,0x0E,0x0C,0x1C
	.db 0x1A,0x16,0x1E,0x13,0x1F,0x17,0x15,0x10,0x14
	ret
_sprites_end::
;test02.c:22: void pause(unsigned int p){
;	---------------------------------
; Function pause
; ---------------------------------
_pause_start::
_pause:
;test02.c:24: for (i=0; i < p; i++) {
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
;test02.c:27: __endasm;
	halt
;test02.c:24: for (i=0; i < p; i++) {
	inc	de
	jr	00103$
	ret
_pause_end::
;test02.c:35: void setColours()
;	---------------------------------
; Function setColours
; ---------------------------------
_setColours_start::
_setColours:
;test02.c:38: for (x=0; x<17; x++)
	ld	e,#0x00
00102$:
;test02.c:40: cpc_SetColour(x,tintas[x]);
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
;test02.c:38: for (x=0; x<17; x++)
	inc	e
	ld	a,e
	sub	a, #0x11
	jr	C,00102$
;test02.c:43: cpc_SetColour(17,3);
	ld	hl,#0x0311
	push	hl
	call	_cpc_SetColour
	pop	af
	ret
_setColours_end::
;test02.c:46: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main_start::
_main:
	push	af
	push	af
	dec	sp
;test02.c:49: cpc_DisableFirmware();
	call	_cpc_DisableFirmware
;test02.c:51: cpc_SetMode(0);
	xor	a, a
	push	af
	inc	sp
	call	_cpc_SetMode
	inc	sp
;test02.c:53: setColours();
	call	_setColours
;test02.c:55: pos_ship.x = 0;
	ld	hl,#_pos_ship+0
	ld	(hl),#0x00
;test02.c:56: pos_ship.y = 0;
	ld	hl,#(_pos_ship + 0x0001)
	ld	(hl),#0x00
;test02.c:59: while (i<MAX_WAYPOINTS){
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
00115$:
	ld	hl, #0+0
	add	hl, sp
	ld	a, (hl)
	sub	a, #0x04
	jp	NC,00117$
;test02.c:60: if ((pos_ship.x!=way_points[i].x) || (pos_ship.y!=way_points[i].y)){
	ld	a,(#_pos_ship + 0)
	ld	iy,#4
	add	iy,sp
	ld	0 (iy),a
	ld	hl, #0+0
	add	hl, sp
	ld	a, (hl)
	ld	iy,#2
	add	iy,sp
	ld	0 (iy),a
	ld	1 (iy),#0x00
	sla	0 (iy)
	rl	1 (iy)
	ld	a,#<(_way_points)
	ld	hl,#2
	add	hl,sp
	add	a, (hl)
	ld	(hl),a
	ld	a,#>(_way_points)
	inc	hl
	adc	a, (hl)
	ld	(hl),a
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),a
	ld	iy,#2
	add	iy,sp
	inc	0 (iy)
	jr	NZ,00151$
	inc	1 (iy)
00151$:
	ld	iy,#4
	add	iy,sp
	ld	a,0 (iy)
	ld	iy,#1
	add	iy,sp
	sub	a, 0 (iy)
	jr	NZ,00111$
	ld	hl, #(_pos_ship + 0x0001) + 0
	ld	d,(hl)
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	e,(hl)
	ld	a,d
	sub	a, e
	jp	Z,00112$
00111$:
;test02.c:61: if (pos_ship.x<way_points[i].x){
	ld	hl,#1
	add	hl,sp
	ld	iy,#4
	add	iy,sp
	ld	a,0 (iy)
	sub	a, (hl)
	jr	NC,00104$
;test02.c:62: pos_ship.x++;
	ld	a,0 (iy)
	inc	a
	ld	(#_pos_ship),a
	jr	00105$
00104$:
;test02.c:63: }else if (pos_ship.x>way_points[i].x){
	ld	hl,#1
	add	hl,sp
	ld	a,(hl)
	ld	iy,#4
	add	iy,sp
	sub	a, 0 (iy)
	jr	NC,00105$
;test02.c:64: pos_ship.x--;
	ld	d,0 (iy)
	dec	d
	ld	hl,#_pos_ship
	ld	(hl),d
00105$:
;test02.c:60: if ((pos_ship.x!=way_points[i].x) || (pos_ship.y!=way_points[i].y)){
	ld	a,(#(_pos_ship + 0x0001) + 0)
	ld	iy,#1
	add	iy,sp
	ld	0 (iy),a
;test02.c:66: if (pos_ship.y<way_points[i].y){
	ld	iy,#2
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,(hl)
	ld	0 (iy),a
	ld	hl,#2
	add	hl,sp
	ld	iy,#1
	add	iy,sp
	ld	a,0 (iy)
	sub	a, (hl)
	jr	NC,00109$
;test02.c:67: pos_ship.y++;
	ld	a,0 (iy)
	inc	a
	ld	hl,#(_pos_ship + 0x0001)
	ld	(hl),a
	jr	00110$
00109$:
;test02.c:68: }else if (pos_ship.y>way_points[i].y){
	ld	hl,#2
	add	hl,sp
	ld	a,(hl)
	ld	iy,#1
	add	iy,sp
	sub	a, 0 (iy)
	jr	NC,00110$
;test02.c:69: pos_ship.y--;
	ld	d,0 (iy)
	dec	d
	ld	hl,#(_pos_ship + 0x0001)
	ld	(hl),d
00110$:
;test02.c:71: drawSprite_clipping_m0(ship01,pos_ship.x,pos_ship.y);
	ld	hl, #(_pos_ship + 0x0001) + 0
	ld	d,(hl)
	ld	hl, #_pos_ship + 0
	ld	b,(hl)
	push	de
	inc	sp
	push	bc
	inc	sp
	ld	hl,#_ship01
	push	hl
	call	_drawSprite_clipping_m0
	pop	af
;test02.c:72: pause(6);	
	ld	hl, #0x0006
	ex	(sp),hl
	call	_pause
	pop	af
	jp	00115$
00112$:
;test02.c:74: i++;
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	jp	00115$
00117$:
;test02.c:77: pause(1000);
	ld	hl,#0x03E8
	push	hl
	call	_pause
	pop	af
;test02.c:78: cpc_EnableFirmware();
	call	_cpc_EnableFirmware
	pop	af
	pop	af
	inc	sp
	ret
_main_end::
	.area _CODE
	.area _INITIALIZER
__xinit__redFlag:
	.db #0x02	; 2
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x2C	; 44
	.db #0x14	; 20
	.db #0x2C	; 44
	.db #0x3C	; 60
	.db #0x2C	; 44
	.db #0x3C	; 60
	.db #0x2C	; 44
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x04	; 4
__xinit__way_points:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3C	; 60
	.db #0x0A	; 10
	.db #0x28	; 40
	.db #0x0F	; 15
	.db #0x0A	; 10
	.db #0xB4	; 180
	.area _CABS (ABS)
