;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
; This file was generated Mon Mar 09 14:15:22 2015
;--------------------------------------------------------
	.module shots
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _game
	.globl _inicializarNivel
	.globl _Inicializacion
	.globl _redefinirTeclas
	.globl _inicializarTeclado
	.globl _gameOver
	.globl _pintarBanderasNivel
	.globl _mostrarVidasProta
	.globl _pintarProta
	.globl _borrarProta
	.globl _moverProta
	.globl _inicializarProta
	.globl _win
	.globl _protaDead
	.globl _levelUp
	.globl _menu
	.globl _letrasColorRojo
	.globl _letrasColorAzul
	.globl _pause
	.globl _set_colours
	.globl _getTime
	.globl _timerOff
	.globl _timerOn
	.globl _sprites
	.globl _asm_data_quezesto
	.globl _getScreenAddress
	.globl _printSpriteXOR
	.globl _cpct_drawSprite
	.globl _cpc_WyzInitPlayer
	.globl _cpc_WyzSetPlayerOff
	.globl _cpc_WyzSetPlayerOn
	.globl _cpc_WyzStartEffect
	.globl _cpc_WyzLoadSong
	.globl _cpc_SetInkGphStr
	.globl _cpc_PrintGphStrXY2X
	.globl _cpc_PrintGphStrXY
	.globl _cpc_PrintGphStr
	.globl _cpc_RedefineKey
	.globl _cpc_TestKey
	.globl _cpc_AssignKey
	.globl _cpc_ScanKeyboard
	.globl _cpc_AnyKeyPressed
	.globl _cpc_ClrScr
	.globl _cpc_SetColour
	.globl _cpc_SetMode
	.globl _cpc_DisableFirmware
	.globl _sprintf
	.globl _cambio_score
	.globl _score
	.globl _nTimeLast
	.globl _timer1
	.globl _timer0
	.globl _redFlag
	.globl _trayectoria1
	.globl _aux_txt
	.globl _hostilidad
	.globl _nivel
	.globl _state
	.globl _addon_sprite
	.globl _addones_activos
	.globl _addones
	.globl _max_ataques_activos
	.globl _ataques_activos
	.globl _ataques
	.globl _formMoved
	.globl _stepCount
	.globl _velYForm
	.globl _velXForm
	.globl _previous_state
	.globl _fin_explosion_prota
	.globl _explosion_prota_activada
	.globl _fase_explosion_prota
	.globl _explosion_prota_lastUpdated
	.globl _explosiones_prota
	.globl _explosiones_lastUpdated
	.globl _explosion_sprite
	.globl _explosiones_activas
	.globl _explosiones
	.globl _malos_activos
	.globl _animMotorSprite
	.globl _malos
	.globl _prota
	.globl _max_disparos_MALOS
	.globl _disparos_malos_activos
	.globl _disparosMalos
	.globl _disparos_activos
	.globl _disparos
	.globl _SONG_0
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_disparos::
	.ds 75
_disparos_activos::
	.ds 1
_disparosMalos::
	.ds 60
_disparos_malos_activos::
	.ds 1
_max_disparos_MALOS::
	.ds 1
_prota::
	.ds 28
_malos::
	.ds 348
_animMotorSprite::
	.ds 8
_malos_activos::
	.ds 1
_explosiones::
	.ds 192
_explosiones_activas::
	.ds 1
_explosion_sprite::
	.ds 16
_explosiones_lastUpdated::
	.ds 4
_explosiones_prota::
	.ds 30
_explosion_prota_lastUpdated::
	.ds 4
_fase_explosion_prota::
	.ds 1
_explosion_prota_activada::
	.ds 1
_fin_explosion_prota::
	.ds 1
_previous_state::
	.ds 1
_velXForm::
	.ds 1
_velYForm::
	.ds 1
_stepCount::
	.ds 1
_formMoved::
	.ds 1
_ataques::
	.ds 12
_ataques_activos::
	.ds 1
_max_ataques_activos::
	.ds 1
_addones::
	.ds 12
_addones_activos::
	.ds 1
_addon_sprite::
	.ds 8
_state::
	.ds 1
_nivel::
	.ds 1
_hostilidad::
	.ds 1
_aux_txt::
	.ds 6
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_trayectoria1::
	.ds 20
_redFlag::
	.ds 14
_timer0::
	.ds 2
_timer1::
	.ds 2
_nTimeLast::
	.ds 4
_score::
	.ds 2
_cambio_score::
	.ds 1
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
;datos.h:11: void asm_data_quezesto(void) {
;	---------------------------------
; Function asm_data_quezesto
; ---------------------------------
_asm_data_quezesto_start::
_asm_data_quezesto:
;datos.h:127: __endasm;
	_SONG_TABLE_0:
	.dw _SONG_0
	_RULE_TABLE_0:
	.dw PAUTA_0,PAUTA_1,PAUTA_2,PAUTA_3,PAUTA_4,PAUTA_5,PAUTA_6
	PAUTA_0:
	.DB #46,#0,#12,#0,#10,#0,#9,#0,#129
	PAUTA_1:
	.DB #46,#0,#13,#0,#12,#0,#10,#0,#10,#0,#9,#0,#8,#0,#12,#0,#10,#0,#9,#0,#129
	PAUTA_2:
	.DB #7,#0,#8,#0,#9,#0,#9,#0,#8,#0,#7,#0,#6,#0,#129
	PAUTA_3:
	.DB #45,#0,#12,#0,#12,#0,#11,#0,#11,#0,#10,#0,#10,#0,#9,#0,#129
	PAUTA_4:
	.DB #7,#0,#8,#0,#8,#0,#8,#0,#7,#0,#6,#0,#6,#0,#6,#0,#6,#0,#6,#0,#5,#0,#5,#0,#5,#0,#5,#0,#5,#0,#138
	PAUTA_5:
	.DB #7,#0,#8,#0,#9,#0,#8,#0,#7,#0,#6,#0,#129
	PAUTA_6:
	.DB #77,#0,#12,#0,#11,#0,#10,#0,#9,#0,#8,#0,#7,#0,#9,#0,#8,#0,#7,#0,#129
	_SOUND_TABLE_0:
	.dw SONIDO1
	.dw SONIDO2
	.dw SONIDO3
	SONIDO0:
	.DB #23,#63,#0,#116,#110,#0,#255
	SONIDO1:
	.DB #162,#47,#0,#23,#93,#9,#255
	SONIDO2:
	.DB #0,#10,#5,#255
	SONIDO3:
	.DB #186,#58,#0,#0,#102,#0,#162,#131,#0,#255
	_EFFECT_TABLE:
	.dw _EFECTO0
	.dw _EFECTO1
	.dw _EFECTO2
	.dw _EFECTO3
	_EFECTO0:
	.db #0x58,#0x0D
	.db #0x50,#0x0B
	.db #0x47,#0x0A
	.db #0x3E,#0x06
	.db #0x35,#0x03
	.db #0x50,#0x09
	.db #0x47,#0x0A
	.db #0x3E,#0x07
	.db #0xFF
	_EFECTO1:
	.db #0x58,#0x0C
	.db #0x5D,#0x0D
	.db #0x61,#0x0E
	.db #0x66,#0x0F
	.db #0x6A,#0x0E
	.db #0x6F,#0x0D
	.db #0x7A,#0x0C
	.db #0x78,#0x0B
	.db #0x7C,#0x0A
	.db #0x85,#0x09
	.db #0x8E,#0x08
	.db #0x97,#0x07
	.db #0xA0,#0x06
	.db #0xA9,#0x05
	.db #0xFF
	_EFECTO2:
	.db #0x1F,#0x0B
	.db #0x1A,#0x0C
	.db #0x1F,#0x0D
	.db #0x16,#0x0E
	.db #0x1F,#0x0E
	.db #0x0D,#0x0D
	.db #0x1F,#0x0C
	.db #0x0D,#0x0B
	.db #0x00,#0x00
	.db #0x00,#0x00
	.db #0x1F,#0x08
	.db #0x1A,#0x09
	.db #0x1F,#0x0A
	.db #0x16,#0x0B
	.db #0x1F,#0x0B
	.db #0x0D,#0x0A
	.db #0x1F,#0x09
	.db #0x0D,#0x07
	.db #0x00,#0x00
	.db #0x00,#0x00
	.db #0x1F,#0x06
	.db #0x1A,#0x07
	.db #0x1F,#0x08
	.db #0x16,#0x08
	.db #0x1F,#0x07
	.db #0x0D,#0x06
	.db #0x1F,#0x05
	.db #0xFF
	_EFECTO3:
	.db #0x1A,#0x0E
	.db #0x1A,#0x0E
	.db #0x00,#0x00
	.db #0x1A,#0x0A
	.db #0x1A,#0x0A
	.db #0x00,#0x00
	.db #0x1A,#0x0C
	.db #0x1A,#0x0C
	.db #0x00,#0x00
	.db #0x1A,#0x08
	.db #0x1A,#0x08
	.db #0xFF
	ret
_asm_data_quezesto_end::
;sprites.h:21: void sprites(void){
;	---------------------------------
; Function sprites
; ---------------------------------
_sprites_start::
_sprites:
;sprites.h:94: __endasm;
	ship01:
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
	heart:
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
	.db 20,16,2,22,6,23,26,27
	.db
	ret
_sprites_end::
_SONG_0:
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3F	; 63
	.db #0x00	; 0
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x4E	; 78	'N'
	.db #0x0E	; 14
	.db #0x0E	; 14
	.db #0x4E	; 78	'N'
	.db #0x4E	; 78	'N'
	.db #0x0E	; 14
	.db #0x0E	; 14
	.db #0x4E	; 78	'N'
	.db #0x4E	; 78	'N'
	.db #0x0E	; 14
	.db #0x0E	; 14
	.db #0x4D	; 77	'M'
	.db #0x0D	; 13
	.db #0x0D	; 13
	.db #0x4D	; 77	'M'
	.db #0x4D	; 77	'M'
	.db #0x0D	; 13
	.db #0x0D	; 13
	.db #0x4D	; 77	'M'
	.db #0x4D	; 77	'M'
	.db #0x0D	; 13
	.db #0x0D	; 13
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x57	; 87	'W'
	.db #0x57	; 87	'W'
	.db #0x57	; 87	'W'
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x57	; 87	'W'
	.db #0x57	; 87	'W'
	.db #0x57	; 87	'W'
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x5A	; 90	'Z'
	.db #0x5A	; 90	'Z'
	.db #0x5A	; 90	'Z'
	.db #0x1A	; 26
	.db #0x1A	; 26
	.db #0x5A	; 90	'Z'
	.db #0x5A	; 90	'Z'
	.db #0x5C	; 92
	.db #0x1C	; 28
	.db #0x1C	; 28
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x57	; 87	'W'
	.db #0x57	; 87	'W'
	.db #0x57	; 87	'W'
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x57	; 87	'W'
	.db #0x57	; 87	'W'
	.db #0x57	; 87	'W'
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x59	; 89	'Y'
	.db #0x59	; 89	'Y'
	.db #0x59	; 89	'Y'
	.db #0x19	; 25
	.db #0x19	; 25
	.db #0x57	; 87	'W'
	.db #0x55	; 85	'U'
	.db #0x54	; 84	'T'
	.db #0x51	; 81	'Q'
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x57	; 87	'W'
	.db #0x57	; 87	'W'
	.db #0x57	; 87	'W'
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x57	; 87	'W'
	.db #0x57	; 87	'W'
	.db #0x57	; 87	'W'
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x5A	; 90	'Z'
	.db #0x5A	; 90	'Z'
	.db #0x5A	; 90	'Z'
	.db #0x1A	; 26
	.db #0x1A	; 26
	.db #0x5A	; 90	'Z'
	.db #0x5A	; 90	'Z'
	.db #0x5C	; 92
	.db #0x1C	; 28
	.db #0x1C	; 28
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x4E	; 78	'N'
	.db #0x4E	; 78	'N'
	.db #0x4E	; 78	'N'
	.db #0x0E	; 14
	.db #0x0E	; 14
	.db #0x4E	; 78	'N'
	.db #0x4E	; 78	'N'
	.db #0x4E	; 78	'N'
	.db #0x0E	; 14
	.db #0x0E	; 14
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x14	; 20
	.db #0x17	; 23
	.db #0x14	; 20
	.db #0x19	; 25
	.db #0x19	; 25
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x4E	; 78	'N'
	.db #0x4E	; 78	'N'
	.db #0x4E	; 78	'N'
	.db #0x0E	; 14
	.db #0x0E	; 14
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x19	; 25
	.db #0x19	; 25
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x52	; 82	'R'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x50	; 80	'P'
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x55	; 85	'U'
	.db #0x57	; 87	'W'
	.db #0x57	; 87	'W'
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x57	; 87	'W'
	.db #0x19	; 25
	.db #0x19	; 25
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x4E	; 78	'N'
	.db #0x4E	; 78	'N'
	.db #0x4E	; 78	'N'
	.db #0x0E	; 14
	.db #0x0E	; 14
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x19	; 25
	.db #0x19	; 25
	.db #0x52	; 82	'R'
	.db #0x12	; 18
	.db #0x12	; 18
	.db #0x52	; 82	'R'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x50	; 80	'P'
	.db #0x19	; 25
	.db #0x19	; 25
	.db #0x59	; 89	'Y'
	.db #0x19	; 25
	.db #0x19	; 25
	.db #0x59	; 89	'Y'
	.db #0x59	; 89	'Y'
	.db #0x59	; 89	'Y'
	.db #0x19	; 25
	.db #0x19	; 25
	.db #0x59	; 89	'Y'
	.db #0x17	; 23
	.db #0x19	; 25
	.db #0x59	; 89	'Y'
	.db #0x59	; 89	'Y'
	.db #0x59	; 89	'Y'
	.db #0x57	; 87	'W'
	.db #0x57	; 87	'W'
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x3F	; 63
	.db #0x03	; 3
	.db #0x71	; 113	'q'
	.db #0x81	; 129
	.db #0x6F	; 111	'o'
	.db #0x81	; 129
	.db #0x71	; 113	'q'
	.db #0x72	; 114	'r'
	.db #0x71	; 113	'q'
	.db #0x81	; 129
	.db #0x6F	; 111	'o'
	.db #0x81	; 129
	.db #0x6C	; 108	'l'
	.db #0x6D	; 109	'm'
	.db #0x71	; 113	'q'
	.db #0x81	; 129
	.db #0x6F	; 111	'o'
	.db #0x81	; 129
	.db #0x71	; 113	'q'
	.db #0x72	; 114	'r'
	.db #0x71	; 113	'q'
	.db #0x81	; 129
	.db #0x72	; 114	'r'
	.db #0x81	; 129
	.db #0xB4	; 180
	.db #0xA1	; 161
	.db #0xAA	; 170
	.db #0xAD	; 173
	.db #0x2C	; 44
	.db #0x01	; 1
	.db #0x28	; 40
	.db #0x01	; 1
	.db #0xAA	; 170
	.db #0xBE	; 190
	.db #0xAD	; 173
	.db #0xBE	; 190
	.db #0xB1	; 177
	.db #0x2F	; 47
	.db #0x01	; 1
	.db #0xEA	; 234
	.db #0xFE	; 254
	.db #0x41	; 65	'A'
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x61	; 97	'a'
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x61	; 97	'a'
	.db #0x61	; 97	'a'
	.db #0x61	; 97	'a'
	.db #0x20	; 32
	.db #0x23	; 35
	.db #0x68	; 104	'h'
	.db #0xA5	; 165
	.db #0xAA	; 170
	.db #0x6D	; 109	'm'
	.db #0x28	; 40
	.db #0x01	; 1
	.db #0x2A	; 42
	.db #0x01	; 1
	.db #0x2C	; 44
	.db #0x01	; 1
	.db #0xAD	; 173
	.db #0xBE	; 190
	.db #0xA8	; 168
	.db #0xBE	; 190
	.db #0xB4	; 180
	.db #0xF3	; 243
	.db #0xFE	; 254
	.db #0xFE	; 254
	.db #0x68	; 104	'h'
	.db #0x28	; 40
	.db #0x27	; 39
	.db #0x28	; 40
	.db #0x27	; 39
	.db #0x28	; 40
	.db #0x2A	; 42
	.db #0x6C	; 108	'l'
	.db #0x2C	; 44
	.db #0x2A	; 42
	.db #0x2C	; 44
	.db #0x2A	; 42
	.db #0x2C	; 44
	.db #0x31	; 49	'1'
	.db #0xA1	; 161
	.db #0xAA	; 170
	.db #0xAD	; 173
	.db #0x2C	; 44
	.db #0x01	; 1
	.db #0x28	; 40
	.db #0x01	; 1
	.db #0xAA	; 170
	.db #0xBE	; 190
	.db #0xAD	; 173
	.db #0xBE	; 190
	.db #0xB1	; 177
	.db #0x2F	; 47
	.db #0x01	; 1
	.db #0xEA	; 234
	.db #0xFE	; 254
	.db #0x41	; 65	'A'
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x61	; 97	'a'
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x61	; 97	'a'
	.db #0x61	; 97	'a'
	.db #0x61	; 97	'a'
	.db #0x20	; 32
	.db #0x23	; 35
	.db #0x68	; 104	'h'
	.db #0xA5	; 165
	.db #0xAA	; 170
	.db #0x6D	; 109	'm'
	.db #0x7E	; 126
	.db #0x2A	; 42
	.db #0x6C	; 108	'l'
	.db #0x2F	; 47
	.db #0x01	; 1
	.db #0xB1	; 177
	.db #0xBE	; 190
	.db #0x2F	; 47
	.db #0x01	; 1
	.db #0xAD	; 173
	.db #0xAF	; 175
	.db #0xAD	; 173
	.db #0xBE	; 190
	.db #0x2C	; 44
	.db #0x2A	; 42
	.db #0xED	; 237
	.db #0xAF	; 175
	.db #0xBE	; 190
	.db #0x2D	; 45
	.db #0x2C	; 44
	.db #0xAA	; 170
	.db #0xAC	; 172
	.db #0x41	; 65	'A'
	.db #0x3F	; 63
	.db #0x01	; 1
	.db #0x2D	; 45
	.db #0x41	; 65	'A'
	.db #0x2D	; 45
	.db #0x01	; 1
	.db #0x2D	; 45
	.db #0x6F	; 111	'o'
	.db #0xAC	; 172
	.db #0x68	; 104	'h'
	.db #0x2D	; 45
	.db #0x01	; 1
	.db #0x2D	; 45
	.db #0x01	; 1
	.db #0x2A	; 42
	.db #0x2D	; 45
	.db #0x72	; 114	'r'
	.db #0x2F	; 47
	.db #0x01	; 1
	.db #0x2F	; 47
	.db #0x01	; 1
	.db #0x2C	; 44
	.db #0x2F	; 47
	.db #0x74	; 116	't'
	.db #0x41	; 65	'A'
	.db #0x2D	; 45
	.db #0x41	; 65	'A'
	.db #0x2D	; 45
	.db #0x01	; 1
	.db #0x2D	; 45
	.db #0x6F	; 111	'o'
	.db #0xAC	; 172
	.db #0x68	; 104	'h'
	.db #0x6D	; 109	'm'
	.db #0x7E	; 126
	.db #0x2D	; 45
	.db #0xB4	; 180
	.db #0x73	; 115	's'
	.db #0x7E	; 126
	.db #0x33	; 51	'3'
	.db #0xB6	; 182
	.db #0x41	; 65	'A'
	.db #0x2D	; 45
	.db #0x41	; 65	'A'
	.db #0x2D	; 45
	.db #0x01	; 1
	.db #0x2D	; 45
	.db #0x6F	; 111	'o'
	.db #0xAC	; 172
	.db #0x68	; 104	'h'
	.db #0x2D	; 45
	.db #0x01	; 1
	.db #0x2D	; 45
	.db #0x01	; 1
	.db #0x2A	; 42
	.db #0x2D	; 45
	.db #0x72	; 114	'r'
	.db #0x2F	; 47
	.db #0x01	; 1
	.db #0x2F	; 47
	.db #0x01	; 1
	.db #0x2C	; 44
	.db #0x2F	; 47
	.db #0x74	; 116	't'
	.db #0x41	; 65	'A'
	.db #0x2D	; 45
	.db #0x41	; 65	'A'
	.db #0x2D	; 45
	.db #0x01	; 1
	.db #0x2D	; 45
	.db #0x6F	; 111	'o'
	.db #0x3F	; 63
	.db #0x03	; 3
	.db #0x6D	; 109	'm'
	.db #0x6C	; 108	'l'
	.db #0x68	; 104	'h'
	.db #0x3F	; 63
	.db #0x04	; 4
	.db #0x2A	; 42
	.db #0x2C	; 44
	.db #0x2D	; 45
	.db #0x2F	; 47
	.db #0x31	; 49	'1'
	.db #0x2F	; 47
	.db #0x2D	; 45
	.db #0x2C	; 44
	.db #0x2A	; 42
	.db #0x2C	; 44
	.db #0x2D	; 45
	.db #0x2F	; 47
	.db #0x31	; 49	'1'
	.db #0x2F	; 47
	.db #0x2D	; 45
	.db #0x2A	; 42
	.db #0x3F	; 63
	.db #0x03	; 3
	.db #0xAF	; 175
	.db #0xAD	; 173
	.db #0xAC	; 172
	.db #0xA9	; 169
	.db #0x00	; 0
	.db #0x3F	; 63
	.db #0x03	; 3
	.db #0x2D	; 45
	.db #0x01	; 1
	.db #0x2A	; 42
	.db #0x2A	; 42
	.db #0x6A	; 106	'j'
	.db #0x2C	; 44
	.db #0x01	; 1
	.db #0x2A	; 42
	.db #0x2A	; 42
	.db #0x6A	; 106	'j'
	.db #0x6D	; 109	'm'
	.db #0x6F	; 111	'o'
	.db #0x2D	; 45
	.db #0x01	; 1
	.db #0x2A	; 42
	.db #0x2A	; 42
	.db #0x6A	; 106	'j'
	.db #0x2C	; 44
	.db #0x01	; 1
	.db #0x2A	; 42
	.db #0x2A	; 42
	.db #0x6A	; 106	'j'
	.db #0x68	; 104	'h'
	.db #0x6A	; 106	'j'
	.db #0x2D	; 45
	.db #0x01	; 1
	.db #0x2A	; 42
	.db #0x2A	; 42
	.db #0x6A	; 106	'j'
	.db #0x6C	; 108	'l'
	.db #0x2A	; 42
	.db #0x2A	; 42
	.db #0x6A	; 106	'j'
	.db #0x6D	; 109	'm'
	.db #0x6F	; 111	'o'
	.db #0x2D	; 45
	.db #0x01	; 1
	.db #0x25	; 37
	.db #0x25	; 37
	.db #0x65	; 101	'e'
	.db #0x6F	; 111	'o'
	.db #0x25	; 37
	.db #0x25	; 37
	.db #0x65	; 101	'e'
	.db #0xB1	; 177
	.db #0x3F	; 63
	.db #0x00	; 0
	.db #0xA1	; 161
	.db #0x3F	; 63
	.db #0x03	; 3
	.db #0xA5	; 165
	.db #0xAA	; 170
	.db #0x28	; 40
	.db #0x01	; 1
	.db #0x23	; 35
	.db #0x01	; 1
	.db #0xA5	; 165
	.db #0xBE	; 190
	.db #0xAA	; 170
	.db #0xBE	; 190
	.db #0xAD	; 173
	.db #0x27	; 39
	.db #0x01	; 1
	.db #0xE7	; 231
	.db #0x41	; 65	'A'
	.db #0x25	; 37
	.db #0x25	; 37
	.db #0x65	; 101	'e'
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x5E	; 94
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x5E	; 94
	.db #0x5E	; 94
	.db #0x5E	; 94
	.db #0x81	; 129
	.db #0xA1	; 161
	.db #0xA5	; 165
	.db #0x6A	; 106	'j'
	.db #0x23	; 35
	.db #0x01	; 1
	.db #0x25	; 37
	.db #0x01	; 1
	.db #0x28	; 40
	.db #0x01	; 1
	.db #0xAA	; 170
	.db #0xBE	; 190
	.db #0xA5	; 165
	.db #0xBE	; 190
	.db #0xB1	; 177
	.db #0x5E	; 94
	.db #0x1E	; 30
	.db #0x1C	; 28
	.db #0x1E	; 30
	.db #0x1C	; 28
	.db #0x1E	; 30
	.db #0x20	; 32
	.db #0x61	; 97	'a'
	.db #0x21	; 33
	.db #0x20	; 32
	.db #0x21	; 33
	.db #0x20	; 32
	.db #0x21	; 33
	.db #0x23	; 35
	.db #0x65	; 101	'e'
	.db #0x25	; 37
	.db #0x23	; 35
	.db #0x25	; 37
	.db #0x23	; 35
	.db #0x25	; 37
	.db #0x27	; 39
	.db #0x68	; 104	'h'
	.db #0x28	; 40
	.db #0x27	; 39
	.db #0x28	; 40
	.db #0x27	; 39
	.db #0x28	; 40
	.db #0x2A	; 42
	.db #0x3F	; 63
	.db #0x00	; 0
	.db #0xA1	; 161
	.db #0x3F	; 63
	.db #0x03	; 3
	.db #0xA5	; 165
	.db #0xAA	; 170
	.db #0x28	; 40
	.db #0x01	; 1
	.db #0x23	; 35
	.db #0x01	; 1
	.db #0xA5	; 165
	.db #0xBE	; 190
	.db #0xAA	; 170
	.db #0xBE	; 190
	.db #0xAD	; 173
	.db #0x27	; 39
	.db #0x01	; 1
	.db #0xE7	; 231
	.db #0x41	; 65	'A'
	.db #0x25	; 37
	.db #0x25	; 37
	.db #0x65	; 101	'e'
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x5E	; 94
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x5E	; 94
	.db #0x5E	; 94
	.db #0x5E	; 94
	.db #0x81	; 129
	.db #0xA1	; 161
	.db #0xA5	; 165
	.db #0x6A	; 106	'j'
	.db #0x7E	; 126
	.db #0x25	; 37
	.db #0x68	; 104	'h'
	.db #0x2C	; 44
	.db #0x01	; 1
	.db #0xAD	; 173
	.db #0xBE	; 190
	.db #0x2C	; 44
	.db #0x01	; 1
	.db #0xAA	; 170
	.db #0xAC	; 172
	.db #0xAA	; 170
	.db #0xBE	; 190
	.db #0x28	; 40
	.db #0x26	; 38
	.db #0xEA	; 234
	.db #0xAC	; 172
	.db #0xBE	; 190
	.db #0x2A	; 42
	.db #0x28	; 40
	.db #0xA5	; 165
	.db #0xA8	; 168
	.db #0x41	; 65	'A'
	.db #0x3F	; 63
	.db #0x01	; 1
	.db #0x2A	; 42
	.db #0x41	; 65	'A'
	.db #0x2A	; 42
	.db #0x01	; 1
	.db #0x2A	; 42
	.db #0x6C	; 108	'l'
	.db #0xA8	; 168
	.db #0x65	; 101	'e'
	.db #0x2A	; 42
	.db #0x01	; 1
	.db #0x2A	; 42
	.db #0x01	; 1
	.db #0x26	; 38
	.db #0x2A	; 42
	.db #0x6D	; 109	'm'
	.db #0x2C	; 44
	.db #0x01	; 1
	.db #0x2C	; 44
	.db #0x01	; 1
	.db #0x28	; 40
	.db #0x2C	; 44
	.db #0x6F	; 111	'o'
	.db #0x41	; 65	'A'
	.db #0x2A	; 42
	.db #0x41	; 65	'A'
	.db #0x2A	; 42
	.db #0x01	; 1
	.db #0x2A	; 42
	.db #0x6C	; 108	'l'
	.db #0xA8	; 168
	.db #0x65	; 101	'e'
	.db #0x68	; 104	'h'
	.db #0x7E	; 126
	.db #0x28	; 40
	.db #0xB1	; 177
	.db #0x6F	; 111	'o'
	.db #0x7E	; 126
	.db #0x2F	; 47
	.db #0xB3	; 179
	.db #0x41	; 65	'A'
	.db #0x2A	; 42
	.db #0x41	; 65	'A'
	.db #0x2A	; 42
	.db #0x01	; 1
	.db #0x2A	; 42
	.db #0x6C	; 108	'l'
	.db #0xA8	; 168
	.db #0x65	; 101	'e'
	.db #0x2A	; 42
	.db #0x01	; 1
	.db #0x2A	; 42
	.db #0x01	; 1
	.db #0x26	; 38
	.db #0x2A	; 42
	.db #0x6D	; 109	'm'
	.db #0x2C	; 44
	.db #0x01	; 1
	.db #0x2C	; 44
	.db #0x01	; 1
	.db #0x28	; 40
	.db #0x2C	; 44
	.db #0x6F	; 111	'o'
	.db #0x41	; 65	'A'
	.db #0x2A	; 42
	.db #0x41	; 65	'A'
	.db #0x2A	; 42
	.db #0x01	; 1
	.db #0x2A	; 42
	.db #0x6C	; 108	'l'
	.db #0x3F	; 63
	.db #0x03	; 3
	.db #0x6A	; 106	'j'
	.db #0x68	; 104	'h'
	.db #0x65	; 101	'e'
	.db #0x01	; 1
	.db #0x3F	; 63
	.db #0x04	; 4
	.db #0x2A	; 42
	.db #0x2C	; 44
	.db #0x2D	; 45
	.db #0x2F	; 47
	.db #0x31	; 49	'1'
	.db #0x2F	; 47
	.db #0x2D	; 45
	.db #0x2C	; 44
	.db #0x2A	; 42
	.db #0x2C	; 44
	.db #0x2D	; 45
	.db #0x2F	; 47
	.db #0x31	; 49	'1'
	.db #0x2F	; 47
	.db #0x2D	; 45
	.db #0x3F	; 63
	.db #0x03	; 3
	.db #0xAC	; 172
	.db #0xAA	; 170
	.db #0xA9	; 169
	.db #0xA5	; 165
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0xBE	; 190
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7E	; 126
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7E	; 126
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7E	; 126
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7E	; 126
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x00	; 0
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7E	; 126
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x81	; 129
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x80	; 128
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7E	; 126
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x40	; 64
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x41	; 65	'A'
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x7F	; 127
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
;shots.c:100: void timerOn(void) {
;	---------------------------------
; Function timerOn
; ---------------------------------
_timerOn_start::
_timerOn:
;shots.c:129: __endasm;
	DI
	IM 1
	PUSH HL
	LD HL, #_timer0
	LD (HL),#0X0000
	LD HL,#0X0038
	LD (HL),#0XC3 ;JP
	INC HL
	LD HL,#interrupcion
	LD (#0X0039),HL
	POP HL
	EI
	JP term
	interrupcion:
	DI
	PUSH HL
	PUSH AF
	LD HL,#_timer0
	desborde:
	INC (HL)
	INC HL
	JR Z,desborde
	POP AF
	POP HL
	EI
	RET
	term:
	ret
_timerOn_end::
;shots.c:135: void timerOff(void) {
;	---------------------------------
; Function timerOff
; ---------------------------------
_timerOff_start::
_timerOff:
;shots.c:144: __endasm;
	DI
	IM 1
	LD HL,#0X0038
	LD (HL),#0XFB ;EI
	INC HL
	LD (HL),#0XC9 ;RET
	EI
	ret
_timerOff_end::
;shots.c:150: unsigned long getTime()
;	---------------------------------
; Function getTime
; ---------------------------------
_getTime_start::
_getTime:
;shots.c:153: nTime = (timer1 << 8) + timer0;
	ld	hl,#_timer1 + 0
	ld	d, (hl)
	ld	e,#0x00
	ld	hl,(_timer0)
	add	hl,de
	ld	de,#0x0000
;shots.c:154: return nTime;
	ret
_getTime_end::
;shots.c:161: void set_colours()
;	---------------------------------
; Function set_colours
; ---------------------------------
_set_colours_start::
_set_colours:
;shots.c:164: for (x=0; x<17; x++)
	ld	e,#0x00
00102$:
;shots.c:166: cpc_SetColour(x,tintas[x]);
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
;shots.c:164: for (x=0; x<17; x++)
	inc	e
	ld	a,e
	sub	a, #0x11
	jr	C,00102$
	ret
_set_colours_end::
;shots.c:173: void pause(unsigned char p){
;	---------------------------------
; Function pause
; ---------------------------------
_pause_start::
_pause:
;shots.c:175: for (i=0; i < p; i++) {
	ld	d,#0x00
00103$:
	ld	hl,#2
	add	hl,sp
	ld	a,d
	sub	a, (hl)
	ret	NC
;shots.c:178: __endasm;
	halt
;shots.c:175: for (i=0; i < p; i++) {
	inc	d
	jr	00103$
	ret
_pause_end::
;shots.c:185: void letrasColorAzul(){
;	---------------------------------
; Function letrasColorAzul
; ---------------------------------
_letrasColorAzul_start::
_letrasColorAzul:
;shots.c:186: cpc_SetInkGphStr(0,0);
	ld	hl,#0x0000
	push	hl
	call	_cpc_SetInkGphStr
;shots.c:187: cpc_SetInkGphStr(1,42);
	ld	hl, #0x2A01
	ex	(sp),hl
	call	_cpc_SetInkGphStr
;shots.c:188: cpc_SetInkGphStr(2,34);
	ld	hl, #0x2202
	ex	(sp),hl
	call	_cpc_SetInkGphStr
;shots.c:189: cpc_SetInkGphStr(3,42);
	ld	hl, #0x2A03
	ex	(sp),hl
	call	_cpc_SetInkGphStr
;shots.c:190: pause(2);
	ld	h,#0x02
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
	ret
_letrasColorAzul_end::
;shots.c:196: void letrasColorRojo(){
;	---------------------------------
; Function letrasColorRojo
; ---------------------------------
_letrasColorRojo_start::
_letrasColorRojo:
;shots.c:197: cpc_SetInkGphStr(0,0);
	ld	hl,#0x0000
	push	hl
	call	_cpc_SetInkGphStr
;shots.c:198: cpc_SetInkGphStr(1,40);
	ld	hl, #0x2801
	ex	(sp),hl
	call	_cpc_SetInkGphStr
;shots.c:199: cpc_SetInkGphStr(2,136);
	ld	hl, #0x8802
	ex	(sp),hl
	call	_cpc_SetInkGphStr
;shots.c:200: cpc_SetInkGphStr(3,40);
	ld	hl, #0x2803
	ex	(sp),hl
	call	_cpc_SetInkGphStr
;shots.c:201: pause(2);
	ld	h,#0x02
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
	ret
_letrasColorRojo_end::
;shots.c:208: char menu() {
;	---------------------------------
; Function menu
; ---------------------------------
_menu_start::
_menu:
	dec	sp
;shots.c:209: char choice=-1;
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0xFF
;shots.c:211: letrasColorRojo();
	call	_letrasColorRojo
;shots.c:212: cpc_PrintGphStrXY("SHOTS;IN;THE;SPACE",20, 1*16);
	ld	de,#___str_0
	ld	hl,#0x1014
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;shots.c:213: letrasColorAzul();
	call	_letrasColorAzul
;shots.c:214: cpc_PrintGphStrXY("1;JUGAR",    30, 4*16);
	ld	de,#___str_1
	ld	hl,#0x401E
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;shots.c:215: cpc_PrintGphStrXY("2;REDEFINIR;TECLAS",    30, 5*16);
	ld	de,#___str_2
	ld	hl,#0x501E
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;shots.c:216: cpc_PrintGphStrXY("ESC;SALIR",  30, 7*16);
	ld	de,#___str_3
	ld	hl,#0x701E
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;shots.c:218: cpc_PrintGphStrXY("C;2015;GLASNOST;CORP", 20, 10*16);
	ld	de,#___str_4
	ld	hl,#0xA014
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;shots.c:219: letrasColorRojo();
	call	_letrasColorRojo
;shots.c:220: cpc_PrintGphStrXY("JOHN;LOBO", 31, 11*16);
	ld	de,#___str_5
	ld	hl,#0xB01F
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;shots.c:222: while (choice==-1) {
00107$:
	ld	hl, #0+0
	add	hl, sp
	ld	a, (hl)
	inc	a
	jr	NZ,00110$
;shots.c:223: cpc_ScanKeyboard();
	call	_cpc_ScanKeyboard
;shots.c:225: if (cpc_TestKey(KEY_ME1)==1)
	ld	a,#0x06
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	dec	l
	jr	NZ,00102$
;shots.c:226: choice=STATE_GAME;
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x04
00102$:
;shots.c:227: if (cpc_TestKey(KEY_ME2)==1)   
	ld	a,#0x07
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	dec	l
	jr	NZ,00104$
;shots.c:228: choice=STATE_REDEFINE;
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x09
00104$:
;shots.c:229: if (cpc_TestKey(KEY_ESC)==1)   
	ld	a,#0x05
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	dec	l
	jr	NZ,00107$
;shots.c:230: choice=STATE_EXIT;
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x05
	jr	00107$
;shots.c:233: while (cpc_AnyKeyPressed());
00110$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00110$
;shots.c:235: return choice; 
	ld	iy,#0
	add	iy,sp
	ld	l,0 (iy)
	inc	sp
	ret
_menu_end::
___str_0:
	.ascii "SHOTS;IN;THE;SPACE"
	.db 0x00
___str_1:
	.ascii "1;JUGAR"
	.db 0x00
___str_2:
	.ascii "2;REDEFINIR;TECLAS"
	.db 0x00
___str_3:
	.ascii "ESC;SALIR"
	.db 0x00
___str_4:
	.ascii "C;2015;GLASNOST;CORP"
	.db 0x00
___str_5:
	.ascii "JOHN;LOBO"
	.db 0x00
;shots.c:242: char levelUp()
;	---------------------------------
; Function levelUp
; ---------------------------------
_levelUp_start::
_levelUp:
;shots.c:244: letrasColorAzul();
	call	_letrasColorAzul
;shots.c:245: sprintf(aux_txt,";;;PUNTUACION:;%05d;;;",score);
	ld	de,#_aux_txt
	ld	hl,(_score)
	push	hl
	ld	hl,#___str_6
	push	hl
	push	de
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;shots.c:246: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	ld	de,#___str_7
	ld	hl,#0x5810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;shots.c:247: cpc_PrintGphStrXY2X(aux_txt,8*2,13*8);
	ld	de,#_aux_txt
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;shots.c:248: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_7
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;shots.c:249: while (!cpc_AnyKeyPressed());
00101$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00101$
;shots.c:250: while (cpc_AnyKeyPressed());
00104$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00104$
;shots.c:251: nivel++;
	ld	hl, #_nivel+0
	inc	(hl)
;shots.c:252: sprintf(aux_txt,";;SIGUIENTE;NIVEL;:;%02d;",nivel);
	ld	hl,#_nivel + 0
	ld	e, (hl)
	ld	a,(#_nivel + 0)
	rla
	sbc	a, a
	ld	d,a
	ld	hl,#_aux_txt
	push	de
	ld	bc,#___str_8
	push	bc
	push	hl
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;shots.c:253: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	ld	de,#___str_7
	ld	hl,#0x5810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;shots.c:254: cpc_PrintGphStrXY2X(aux_txt,8*2,13*8);
	ld	de,#_aux_txt
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;shots.c:255: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_7
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;shots.c:256: while (!cpc_AnyKeyPressed());
00107$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00107$
;shots.c:257: while (cpc_AnyKeyPressed());
00110$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00110$
;shots.c:258: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	ld	de,#___str_7
	ld	hl,#0x5810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;shots.c:259: cpc_PrintGphStrXY2X(";;;;;;;PREPARADO;;;;;;;",8*2,13*8);
	ld	de,#___str_9
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;shots.c:260: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_7
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
;shots.c:261: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;shots.c:262: while (!cpc_AnyKeyPressed());
00113$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00113$
;shots.c:263: while (cpc_AnyKeyPressed());
00116$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00116$
;shots.c:265: return STATE_GAME; 
	ld	l,#0x04
	ret
_levelUp_end::
___str_6:
	.ascii ";;;PUNTUACION:;%05d;;;"
	.db 0x00
___str_7:
	.ascii ";;;;;;;;;;;;;;;;;;;;;;;"
	.db 0x00
___str_8:
	.ascii ";;SIGUIENTE;NIVEL;:;%02d;"
	.db 0x00
___str_9:
	.ascii ";;;;;;;PREPARADO;;;;;;;"
	.db 0x00
;shots.c:271: char protaDead()
;	---------------------------------
; Function protaDead
; ---------------------------------
_protaDead_start::
_protaDead:
	push	af
;shots.c:273: letrasColorAzul();
	call	_letrasColorAzul
;shots.c:274: sprintf(aux_txt,";;;PUNTUACION:;%05d;;;",score);
	ld	de,#_aux_txt
	ld	hl,(_score)
	push	hl
	ld	hl,#___str_10
	push	hl
	push	de
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;shots.c:275: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	ld	de,#___str_11
	ld	hl,#0x5810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;shots.c:276: cpc_PrintGphStrXY2X(aux_txt,8*2,13*8);
	ld	de,#_aux_txt
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;shots.c:277: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_11
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;shots.c:278: while (!cpc_AnyKeyPressed());
00101$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00101$
;shots.c:279: while (cpc_AnyKeyPressed());
00104$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00104$
;shots.c:280: sprintf(aux_txt,";;;;;;;;;VIDAS;:;%02d;",prota.vidas);
	ld	a, (#(_prota + 0x000f) + 0)
	ld	e,a
	ld	d,#0x00
	ld	hl,#_aux_txt
	push	de
	ld	bc,#___str_12
	push	bc
	push	hl
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;shots.c:281: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	ld	de,#___str_11
	ld	hl,#0x5810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;shots.c:282: cpc_PrintGphStrXY2X(aux_txt,8*2,13*8);
	ld	de,#_aux_txt
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;shots.c:283: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_11
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;shots.c:284: while (!cpc_AnyKeyPressed());
00107$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00107$
;shots.c:285: while (cpc_AnyKeyPressed());
00110$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00110$
;shots.c:286: if (prota.vidas){
	ld	a,(#(_prota + 0x000f) + 0)
	or	a, a
	jp	Z,00126$
;shots.c:287: sprintf(aux_txt,";;;NIVEL;ACTUAL;:;%02d;",nivel);
	ld	hl,#_nivel + 0
	ld	e, (hl)
	ld	a,(#_nivel + 0)
	rla
	sbc	a, a
	ld	d,a
	ld	hl,#_aux_txt
	push	de
	ld	bc,#___str_13
	push	bc
	push	hl
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;shots.c:288: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	ld	de,#___str_11
	ld	hl,#0x5810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;shots.c:289: cpc_PrintGphStrXY2X(aux_txt,8*2,13*8);
	ld	de,#_aux_txt
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;shots.c:290: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_11
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;shots.c:291: while (!cpc_AnyKeyPressed());
00113$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00113$
;shots.c:292: while (cpc_AnyKeyPressed());
00116$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00116$
;shots.c:293: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	ld	de,#___str_11
	ld	hl,#0x5810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;shots.c:294: cpc_PrintGphStrXY2X(";;;;;;;PREPARADO;;;;;;;",8*2,13*8);
	ld	de,#___str_14
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;shots.c:295: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_11
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
;shots.c:296: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;shots.c:297: while (!cpc_AnyKeyPressed());
00119$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00119$
;shots.c:298: while (cpc_AnyKeyPressed());
00122$:
	call	_cpc_AnyKeyPressed
	ld	iy,#0
	add	iy,sp
	ld	1 (iy),h
	ld	0 (iy),l
	ld	hl, #0+1
	add	hl, sp
	ld	a, (hl)
	dec	hl
	or	a,(hl)
	jr	NZ,00122$
;shots.c:299: return STATE_GAME;
	ld	l,#0x04
	jr	00128$
00126$:
;shots.c:301: return STATE_LOSE; 
	ld	l,#0x07
00128$:
	pop	af
	ret
_protaDead_end::
___str_10:
	.ascii ";;;PUNTUACION:;%05d;;;"
	.db 0x00
___str_11:
	.ascii ";;;;;;;;;;;;;;;;;;;;;;;"
	.db 0x00
___str_12:
	.ascii ";;;;;;;;;VIDAS;:;%02d;"
	.db 0x00
___str_13:
	.ascii ";;;NIVEL;ACTUAL;:;%02d;"
	.db 0x00
___str_14:
	.ascii ";;;;;;;PREPARADO;;;;;;;"
	.db 0x00
;shots.c:307: char win()
;	---------------------------------
; Function win
; ---------------------------------
_win_start::
_win:
;shots.c:309: letrasColorAzul();
	call	_letrasColorAzul
;shots.c:310: sprintf(aux_txt,"PUNTUACION;FINAL:;%05d",score);
	ld	de,#_aux_txt
	ld	hl,(_score)
	push	hl
	ld	hl,#___str_15
	push	hl
	push	de
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;shots.c:311: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,13*8);
	ld	de,#___str_16
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;shots.c:312: cpc_PrintGphStrXY2X(aux_txt,8*2,14*8);
	ld	de,#_aux_txt
	ld	hl,#0x7010
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;shots.c:313: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_16
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;shots.c:314: while (!cpc_AnyKeyPressed());
00101$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00101$
;shots.c:315: while (cpc_AnyKeyPressed());
00104$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00104$
;shots.c:316: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,13*8);
	ld	de,#___str_16
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;shots.c:317: cpc_PrintGphStrXY2X(";;;;;;;GAME;OVER;;;;;;;",8*2,14*8);
	ld	de,#___str_17
	ld	hl,#0x7010
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;shots.c:318: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,13*8);
	ld	de,#___str_16
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
;shots.c:319: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;shots.c:321: while (!cpc_AnyKeyPressed());
00107$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00107$
;shots.c:322: while (cpc_AnyKeyPressed());
00110$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00110$
;shots.c:324: return STATE_MENU; 
	ld	l,#0x02
	ret
_win_end::
___str_15:
	.ascii "PUNTUACION;FINAL:;%05d"
	.db 0x00
___str_16:
	.ascii ";;;;;;;;;;;;;;;;;;;;;;;"
	.db 0x00
___str_17:
	.ascii ";;;;;;;GAME;OVER;;;;;;;"
	.db 0x00
;shots.c:330: void inicializarProta(){
;	---------------------------------
; Function inicializarProta
; ---------------------------------
_inicializarProta_start::
_inicializarProta:
;shots.c:331: prota.activo=1;
	ld	hl,#_prota + 9
	ld	(hl),#0x01
;shots.c:332: prota.sp0=ship01;
	ld	hl,#_ship01
	ld	(_prota), hl
;shots.c:333: prota.cx=39;
	ld	hl,#_prota + 2
	ld	(hl),#0x27
;shots.c:334: prota.cy=177;
	ld	hl,#_prota + 3
	ld	(hl),#0xB1
;shots.c:335: prota.ox=39;
	ld	hl,#_prota + 4
	ld	(hl),#0x27
;shots.c:336: prota.oy=177;
	ld	hl,#_prota + 5
	ld	(hl),#0xB1
;shots.c:337: prota.moved=0;
	ld	hl,#_prota + 11
	ld	(hl),#0x00
;shots.c:338: prota.dead=0;
	ld	hl,#_prota + 14
	ld	(hl),#0x00
;shots.c:339: prota.speed=PROTA_SPEED;
	ld	hl,#_prota + 12
	ld	(hl),#0x0A
;shots.c:340: prota.lastmoved=0;
	ld	hl,#0x0000
	ld	((_prota + 0x0010)),hl
	ld	((_prota + 0x0010) + 2), hl
;shots.c:341: prota.lastShot=0;
	ld	hl,#0x0000
	ld	((_prota + 0x0014)),hl
	ld	((_prota + 0x0014) + 2), hl
;shots.c:342: prota.reloadSpeed=80; //Velocidad de recarga
	ld	hl,#_prota + 24
	ld	(hl),#0x50
;shots.c:343: prota.max_disparos=2;
	ld	hl,#_prota + 26
	ld	(hl),#0x02
;shots.c:344: prota.escudo=0;
	ld	hl,#_prota + 25
	ld	(hl),#0x00
;shots.c:345: prota.motor=0;
	ld	hl,#_prota + 27
	ld	(hl),#0x00
	ret
_inicializarProta_end::
;shots.c:355: void moverProta(){
;	---------------------------------
; Function moverProta
; ---------------------------------
_moverProta_start::
_moverProta:
;shots.c:356: if (!prota.dead){
	ld	a, (#_prota + 14)
	or	a, a
	ret	NZ
;shots.c:357: if (cpc_TestKey(KEY_RIGHT)==1 && prota.cx<=75)   // DERECHA
	ld	a,#0x01
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	ld	bc,#_prota + 2
;shots.c:360: prota.moved=1;
;shots.c:357: if (cpc_TestKey(KEY_RIGHT)==1 && prota.cx<=75)   // DERECHA
	dec	l
	jr	NZ,00102$
	ld	a,(bc)
	ld	h,a
	ld	a,#0x4B
	sub	a, h
	jr	C,00102$
;shots.c:359: prota.cx++;
	ld	a,h
	inc	a
	ld	(bc),a
;shots.c:360: prota.moved=1;
	ld	hl,#(_prota + 0x000b)
	ld	(hl),#0x01
00102$:
;shots.c:362: if (cpc_TestKey(KEY_LEFT)==1 && prota.cx>0)   // IZQUIERDA
	push	bc
	xor	a, a
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	pop	bc
	dec	l
	jr	NZ,00105$
	ld	a,(bc)
	or	a, a
	jr	Z,00105$
;shots.c:364: prota.cx--;
	add	a,#0xFF
	ld	(bc),a
;shots.c:365: prota.moved=1;
	ld	hl,#(_prota + 0x000b)
	ld	(hl),#0x01
00105$:
;shots.c:367: if (cpc_TestKey(KEY_UP)==1 && prota.cy>15)   // ARRIBA
	ld	a,#0x02
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	ld	bc,#_prota + 3
	dec	l
	jr	NZ,00108$
	ld	a,(bc)
	ld	d,a
	ld	a,#0x0F
	sub	a, d
	jr	NC,00108$
;shots.c:369: prota.cy--;
	dec	d
	ld	a,d
	ld	(bc),a
;shots.c:370: prota.moved=1;
	ld	hl,#(_prota + 0x000b)
	ld	(hl),#0x01
00108$:
;shots.c:372: if (cpc_TestKey(KEY_DOWN)==1 && prota.cy<177)   // ABAJO
	push	bc
	ld	a,#0x03
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	pop	bc
	dec	l
	ret	NZ
	ld	a,(bc)
	ld	h,a
	sub	a, #0xB1
	ret	NC
;shots.c:374: prota.cy++;
	ld	a,h
	inc	a
	ld	(bc),a
;shots.c:375: prota.moved=1;
	ld	hl,#(_prota + 0x000b)
	ld	(hl),#0x01
	ret
_moverProta_end::
;shots.c:387: void borrarProta(){
;	---------------------------------
; Function borrarProta
; ---------------------------------
_borrarProta_start::
_borrarProta:
	push	af
;shots.c:388: if ((prota.moved) || (prota.dead==1)){
	ld	hl, #(_prota + 0x000b) + 0
	ld	h,(hl)
	ld	bc,#_prota + 14
	ld	a,h
	or	a, a
	jr	NZ,00103$
	ld	a,(bc)
	dec	a
	jr	NZ,00106$
00103$:
;shots.c:392: printSpriteXOR(prota.sp0,prota.ox,prota.oy,0);
	ld	hl, #(_prota + 0x0005) + 0
	ld	e,(hl)
	ld	hl, #(_prota + 0x0004) + 0
	ld	d,(hl)
	ld	hl, #_prota + 0
	ld	a,(hl)
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),a
	inc	hl
	ld	a,(hl)
	ld	1 (iy),a
	push	bc
	ld	hl,#0x0000
	push	hl
	ld	a,e
	push	af
	inc	sp
	push	de
	inc	sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	push	hl
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	pop	bc
;shots.c:393: if (prota.dead) { 
	ld	a,(bc)
	or	a, a
	jr	Z,00102$
;shots.c:394: prota.moved=0;
	ld	hl,#(_prota + 0x000b)
	ld	(hl),#0x00
;shots.c:395: prota.dead++;
	ld	a,(bc)
	inc	a
	ld	(bc),a
00102$:
;shots.c:398: cpct_drawSprite(animMotorSprite[3],getScreenAddress(prota.ox+1,prota.oy+15));
	ld	a, (#(_prota + 0x0005) + 0)
	add	a, #0x0F
	ld	d,a
	ld	a, (#(_prota + 0x0004) + 0)
	inc	a
	push	de
	inc	sp
	push	af
	inc	sp
	call	_getScreenAddress
	pop	af
	ex	de,hl
	ld	hl, (#(_animMotorSprite + 0x0006) + 0)
	push	de
	push	hl
	call	_cpct_drawSprite
	pop	af
	pop	af
00106$:
	pop	af
	ret
_borrarProta_end::
;shots.c:401: void pintarProta(){
;	---------------------------------
; Function pintarProta
; ---------------------------------
_pintarProta_start::
_pintarProta:
	dec	sp
;shots.c:402: if ((prota.moved) && (!prota.dead)){
	ld	a, (#(_prota + 0x000b) + 0)
	or	a, a
	jr	Z,00104$
	ld	a, (#_prota + 14)
	or	a, a
	jr	NZ,00104$
;shots.c:406: printSpriteXOR(prota.sp0,prota.cx,prota.cy,0);
	ld	hl, #(_prota + 0x0003) + 0
	ld	c,(hl)
	ld	a,(#(_prota + 0x0002) + 0)
	inc	sp
	push	af
	inc	sp
	ld	de, (#_prota + 0)
	ld	hl,#0x0000
	push	hl
	ld	a,c
	push	af
	inc	sp
	ld	hl, #3+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	push	de
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;shots.c:407: cpct_drawSprite(prota.sp0,getScreenAddress(prota.cx,prota.cy));
	ld	hl, #(_prota + 0x0003) + 0
	ld	d,(hl)
	ld	a, (#(_prota + 0x0002) + 0)
	push	de
	inc	sp
	push	af
	inc	sp
	call	_getScreenAddress
	pop	af
	ex	de,hl
	ld	hl, (#_prota + 0)
	push	de
	push	hl
	call	_cpct_drawSprite
	pop	af
	pop	af
;shots.c:408: prota.ox=prota.cx;
	ld	a, (#(_prota + 0x0002) + 0)
	ld	(#(_prota + 0x0004)),a
;shots.c:409: prota.oy=prota.cy;
	ld	a, (#(_prota + 0x0003) + 0)
	ld	(#(_prota + 0x0005)),a
;shots.c:410: prota.moved=0;
	ld	hl,#(_prota + 0x000b)
	ld	(hl),#0x00
00104$:
	inc	sp
	ret
_pintarProta_end::
;shots.c:417: void mostrarVidasProta(){
;	---------------------------------
; Function mostrarVidasProta
; ---------------------------------
_mostrarVidasProta_start::
_mostrarVidasProta:
;shots.c:419: for (i=0;i<prota.vidas;i++){
	ld	de,#0x0000
00103$:
	ld	hl, #(_prota + 0x000f) + 0
	ld	h,(hl)
	ld	a,d
	sub	a, h
	ret	NC
;shots.c:420: printSpriteXOR(heart,77-(i*3),194,0);
	ld	a,#0x4D
	sub	a, e
	ld	b,a
	push	de
	ld	hl,#0x0000
	push	hl
	ld	a,#0xC2
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl,#_heart
	push	hl
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	pop	de
;shots.c:419: for (i=0;i<prota.vidas;i++){
	inc	e
	inc	e
	inc	e
	inc	d
	jr	00103$
	ret
_mostrarVidasProta_end::
;shots.c:431: void pintarBanderasNivel(){
;	---------------------------------
; Function pintarBanderasNivel
; ---------------------------------
_pintarBanderasNivel_start::
_pintarBanderasNivel:
	dec	sp
;shots.c:439: aux=nivel/5;
	ld	a,#0x05
	push	af
	inc	sp
	ld	a,(_nivel)
	push	af
	inc	sp
	call	__divuschar_rrx_s
	pop	af
	ld	c,l
;shots.c:440: for (i=0;i<aux;i++){
	ld	e,#0x00
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),#0x00
00104$:
	ld	hl, #0+0
	add	hl, sp
	ld	a, (hl)
	sub	a, c
	jr	NC,00101$
;shots.c:441: printSpriteXOR(greenFlag,avance,194,0);
	push	bc
	push	de
	ld	hl,#0x0000
	push	hl
	ld	d,#0xC2
	push	de
	ld	hl,#_greenFlag
	push	hl
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	pop	de
	pop	bc
;shots.c:442: avance=avance+3;
	inc	e
	inc	e
	inc	e
;shots.c:440: for (i=0;i<aux;i++){
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	jr	00104$
00101$:
;shots.c:445: aux2=nivel-(aux*5);
	ld	a,c
	add	a, a
	add	a, a
	add	a, c
	ld	d,a
	ld	a,(#_nivel + 0)
	sub	a, d
	ld	d,a
;shots.c:446: for (i=0;i<aux2;i++){
	ld	b,e
	ld	e,#0x00
00107$:
	ld	a,e
	sub	a, d
	jr	NC,00109$
;shots.c:447: printSpriteXOR(redFlag,avance,194,0);
	push	bc
	push	de
	ld	hl,#0x0000
	push	hl
	ld	a,#0xC2
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl,#_redFlag
	push	hl
	call	_printSpriteXOR
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	pop	de
	pop	bc
;shots.c:448: avance=avance+3;
	inc	b
	inc	b
	inc	b
;shots.c:446: for (i=0;i<aux2;i++){
	inc	e
	jr	00107$
00109$:
	inc	sp
	ret
_pintarBanderasNivel_end::
;shots.c:455: char gameOver()
;	---------------------------------
; Function gameOver
; ---------------------------------
_gameOver_start::
_gameOver:
;shots.c:457: letrasColorAzul();
	call	_letrasColorAzul
;shots.c:458: sprintf(aux_txt,"PUNTUACION;FINAL:;%05d",score);
	ld	de,#_aux_txt
	ld	hl,(_score)
	push	hl
	ld	hl,#___str_18
	push	hl
	push	de
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;shots.c:459: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	ld	de,#___str_19
	ld	hl,#0x5810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;shots.c:460: cpc_PrintGphStrXY2X(aux_txt,8*2,13*8);
	ld	de,#_aux_txt
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;shots.c:461: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_19
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;shots.c:462: while (cpc_AnyKeyPressed()==0);
00101$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00101$
;shots.c:463: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	ld	de,#___str_19
	ld	hl,#0x5810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;shots.c:464: cpc_PrintGphStrXY2X(";;;;;;;GAME;OVER;;;;;;;",8*2,13*8);
	ld	de,#___str_20
	ld	hl,#0x6810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
	pop	af
;shots.c:465: cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	ld	de,#___str_19
	ld	hl,#0x7810
	push	hl
	push	de
	call	_cpc_PrintGphStrXY2X
	pop	af
;shots.c:466: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;shots.c:468: while (!cpc_AnyKeyPressed());
00104$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	Z,00104$
;shots.c:469: while (cpc_AnyKeyPressed());
00107$:
	call	_cpc_AnyKeyPressed
	ld	a,h
	or	a,l
	jr	NZ,00107$
;shots.c:471: return STATE_MENU; 
	ld	l,#0x02
	ret
_gameOver_end::
___str_18:
	.ascii "PUNTUACION;FINAL:;%05d"
	.db 0x00
___str_19:
	.ascii ";;;;;;;;;;;;;;;;;;;;;;;"
	.db 0x00
___str_20:
	.ascii ";;;;;;;GAME;OVER;;;;;;;"
	.db 0x00
;shots.c:478: void inicializarTeclado()
;	---------------------------------
; Function inicializarTeclado
; ---------------------------------
_inicializarTeclado_start::
_inicializarTeclado:
;shots.c:480: cpc_AssignKey (KEY_LEFT, 0x4404);		// O
	ld	hl,#0x4404
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_cpc_AssignKey
;shots.c:481: cpc_AssignKey (KEY_RIGHT, 0x4308);		// P
	inc	sp
	ld	hl,#0x4308
	ex	(sp),hl
	ld	a,#0x01
	push	af
	inc	sp
	call	_cpc_AssignKey
;shots.c:482: cpc_AssignKey (KEY_UP, 0x4808);		    // Q
	inc	sp
	ld	hl,#0x4808
	ex	(sp),hl
	ld	a,#0x02
	push	af
	inc	sp
	call	_cpc_AssignKey
;shots.c:483: cpc_AssignKey (KEY_DOWN, 0x4820);		// A
	inc	sp
	ld	hl,#0x4820
	ex	(sp),hl
	ld	a,#0x03
	push	af
	inc	sp
	call	_cpc_AssignKey
;shots.c:484: cpc_AssignKey (KEY_FIRE, 0x4580);		// SPACE
	inc	sp
	ld	hl,#0x4580
	ex	(sp),hl
	ld	a,#0x04
	push	af
	inc	sp
	call	_cpc_AssignKey
;shots.c:485: cpc_AssignKey (KEY_ESC, 0x4804);		// ESC
	inc	sp
	ld	hl,#0x4804
	ex	(sp),hl
	ld	a,#0x05
	push	af
	inc	sp
	call	_cpc_AssignKey
;shots.c:486: cpc_AssignKey (KEY_ME1, 0x4801);		// 1
	inc	sp
	ld	hl,#0x4801
	ex	(sp),hl
	ld	a,#0x06
	push	af
	inc	sp
	call	_cpc_AssignKey
;shots.c:487: cpc_AssignKey (KEY_ME2, 0x4802);		// 2
	inc	sp
	ld	hl,#0x4802
	ex	(sp),hl
	ld	a,#0x07
	push	af
	inc	sp
	call	_cpc_AssignKey
;shots.c:488: cpc_AssignKey (KEY_ME3, 0x4702);		// 3
	inc	sp
	ld	hl,#0x4702
	ex	(sp),hl
	ld	a,#0x08
	push	af
	inc	sp
	call	_cpc_AssignKey
;shots.c:489: cpc_AssignKey (KEY_ME4, 0x4701);		// 4
	inc	sp
	ld	hl,#0x4701
	ex	(sp),hl
	ld	a,#0x09
	push	af
	inc	sp
	call	_cpc_AssignKey
;shots.c:490: cpc_AssignKey (KEY_HOSTILITY, 0x4510);		// H
	inc	sp
	ld	hl,#0x4510
	ex	(sp),hl
	ld	a,#0x0B
	push	af
	inc	sp
	call	_cpc_AssignKey
	pop	af
	inc	sp
	ret
_inicializarTeclado_end::
;shots.c:496: unsigned char redefinirTeclas()
;	---------------------------------
; Function redefinirTeclas
; ---------------------------------
_redefinirTeclas_start::
_redefinirTeclas:
;shots.c:499: cpc_SetMode(0);				//hardware call to set mode 1
	xor	a, a
	push	af
	inc	sp
	call	_cpc_SetMode
	inc	sp
;shots.c:500: cpc_ClrScr();				//fills scr with ink 0
	call	_cpc_ClrScr
;shots.c:502: letrasColorAzul();
	call	_letrasColorAzul
;shots.c:504: cpc_PrintGphStrXY("PULSA;PARA",12*2,15*8);
	ld	de,#___str_21
	ld	hl,#0x7818
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;shots.c:505: letrasColorRojo();
	call	_letrasColorRojo
;shots.c:507: cpc_PrintGphStrXY("IZQUIERDA",12*2,17*8);
	ld	de,#___str_22
	ld	hl,#0x8818
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
	pop	af
;shots.c:508: cpc_RedefineKey(KEY_LEFT);
	xor	a, a
	push	af
	inc	sp
	call	_cpc_RedefineKey
	inc	sp
;shots.c:509: cpc_WyzStartEffect(2,1);	//(Channel, SFX #)
	ld	hl,#0x0102
	push	hl
	call	_cpc_WyzStartEffect
;shots.c:510: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;shots.c:511: cpc_PrintGphStrXY("DERECHA;;",12*2,17*8);
	ld	de,#___str_23
	ld	hl,#0x8818
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
;shots.c:512: cpc_RedefineKey(KEY_RIGHT);
	ld	h,#0x01
	ex	(sp),hl
	inc	sp
	call	_cpc_RedefineKey
	inc	sp
;shots.c:513: cpc_WyzStartEffect(2,1);	//(Channel, SFX #)
	ld	hl,#0x0102
	push	hl
	call	_cpc_WyzStartEffect
;shots.c:514: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;shots.c:515: cpc_PrintGphStrXY("ARRIBA;;;",12*2,17*8);
	ld	de,#___str_24
	ld	hl,#0x8818
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
;shots.c:516: cpc_RedefineKey(KEY_UP);
	ld	h,#0x02
	ex	(sp),hl
	inc	sp
	call	_cpc_RedefineKey
	inc	sp
;shots.c:517: cpc_WyzStartEffect(2,1);	//(Channel, SFX #)
	ld	hl,#0x0102
	push	hl
	call	_cpc_WyzStartEffect
;shots.c:518: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;shots.c:519: cpc_PrintGphStrXY("ABAJO;;;;",12*2,17*8);
	ld	de,#___str_25
	ld	hl,#0x8818
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
;shots.c:520: cpc_RedefineKey(KEY_DOWN);
	ld	h,#0x03
	ex	(sp),hl
	inc	sp
	call	_cpc_RedefineKey
	inc	sp
;shots.c:521: cpc_WyzStartEffect(2,1);	//(Channel, SFX #)
	ld	hl,#0x0102
	push	hl
	call	_cpc_WyzStartEffect
;shots.c:522: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;shots.c:523: cpc_PrintGphStrXY("DISPARO;;;",12*2,17*8);
	ld	de,#___str_26
	ld	hl,#0x8818
	push	hl
	push	de
	call	_cpc_PrintGphStrXY
	pop	af
;shots.c:524: cpc_RedefineKey(KEY_FIRE);
	ld	h,#0x04
	ex	(sp),hl
	inc	sp
	call	_cpc_RedefineKey
	inc	sp
;shots.c:525: cpc_WyzStartEffect(2,1);	//(Channel, SFX #)
	ld	hl,#0x0102
	push	hl
	call	_cpc_WyzStartEffect
;shots.c:526: pause(6);
	ld	h,#0x06
	ex	(sp),hl
	inc	sp
	call	_pause
	inc	sp
;shots.c:528: return STATE_MENU;
	ld	l,#0x02
	ret
_redefinirTeclas_end::
___str_21:
	.ascii "PULSA;PARA"
	.db 0x00
___str_22:
	.ascii "IZQUIERDA"
	.db 0x00
___str_23:
	.ascii "DERECHA;;"
	.db 0x00
___str_24:
	.ascii "ARRIBA;;;"
	.db 0x00
___str_25:
	.ascii "ABAJO;;;;"
	.db 0x00
___str_26:
	.ascii "DISPARO;;;"
	.db 0x00
;shots.c:534: void Inicializacion() {
;	---------------------------------
; Function Inicializacion
; ---------------------------------
_Inicializacion_start::
_Inicializacion:
;shots.c:536: cpc_DisableFirmware();
	call	_cpc_DisableFirmware
;shots.c:538: set_colours();
	call	_set_colours
;shots.c:539: cpc_SetMode(0);				//hardware call to set mode 0
	xor	a, a
	push	af
	inc	sp
	call	_cpc_SetMode
	inc	sp
;shots.c:540: cpc_ClrScr();				//fills scr with ink 0
	call	_cpc_ClrScr
;shots.c:542: inicializarTeclado();
	call	_inicializarTeclado
;shots.c:546: cpc_WyzInitPlayer(SOUND_TABLE_0, RULE_TABLE_0, EFFECT_TABLE, SONG_TABLE_0);
	ld	hl,#_SOUND_TABLE_0
	ld	bc,#_SONG_TABLE_0
	push	bc
	ld	bc,#_EFFECT_TABLE
	push	bc
	ld	bc,#_RULE_TABLE_0
	push	bc
	push	hl
	call	_cpc_WyzInitPlayer
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
;shots.c:547: cpc_WyzLoadSong(0);
	xor	a, a
	push	af
	inc	sp
	call	_cpc_WyzLoadSong
	inc	sp
;shots.c:548: cpc_WyzSetPlayerOn();
	call	_cpc_WyzSetPlayerOn
;shots.c:551: state = STATE_MENU;
	ld	hl,#_state + 0
	ld	(hl), #0x02
	ret
_Inicializacion_end::
;shots.c:558: void inicializarNivel(){
;	---------------------------------
; Function inicializarNivel
; ---------------------------------
_inicializarNivel_start::
_inicializarNivel:
;shots.c:560: letrasColorAzul();
	call	_letrasColorAzul
;shots.c:561: cpc_PrintGphStr("1UP",0xc000);
	ld	hl,#___str_27
	ld	bc,#0xC000
	push	bc
	push	hl
	call	_cpc_PrintGphStr
	pop	af
	pop	af
;shots.c:562: cpc_PrintGphStr("HIGH;SCORE",0xc01E);	
	ld	hl,#___str_28
	ld	bc,#0xC01E
	push	bc
	push	hl
	call	_cpc_PrintGphStr
	pop	af
	pop	af
;shots.c:563: cpc_PrintGphStr("2UP",0xc04A);
	ld	hl,#___str_29
	ld	bc,#0xC04A
	push	bc
	push	hl
	call	_cpc_PrintGphStr
	pop	af
	pop	af
;shots.c:564: letrasColorRojo();
	call	_letrasColorRojo
;shots.c:565: sprintf(aux_txt,"%05d",score);
	ld	de,#_aux_txt
	ld	hl,(_score)
	push	hl
	ld	hl,#___str_30
	push	hl
	push	de
	call	_sprintf
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;shots.c:566: cpc_PrintGphStr(aux_txt,0xc050);
	ld	hl,#_aux_txt
	ld	bc,#0xC050
	push	bc
	push	hl
	call	_cpc_PrintGphStr
	pop	af
	pop	af
;shots.c:567: cpc_PrintGphStr("00000",0xc073);	
	ld	hl,#___str_31
	ld	bc,#0xC073
	push	bc
	push	hl
	call	_cpc_PrintGphStr
	pop	af
	pop	af
;shots.c:568: cpc_PrintGphStr("00000",0xc096);
	ld	hl,#___str_31
	ld	bc,#0xC096
	push	bc
	push	hl
	call	_cpc_PrintGphStr
	pop	af
	pop	af
;shots.c:577: inicializarProta();
	call	_inicializarProta
;shots.c:578: prota.moved=1;
	ld	hl,#_prota+11
	ld	(hl),#0x01
;shots.c:598: pintarProta();
	call	_pintarProta
;shots.c:599: mostrarVidasProta();
	call	_mostrarVidasProta
;shots.c:600: pintarBanderasNivel();
	call	_pintarBanderasNivel
;shots.c:616: hostilidad=1;  //este flag hace que los enemigos disparen
	ld	hl,#_hostilidad + 0
	ld	(hl), #0x01
	ret
_inicializarNivel_end::
___str_27:
	.ascii "1UP"
	.db 0x00
___str_28:
	.ascii "HIGH;SCORE"
	.db 0x00
___str_29:
	.ascii "2UP"
	.db 0x00
___str_30:
	.ascii "%05d"
	.db 0x00
___str_31:
	.ascii "00000"
	.db 0x00
;shots.c:622: unsigned char game()
;	---------------------------------
; Function game
; ---------------------------------
_game_start::
_game:
	push	af
	push	af
;shots.c:624: timerOn();
	call	_timerOn
;shots.c:627: cpc_WyzInitPlayer(SOUND_TABLE_0, RULE_TABLE_0, EFFECT_TABLE, SONG_TABLE_0);
	ld	hl,#_SOUND_TABLE_0
	ld	bc,#_SONG_TABLE_0
	push	bc
	ld	bc,#_EFFECT_TABLE
	push	bc
	ld	bc,#_RULE_TABLE_0
	push	bc
	push	hl
	call	_cpc_WyzInitPlayer
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
;shots.c:628: cpc_WyzSetPlayerOn();
	call	_cpc_WyzSetPlayerOn
;shots.c:630: cpc_ClrScr();				//fills scr with ink 0
	call	_cpc_ClrScr
;shots.c:632: inicializarNivel();
	call	_inicializarNivel
;shots.c:634: while(1)
00122$:
;shots.c:649: if ((getTime()-prota.lastmoved)>prota.speed){
	call	_getTime
	ld	iy,#0
	add	iy,sp
	ld	3 (iy),d
	ld	2 (iy),e
	ld	1 (iy),h
	ld	0 (iy),l
	ld	de, (#(_prota + 0x0010) + 0)
	ld	bc, (#(_prota + 0x0010) + 2)
	ld	hl,#0
	add	hl,sp
	ld	a,(hl)
	sub	a, e
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	sbc	a, d
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	sbc	a, c
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	sbc	a, b
	ld	(hl),a
	ld	a, (#_prota + 12)
	ld	d,a
	ld	e,#0x00
	ld	bc,#0x0000
	ld	a,d
	ld	iy,#0
	add	iy,sp
	sub	a, 0 (iy)
	ld	a,e
	sbc	a, 1 (iy)
	ld	a,c
	sbc	a, 2 (iy)
	ld	a,b
	sbc	a, 3 (iy)
	jr	NC,00104$
;shots.c:650: prota.lastmoved=getTime();
	call	_getTime
	ld	c,l
	ld	b,h
	ld	((_prota + 0x0010)), bc
	ld	((_prota + 0x0010) + 2), de
;shots.c:651: moverProta();	//mover al prota
	call	_moverProta
;shots.c:652: pintarProta();	//Pinto al protagonista
	call	_pintarProta
00104$:
;shots.c:700: if ((prota.dead) && (!explosiones_activas) && (!disparos_activos) && (!disparos_malos_activos) && (!explosion_prota_activada)){
	ld	a, (#_prota + 14)
	or	a, a
	jr	Z,00106$
	ld	a,(#_explosiones_activas + 0)
	or	a, a
	jr	NZ,00106$
	ld	a,(#_disparos_activos + 0)
	or	a, a
	jr	NZ,00106$
	ld	a,(#_disparos_malos_activos + 0)
	or	a, a
	jr	NZ,00106$
	ld	a,(#_explosion_prota_activada + 0)
	or	a, a
	jr	NZ,00106$
;shots.c:701: state = STATE_DEAD;
	ld	hl,#_state + 0
	ld	(hl), #0x0B
;shots.c:702: break;
	jr	00124$
00106$:
;shots.c:705: if (cpc_TestKey(KEY_ESC)==1){			// ESC
	ld	a,#0x05
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	dec	l
	jr	NZ,00115$
;shots.c:706: state = STATE_MENU;
	ld	hl,#_state + 0
	ld	(hl), #0x02
;shots.c:707: break;
	jr	00124$
;shots.c:712: if ((DEBUG) && (cpc_TestKey(KEY_HOSTILITY)==1)){			
00115$:
	ld	a,#0x0B
	push	af
	inc	sp
	call	_cpc_TestKey
	inc	sp
	dec	l
	jr	NZ,00114$
;shots.c:713: hostilidad=!hostilidad;
	ld	a,(#_hostilidad + 0)
	sub	a,#0x01
	ld	a,#0x00
	rla
	ld	(#_hostilidad + 0),a
00114$:
;shots.c:717: if ((malos_activos==0) && (explosiones_activas==0) && (!disparos_activos) && (!disparos_malos_activos)){
	ld	a,(#_malos_activos + 0)
	or	a, a
	jp	NZ,00122$
	ld	a,(#_explosiones_activas + 0)
	or	a, a
	jp	NZ,00122$
	ld	a,(#_disparos_activos + 0)
	or	a, a
	jp	NZ,00122$
	ld	a,(#_disparos_malos_activos + 0)
	or	a, a
	jp	NZ,00122$
;shots.c:718: state = STATE_LEVELUP;
	ld	hl,#_state + 0
	ld	(hl), #0x08
;shots.c:724: if (SONIDO_ACTIVADO) cpc_WyzSetPlayerOff();
00124$:
	call	_cpc_WyzSetPlayerOff
;shots.c:725: timerOff();
	call	_timerOff
;shots.c:726: return state;
	ld	iy,#_state
	ld	l,0 (iy)
	pop	af
	pop	af
	ret
_game_end::
;shots.c:733: int main() {
;	---------------------------------
; Function main
; ---------------------------------
_main_start::
_main:
;shots.c:734: Inicializacion();
	call	_Inicializacion
;shots.c:736: while (state != STATE_EXIT) {
00121$:
;shots.c:737: switch(state) {
	ld	a,(#_state + 0)
	cp	a,#0x05
	jp	Z,00124$
	cp	a,#0x02
	jr	Z,00101$
	cp	a,#0x04
	jr	Z,00103$
	cp	a,#0x06
	jp	Z,00117$
	cp	a,#0x07
	jp	Z,00118$
	sub	a, #0x09
	jr	Z,00102$
	jp	00119$
;shots.c:738: case STATE_MENU:
00101$:
;shots.c:739: state = menu();
	call	_menu
	ld	iy,#_state
	ld	0 (iy),l
;shots.c:740: break;
	jr	00121$
;shots.c:742: case STATE_REDEFINE:
00102$:
;shots.c:743: state = redefinirTeclas();
	call	_redefinirTeclas
	ld	iy,#_state
	ld	0 (iy),l
;shots.c:744: break;
	jr	00121$
;shots.c:746: case STATE_GAME:
00103$:
;shots.c:747: nivel=1;
	ld	hl,#_nivel + 0
	ld	(hl), #0x01
;shots.c:748: prota.vidas=3;
	ld	hl,#(_prota + 0x000f)
	ld	(hl),#0x03
;shots.c:749: prota.escudo=0;
	ld	hl,#_prota + 25
	ld	(hl),#0x00
;shots.c:750: prota.max_disparos=2;
	ld	hl,#_prota + 26
	ld	(hl),#0x02
;shots.c:752: cambio_score=0;
	ld	hl,#_cambio_score + 0
	ld	(hl), #0x00
;shots.c:753: score=0;
	ld	hl,#_score + 0
	ld	(hl), #0x00
	ld	hl,#_score + 1
	ld	(hl), #0x00
;shots.c:755: while ((state!=STATE_LOSE) && (state!=STATE_WIN) && (state!=STATE_MENU)) {
00114$:
	ld	a,(#_state + 0)
	cp	a,#0x07
	jr	Z,00121$
	cp	a,#0x06
	jr	Z,00121$
	sub	a, #0x02
	jr	Z,00121$
;shots.c:757: if (SONIDO_ACTIVADO) cpc_WyzSetPlayerOff();
	call	_cpc_WyzSetPlayerOff
;shots.c:758: state = game();
	call	_game
	ld	iy,#_state
	ld	0 (iy),l
;shots.c:760: cpc_WyzInitPlayer(SOUND_TABLE_0, RULE_TABLE_0, EFFECT_TABLE, SONG_TABLE_0);
	ld	hl,#_SOUND_TABLE_0
	ld	bc,#_SONG_TABLE_0
	push	bc
	ld	bc,#_EFFECT_TABLE
	push	bc
	ld	bc,#_RULE_TABLE_0
	push	bc
	push	hl
	call	_cpc_WyzInitPlayer
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
;shots.c:761: cpc_WyzLoadSong(0);
	xor	a, a
	push	af
	inc	sp
	call	_cpc_WyzLoadSong
	inc	sp
;shots.c:762: cpc_WyzSetPlayerOn();
	call	_cpc_WyzSetPlayerOn
;shots.c:764: if (state==STATE_LEVELUP)
	ld	a,(#_state + 0)
	sub	a, #0x08
	jr	NZ,00109$
;shots.c:765: state=levelUp();
	call	_levelUp
	ld	iy,#_state
	ld	0 (iy),l
00109$:
;shots.c:766: if (state==STATE_DEAD){
	ld	a,(#_state + 0)
	sub	a, #0x0B
	jr	NZ,00114$
;shots.c:767: prota.vidas--;
	ld	a, (#(_prota + 0x000f) + 0)
	add	a,#0xFF
	ld	(#(_prota + 0x000f)),a
;shots.c:768: state=protaDead();
	call	_protaDead
	ld	iy,#_state
	ld	0 (iy),l
	jr	00114$
;shots.c:773: case STATE_WIN:
00117$:
;shots.c:774: state = win();
	call	_win
	ld	iy,#_state
	ld	0 (iy),l
;shots.c:775: break;
	jp	00121$
;shots.c:777: case STATE_LOSE:
00118$:
;shots.c:778: state = gameOver();
	call	_gameOver
	ld	iy,#_state
	ld	0 (iy),l
;shots.c:779: break;
	jp	00121$
;shots.c:781: default:
00119$:
;shots.c:782: state = STATE_EXIT;
	ld	hl,#_state + 0
	ld	(hl), #0x05
;shots.c:784: }
	jp	00121$
;shots.c:786: if (SONIDO_ACTIVADO) cpc_WyzSetPlayerOff();
00124$:
	call	_cpc_WyzSetPlayerOff
;shots.c:788: return 0;  
	ld	hl,#0x0000
	ret
_main_end::
	.area _CODE
	.area _INITIALIZER
__xinit__trayectoria1:
	.db #0x00	;  0
	.db #0x02	;  2
	.db #0x04	;  4
	.db #0x05	;  5
	.db #0x06	;  6
	.db #0x06	;  6
	.db #0x06	;  6
	.db #0x05	;  5
	.db #0x04	;  4
	.db #0x02	;  2
	.db #0x00	;  0
	.db #0xFE	; -2
	.db #0xFC	; -4
	.db #0xFB	; -5
	.db #0xFA	; -6
	.db #0xFA	; -6
	.db #0xFA	; -6
	.db #0xFB	; -5
	.db #0xFC	; -4
	.db #0xFE	; -2
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
__xinit__timer0:
	.dw #0x0000
__xinit__timer1:
	.dw #0x0000
__xinit__nTimeLast:
	.byte #0x00,#0x00,#0x00,#0x00	; 0
__xinit__score:
	.dw #0x0000
__xinit__cambio_score:
	.db #0x00	; 0
	.area _CABS (ABS)
