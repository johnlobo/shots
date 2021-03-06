extern const unsigned char ship01[];
extern unsigned char bullet01[];
extern unsigned char bullet02[];
extern unsigned char heart[];
extern unsigned char plane[];
extern unsigned char greenFlag[];
extern unsigned char redFlag[14] =
{
	  2,   6, 		 /* Width x Height */
/* pixels */
	  0,  44,  
	 20,  44,  
	 60,  44,  
	 60,  44,  
	  0,   4,  
	  0,   4  
};
//extern unsigned char redFlag[];
extern unsigned char tintas[];

void sprites(void){
__asm

_ship01:
.db 0x06, 0x10		; Width x Height
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
.db 0x03, 0x05		; Width x Height
; pixels
.db 0x01, 0x54, 0x00
.db 0x56, 0xFC, 0xA8
.db 0x56, 0xFC, 0xA8
.db 0x54, 0xFC, 0x00
.db 0x00, 0xA8, 0x00

_plane:
.db 0x03, 0x06		; Width x Height
; pixels
.db 0x00, 0x8C, 0x00
.db 0x00, 0x8C, 0x00
.db 0x23, 0xFF, 0x00
.db 0xBF, 0xFF, 0xCC
.db 0x00, 0xCC, 0x00
.db 0x00, 0x00, 0x00

_greenFlag:
.db 0x03, 0x06		; Width x Height
; pixels
.db 0x00, 0x85, 0x00
.db 0x21, 0x85, 0x00
.db 0xA5, 0x85, 0x00
.db 0xA5, 0x85, 0x00
.db 0x00, 0x01, 0x00
.db 0x00, 0x01, 0x00


_tintas: 
.db 0x14,0x01,0x0b,0x09,0x0A,0x0E,0x0C,0x1C
.db	0x1A,0x16,0x1E,0x13,0x1F,0x17,0x15,0x10,0x14
__endasm;
}
