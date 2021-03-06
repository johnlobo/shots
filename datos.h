
extern const int EFFECT_TABLE[];

extern const int SONG_TABLE_0[];
extern const int RULE_TABLE_0[];
extern const int SOUND_TABLE_0[];




void asm_data_quezesto(void) {

// Music Player requiered data
__asm	

_SONG_TABLE_0: 
	.dw _SONG_0

_RULE_TABLE_0:
.dw PAUTA_0,PAUTA_1,PAUTA_2,PAUTA_3,PAUTA_4,PAUTA_5,PAUTA_6
PAUTA_0:	.DB	#46,#0,#12,#0,#10,#0,#9,#0,#129
PAUTA_1:	.DB	#46,#0,#13,#0,#12,#0,#10,#0,#10,#0,#9,#0,#8,#0,#12,#0,#10,#0,#9,#0,#129
PAUTA_2:	.DB	#7,#0,#8,#0,#9,#0,#9,#0,#8,#0,#7,#0,#6,#0,#129
PAUTA_3:	.DB	#45,#0,#12,#0,#12,#0,#11,#0,#11,#0,#10,#0,#10,#0,#9,#0,#129
PAUTA_4:	.DB	#7,#0,#8,#0,#8,#0,#8,#0,#7,#0,#6,#0,#6,#0,#6,#0,#6,#0,#6,#0,#5,#0,#5,#0,#5,#0,#5,#0,#5,#0,#138
PAUTA_5:	.DB	#7,#0,#8,#0,#9,#0,#8,#0,#7,#0,#6,#0,#129
PAUTA_6:	.DB	#77,#0,#12,#0,#11,#0,#10,#0,#9,#0,#8,#0,#7,#0,#9,#0,#8,#0,#7,#0,#129


_SOUND_TABLE_0:
		.dw SONIDO1
		.dw SONIDO2
		.dw SONIDO3
SONIDO0:	.DB	#23,#63,#0,#116,#110,#0,#255
SONIDO1:	.DB	#162,#47,#0,#23,#93,#9,#255
SONIDO2:	.DB	#0,#10,#5,#255
SONIDO3:	.DB	#186,#58,#0,#0,#102,#0,#162,#131,#0,#255




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


__endasm;
}

const unsigned char SONG_0[] = {
     0x05, 0x07, 0x00, 0x00, 0x3F, 0x00, 0x52, 0x12, 0x12, 0x52, 0x52, 0x12, 0x12, 0x52, 0x52, 0x12,
    0x12, 0x50, 0x10, 0x10, 0x50, 0x50, 0x10, 0x10, 0x50, 0x50, 0x10, 0x10, 0x4E, 0x0E, 0x0E, 0x4E,
    0x4E, 0x0E, 0x0E, 0x4E, 0x4E, 0x0E, 0x0E, 0x4D, 0x0D, 0x0D, 0x4D, 0x4D, 0x0D, 0x0D, 0x4D, 0x4D,
    0x0D, 0x0D, 0x52, 0x52, 0x52, 0x12, 0x12, 0x52, 0x52, 0x52, 0x12, 0x12, 0x55, 0x55, 0x55, 0x15,
    0x15, 0x55, 0x55, 0x55, 0x15, 0x15, 0x57, 0x57, 0x57, 0x17, 0x17, 0x57, 0x57, 0x57, 0x17, 0x17,
    0x5A, 0x5A, 0x5A, 0x1A, 0x1A, 0x5A, 0x5A, 0x5C, 0x1C, 0x1C, 0x52, 0x52, 0x52, 0x12, 0x12, 0x52,
    0x52, 0x52, 0x12, 0x12, 0x55, 0x55, 0x55, 0x15, 0x15, 0x55, 0x55, 0x55, 0x15, 0x15, 0x57, 0x57,
    0x57, 0x17, 0x17, 0x57, 0x57, 0x57, 0x17, 0x17, 0x59, 0x59, 0x59, 0x19, 0x19, 0x57, 0x55, 0x54,
    0x51, 0x52, 0x52, 0x52, 0x12, 0x12, 0x52, 0x52, 0x52, 0x12, 0x12, 0x55, 0x55, 0x55, 0x15, 0x15,
    0x55, 0x55, 0x55, 0x15, 0x15, 0x57, 0x57, 0x57, 0x17, 0x17, 0x57, 0x57, 0x57, 0x17, 0x17, 0x5A,
    0x5A, 0x5A, 0x1A, 0x1A, 0x5A, 0x5A, 0x5C, 0x1C, 0x1C, 0x52, 0x52, 0x52, 0x12, 0x12, 0x52, 0x52,
    0x52, 0x12, 0x12, 0x50, 0x50, 0x50, 0x10, 0x10, 0x50, 0x50, 0x50, 0x10, 0x10, 0x4E, 0x4E, 0x4E,
    0x0E, 0x0E, 0x4E, 0x4E, 0x4E, 0x0E, 0x0E, 0x50, 0x50, 0x50, 0x10, 0x10, 0x50, 0x50, 0x10, 0x14,
    0x17, 0x14, 0x19, 0x19, 0x52, 0x52, 0x12, 0x12, 0x50, 0x50, 0x50, 0x10, 0x10, 0x4E, 0x4E, 0x4E,
    0x0E, 0x0E, 0x50, 0x50, 0x50, 0x10, 0x10, 0x19, 0x19, 0x52, 0x12, 0x12, 0x52, 0x50, 0x50, 0x10,
    0x10, 0x50, 0x55, 0x55, 0x15, 0x15, 0x55, 0x57, 0x57, 0x17, 0x17, 0x57, 0x19, 0x19, 0x52, 0x52,
    0x12, 0x12, 0x50, 0x50, 0x50, 0x10, 0x10, 0x4E, 0x4E, 0x4E, 0x0E, 0x0E, 0x50, 0x50, 0x50, 0x10,
    0x10, 0x19, 0x19, 0x52, 0x12, 0x12, 0x52, 0x50, 0x50, 0x10, 0x10, 0x50, 0x19, 0x19, 0x59, 0x19,
    0x19, 0x59, 0x59, 0x59, 0x19, 0x19, 0x59, 0x17, 0x19, 0x59, 0x59, 0x59, 0x57, 0x57, 0x15, 0x15,
    0x14, 0x14, 0x00, 0x3F, 0x03, 0x71, 0x81, 0x6F, 0x81, 0x71, 0x72, 0x71, 0x81, 0x6F, 0x81, 0x6C,
    0x6D, 0x71, 0x81, 0x6F, 0x81, 0x71, 0x72, 0x71, 0x81, 0x72, 0x81, 0xB4, 0xA1, 0xAA, 0xAD, 0x2C,
    0x01, 0x28, 0x01, 0xAA, 0xBE, 0xAD, 0xBE, 0xB1, 0x2F, 0x01, 0xEA, 0xFE, 0x41, 0x21, 0x21, 0x61,
    0x21, 0x21, 0x61, 0x61, 0x61, 0x20, 0x23, 0x68, 0xA5, 0xAA, 0x6D, 0x28, 0x01, 0x2A, 0x01, 0x2C,
    0x01, 0xAD, 0xBE, 0xA8, 0xBE, 0xB4, 0xF3, 0xFE, 0xFE, 0x68, 0x28, 0x27, 0x28, 0x27, 0x28, 0x2A,
    0x6C, 0x2C, 0x2A, 0x2C, 0x2A, 0x2C, 0x31, 0xA1, 0xAA, 0xAD, 0x2C, 0x01, 0x28, 0x01, 0xAA, 0xBE,
    0xAD, 0xBE, 0xB1, 0x2F, 0x01, 0xEA, 0xFE, 0x41, 0x21, 0x21, 0x61, 0x21, 0x21, 0x61, 0x61, 0x61,
    0x20, 0x23, 0x68, 0xA5, 0xAA, 0x6D, 0x7E, 0x2A, 0x6C, 0x2F, 0x01, 0xB1, 0xBE, 0x2F, 0x01, 0xAD,
    0xAF, 0xAD, 0xBE, 0x2C, 0x2A, 0xED, 0xAF, 0xBE, 0x2D, 0x2C, 0xAA, 0xAC, 0x41, 0x3F, 0x01, 0x2D,
    0x41, 0x2D, 0x01, 0x2D, 0x6F, 0xAC, 0x68, 0x2D, 0x01, 0x2D, 0x01, 0x2A, 0x2D, 0x72, 0x2F, 0x01,
    0x2F, 0x01, 0x2C, 0x2F, 0x74, 0x41, 0x2D, 0x41, 0x2D, 0x01, 0x2D, 0x6F, 0xAC, 0x68, 0x6D, 0x7E,
    0x2D, 0xB4, 0x73, 0x7E, 0x33, 0xB6, 0x41, 0x2D, 0x41, 0x2D, 0x01, 0x2D, 0x6F, 0xAC, 0x68, 0x2D,
    0x01, 0x2D, 0x01, 0x2A, 0x2D, 0x72, 0x2F, 0x01, 0x2F, 0x01, 0x2C, 0x2F, 0x74, 0x41, 0x2D, 0x41,
    0x2D, 0x01, 0x2D, 0x6F, 0x3F, 0x03, 0x6D, 0x6C, 0x68, 0x3F, 0x04, 0x2A, 0x2C, 0x2D, 0x2F, 0x31,
    0x2F, 0x2D, 0x2C, 0x2A, 0x2C, 0x2D, 0x2F, 0x31, 0x2F, 0x2D, 0x2A, 0x3F, 0x03, 0xAF, 0xAD, 0xAC,
    0xA9, 0x00, 0x3F, 0x03, 0x2D, 0x01, 0x2A, 0x2A, 0x6A, 0x2C, 0x01, 0x2A, 0x2A, 0x6A, 0x6D, 0x6F,
    0x2D, 0x01, 0x2A, 0x2A, 0x6A, 0x2C, 0x01, 0x2A, 0x2A, 0x6A, 0x68, 0x6A, 0x2D, 0x01, 0x2A, 0x2A,
    0x6A, 0x6C, 0x2A, 0x2A, 0x6A, 0x6D, 0x6F, 0x2D, 0x01, 0x25, 0x25, 0x65, 0x6F, 0x25, 0x25, 0x65,
    0xB1, 0x3F, 0x00, 0xA1, 0x3F, 0x03, 0xA5, 0xAA, 0x28, 0x01, 0x23, 0x01, 0xA5, 0xBE, 0xAA, 0xBE,
    0xAD, 0x27, 0x01, 0xE7, 0x41, 0x25, 0x25, 0x65, 0x1E, 0x1E, 0x5E, 0x1E, 0x1E, 0x5E, 0x5E, 0x5E,
    0x81, 0xA1, 0xA5, 0x6A, 0x23, 0x01, 0x25, 0x01, 0x28, 0x01, 0xAA, 0xBE, 0xA5, 0xBE, 0xB1, 0x5E,
    0x1E, 0x1C, 0x1E, 0x1C, 0x1E, 0x20, 0x61, 0x21, 0x20, 0x21, 0x20, 0x21, 0x23, 0x65, 0x25, 0x23,
    0x25, 0x23, 0x25, 0x27, 0x68, 0x28, 0x27, 0x28, 0x27, 0x28, 0x2A, 0x3F, 0x00, 0xA1, 0x3F, 0x03,
    0xA5, 0xAA, 0x28, 0x01, 0x23, 0x01, 0xA5, 0xBE, 0xAA, 0xBE, 0xAD, 0x27, 0x01, 0xE7, 0x41, 0x25,
    0x25, 0x65, 0x1E, 0x1E, 0x5E, 0x1E, 0x1E, 0x5E, 0x5E, 0x5E, 0x81, 0xA1, 0xA5, 0x6A, 0x7E, 0x25,
    0x68, 0x2C, 0x01, 0xAD, 0xBE, 0x2C, 0x01, 0xAA, 0xAC, 0xAA, 0xBE, 0x28, 0x26, 0xEA, 0xAC, 0xBE,
    0x2A, 0x28, 0xA5, 0xA8, 0x41, 0x3F, 0x01, 0x2A, 0x41, 0x2A, 0x01, 0x2A, 0x6C, 0xA8, 0x65, 0x2A,
    0x01, 0x2A, 0x01, 0x26, 0x2A, 0x6D, 0x2C, 0x01, 0x2C, 0x01, 0x28, 0x2C, 0x6F, 0x41, 0x2A, 0x41,
    0x2A, 0x01, 0x2A, 0x6C, 0xA8, 0x65, 0x68, 0x7E, 0x28, 0xB1, 0x6F, 0x7E, 0x2F, 0xB3, 0x41, 0x2A,
    0x41, 0x2A, 0x01, 0x2A, 0x6C, 0xA8, 0x65, 0x2A, 0x01, 0x2A, 0x01, 0x26, 0x2A, 0x6D, 0x2C, 0x01,
    0x2C, 0x01, 0x28, 0x2C, 0x6F, 0x41, 0x2A, 0x41, 0x2A, 0x01, 0x2A, 0x6C, 0x3F, 0x03, 0x6A, 0x68,
    0x65, 0x01, 0x3F, 0x04, 0x2A, 0x2C, 0x2D, 0x2F, 0x31, 0x2F, 0x2D, 0x2C, 0x2A, 0x2C, 0x2D, 0x2F,
    0x31, 0x2F, 0x2D, 0x3F, 0x03, 0xAC, 0xAA, 0xA9, 0xA5, 0x00, 0x7F, 0x80, 0xBE, 0x7F, 0x80, 0xBE,
    0x7F, 0x81, 0x7F, 0x80, 0xBE, 0x7F, 0x80, 0xBE, 0x7F, 0x41, 0x7F, 0x40, 0x7F, 0x80, 0xBE, 0x7F,
    0x80, 0x7F, 0x40, 0x7F, 0x81, 0x7F, 0x80, 0xBE, 0x7F, 0x80, 0xBE, 0x7F, 0x01, 0x7F, 0x01, 0x7F,
    0x41, 0x7F, 0x80, 0xBE, 0x7F, 0x40, 0x7F, 0x80, 0x7F, 0x81, 0x7F, 0x80, 0xBE, 0x7F, 0x40, 0x7F,
    0x80, 0x7F, 0x81, 0x7F, 0x40, 0x7F, 0x80, 0x7F, 0x40, 0x7F, 0x80, 0x7F, 0x81, 0x7F, 0x40, 0x7F,
    0x80, 0x7F, 0x40, 0x7F, 0x80, 0x7F, 0x01, 0x7F, 0x01, 0x7F, 0x41, 0x7F, 0x80, 0xBE, 0x7F, 0x40,
    0x7F, 0x80, 0x7F, 0x81, 0x7F, 0x80, 0xBE, 0x7F, 0x40, 0x7F, 0x80, 0x7F, 0x81, 0x7F, 0x40, 0x7F,
    0x80, 0x7F, 0x40, 0x7F, 0x80, 0x7F, 0x81, 0x7F, 0x40, 0x7F, 0x80, 0x7F, 0x40, 0x7F, 0x80, 0x7F,
    0x41, 0x7F, 0x41, 0x7F, 0x80, 0xBE, 0x7F, 0x40, 0x7F, 0x80, 0x7F, 0x81, 0x7F, 0x80, 0xBE, 0x7F,
    0x40, 0x7F, 0x80, 0x7F, 0x81, 0x7F, 0x40, 0x7F, 0x80, 0x7F, 0x40, 0x7F, 0x80, 0x7F, 0x81, 0x7F,
    0x40, 0x7F, 0x80, 0x7F, 0x40, 0x7F, 0x80, 0x7F, 0x01, 0x7F, 0x01, 0x7F, 0x41, 0x7F, 0x80, 0xBE,
    0x7F, 0x40, 0x7F, 0x80, 0x7F, 0x81, 0x7F, 0x80, 0xBE, 0x7F, 0x40, 0x7F, 0x80, 0x7F, 0x81, 0x7F,
    0x40, 0x7F, 0x80, 0x7F, 0x40, 0x7F, 0x80, 0x7F, 0x81, 0x7F, 0x40, 0x7F, 0x80, 0x7F, 0x40, 0x7F,
    0x01, 0x7F, 0x01, 0x7F, 0x41, 0x7F, 0x01, 0x7F, 0x01, 0x7F, 0x41, 0x7F, 0x00, 0x7F, 0x40, 0x7E,
    0x7F, 0x41, 0x7F, 0x80, 0x7F, 0x40, 0x7F, 0x81, 0x7F, 0x40, 0x7F, 0x40, 0x7F, 0x41, 0x7F, 0x80,
    0x7F, 0x40, 0x7F, 0x81, 0x7F, 0x00, 0x7F, 0x40, 0x7E, 0x7F, 0x41, 0x7F, 0x80, 0x7F, 0x40, 0x7F,
    0x81, 0x7F, 0x40, 0x7F, 0x40, 0x7F, 0x41, 0x7F, 0x80, 0x7F, 0x40, 0x7F, 0x01, 0x7F, 0x41, 0x7E,
    0x7F, 0x00, 0x7F, 0x40, 0x7E, 0x7F, 0x41, 0x7F, 0x80, 0x7F, 0x40, 0x7F, 0x81, 0x7F, 0x40, 0x7F,
    0x40, 0x7F, 0x41, 0x7F, 0x80, 0x7F, 0x40, 0x7F, 0x81, 0x7F, 0x00, 0x7F, 0x40, 0x7E, 0x7F, 0x41,
    0x7F, 0x80, 0x7F, 0x40, 0x7F, 0x81, 0x7F, 0x40, 0x7F, 0x40, 0x7F, 0x41, 0x7F, 0x80, 0x7F, 0x40,
    0x7F, 0x01, 0x7F, 0x41, 0x7E, 0x7F, 0x41, 0x7F, 0x40, 0x7F, 0x41, 0x7F, 0x40, 0x7F, 0x01, 0x7F,
    0x01, 0x7F, 0x41, 0x7F, 0x01, 0x7F, 0x01, 0x7F, 0x01, 0x7F, 0x01, 0x00, 0x00
};


