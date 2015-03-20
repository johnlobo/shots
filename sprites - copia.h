extern unsigned char tintas[] =  	//inks
{
//20,10,19,12,11,23,21,14,
//22,30,31,01,01,25,16,28,20
0x14,0x01,0x0b,0x09,0x0A,0x0E,0x0C,0x1C,
0x1A,0x16,0x1E,0x13,0x1F,0x17,0x15,0x10,0x14
};

unsigned char nave[66] =
{
	  4,  16, 		 /* Width x Height */
/* pixels */
	  0,  81, 162,   0,
	  0,  21,  42,   0,
	  0,  21,  42,   0,
	  0,  63,  63,   0,
	  0,  63,  63,   0,
	  0, 111, 183,   0,
	162, 123, 183,  81,
	 42, 123, 183,  21,
	 42, 123, 183,  21,
	 63,  63,  63,  63,
	 63,  63,  63,  63,
	191,  63,  63, 127,
	191, 127, 191, 127,
	 85, 255, 255, 170,
	170,   0,   0,  85,
	170,   0,   0,  85
};

extern unsigned char baddie01[62] =
{
	  4,  15, 		 /* Width x Height */
/* pixels */
	 20,   0,   0,  40,
	150,   0,   0, 105,
	150,  40,  20, 105,
	 65,  60,  60, 130,
	 65,  56,  52, 130,
	  0,  56,  52,   0,
	 16,  60,  60,  32,
	 48,  20,  40,  48,
	 32,  62,  61,  16,
	 21,  62,  61,  42,
	 21,  20,  40,  42,
	 63,  16,  32,  63,
	 63,   0,   0,  63,
	 63,   0,   0,  63,
	 21,   0,   0,  42,
};

/* Name    : baddie02 */
/* Frame   : 0 */
/* Palette : Amstrad CPC Mode 0 */
/* Masked  : No */
/* RowOrder: Classic */
/* Size: 4 x 8 - (bytes x pixels) */
extern unsigned char baddie02[34] =
{
	  4,   8, 		 /* Width x Height */
/* pixels */
	  0,  15,  27,   0,
	  5,  15,  15,  34,
	 15,  91,  47,  27,
	 15, 243, 159,  27,
	135,  91, 167,  15,
	131,  15,  15,  15,
	 65,   7,  15,  10,
	  0, 195,  15,   0
};

/* Name    : baddie02 */
/* Frame   : 1 */
/* Palette : Amstrad CPC Mode 0 */
/* Masked  : No */
/* RowOrder: Classic */
/* Size: 4 x 8 - (bytes x pixels) */
extern unsigned char baddie03[34] =
{
	  4,   8, 		 /* Width x Height */
/* pixels */
	255, 255, 255, 255,
	255, 163,  83, 127,
	 85, 167,  83,  42,
	 85, 167,  91,  42,
	  0, 251, 183,   0,
	  0, 251, 183,   0,
	  0,  85,  42,   0,
	  0,  85,  42,   0
};

/* Name    : explosion02 */
/* Frame   : 0 */
/* Palette : Amstrad CPC Mode 0 */
/* Masked  : No */
/* RowOrder: Classic */
/* Size: 4 x 16 - (bytes x pixels) */

extern unsigned char explosion02000[66] =
{
	  4,  16, 		 /* Width x Height */
/* pixels */
	  0,   0,   0,   0,
	  0,  84, 168,   0,
	  0, 252, 252,   0,
	  0, 248, 244,   0,
	 84, 240, 120, 168,
	 84, 180, 112, 168,
	 80,  56, 112, 168,
	248,  52,  52, 252,
	188,  52,  60, 244,
	 80, 112,  48,  40,
	  0, 240,  52, 160,
	  0, 252, 244, 160,
	  0, 248, 244, 168,
	  0, 252, 252,   0,
	  0,  84, 168,   0,
	  0,   0,   0,   0
	  };
/* Name    : explosion02 */
/* Frame   : 1 */
/* Palette : Amstrad CPC Mode 0 */
/* Masked  : No */
/* RowOrder: Classic */
/* Size: 4 x 16 - (bytes x pixels) */
extern unsigned char explosion02001[66] =
{
	  4,  16, 		 /* Width x Height */
/* pixels */
	  0,   0,   0,   0,
	  0,   0,   0,   0,
	  0,   0,   0,   0,
	  0,   0, 168,   0,
	  0, 188,  40,   0,
	 84,  60,  60,   0,
	 84,  56, 180,  40,
	 20, 240,  48, 124,
	188, 176, 112,  40,
	 20, 120, 240,  40,
	 84,  60, 180, 168,
	  0,  60,  60, 168,
	  0, 252, 168,   0,
	  0,  84,   0,   0,
	  0,   0,   0,   0,
	  0,   0,   0,   0
};
/* Name    : explosion02 */
/* Frame   : 2 */
/* Palette : Amstrad CPC Mode 0 */
/* Masked  : No */
/* RowOrder: Classic */
/* Size: 4 x 16 - (bytes x pixels) */
extern unsigned char explosion02002[66] =
{
	  4,  16, 		 /* Width x Height */
/* pixels */
	  0,   0,   0,   0,
	  0,   0,   0,   0,
	  0,   0,   0,   0,
	  0,  20,   0,   0,
	  0,   0,   0,   0,
	  0,  40,   0,   0,
	 20,  60,  60,   0,
	 20, 120,  40,   0,
	120,  56,  60,  40,
	 80,  60, 180,   0,
	 20,  52,  52,   0,
	  0,  60,  60,   0,
	  0,  60,   0,   0,
	  0,   0,   0,   0,
	  0,   0,   0,   0,
	  0,   0,   0,   0
	  };
/* Name    : explosion02 */
/* Frame   : 3 */
/* Palette : Amstrad CPC Mode 0 */
/* Masked  : No */
/* RowOrder: Classic */
/* Size: 4 x 16 - (bytes x pixels) */
extern unsigned char explosion02003[66] =
{
	  4,  16, 		 /* Width x Height */
/* pixels */
	  0,   0,   0,   0,
	  0,   0,   0,   0,
	  0,   0,   0,   0,
	  0,   0,   0,   0,
	  0,  80,   0,   0,
	  0,   0,  16,   0,
	  0,   0,   0,   0,
	  0,  32,   0,   0,
	 80,   0,  16,   0,
	  0,  80,   0,   0,
	  0,   0,   0, 160,
	  0,   0,  32,   0,
	  0, 160,   0,   0,
	  0,   0,  80,   0,
	  0,   0,   0,   0,
	  0,   0,   0,   0
};
extern unsigned char explosion02004[66] =
{
	  4,  16, 		 /* Width x Height */
/* pixels */
	  0,   0,   0,   0,
	  0,   0,   0,   0,
	  0,   0,   0,   0,
	  0,   0,   0,   0,
	  0,   0,   0,   0,
	  0,   0,   0,   0,
	  0,   0,   0,   0,
	  0,   0,   0,   0,
	  0,   0,   0,   0,
	  0,   0,   0,   0,
	  0,   0,   0,   0,
	  0,   0,   0,   0,
	  0,   0,   0,   0,
	  0,   0,   0,   0,
	  0,   0,   0,   0,
	  0,   0,   0,   0,
};

/* Name    : shot2 */
/* Palette : Amstrad CPC Mode 0 */
/* Masked  : No */
/* RowOrder: Classic */
/* Size: 2 x 6 - (bytes x pixels) */
extern char shot2[14] =
{
	  2,   6, 		 /* Width x Height */
/* pixels */
	 85,   0,
	191, 170,
	191, 170,
	191, 170,
	191, 170,
	 85,   0
};

/* Name    : shot3 */
/* Palette : Amstrad CPC Mode 0 */
/* Masked  : No */
/* RowOrder: Classic */
/* Size: 2 x 4 - (bytes x pixels) */
extern unsigned char shot3[10] =
{
	  2,   4, 		 /* Width x Height */
/* pixels */
	 20,   0,
	120,  40,
	120,  40,
	 20,   0
};

/* Name    : life */
/* Frame   : 0 */
/* Palette : Amstrad CPC Mode 0 */
/* Masked  : No */
/* RowOrder: Classic */
/* Size: 3 x 6 - (bytes x pixels) */
extern unsigned char heart[17] =
{
	  3,   5, 		 /* Width x Height */
/* pixels */
	 80,  20,   0,
	180,  60,  40,
	180,  60,  40,
	 20,  60,   0,
	  0,  40,   0,
};
/* Name    : life */
/* Frame   : 1 */
/* Palette : Amstrad CPC Mode 0 */
/* Masked  : No */
/* RowOrder: Classic */
/* Size: 3 x 6 - (bytes x pixels) */
extern unsigned char plane[17] =
{
	  3,   5, 		 /* Width x Height */
/* pixels */
	  0,  42,   0,
	  0,  42,   0,
	 21, 255,   0,
	127, 255, 170,
	  0, 170,   0,
};
extern unsigned char greenFlag[14] =
{
	  2,   6, 		 /* Width x Height */
/* pixels */
	  0,  14,  
	  5,  14,  
	 15,  14,  
	 15,  14,  
	  0,   4,  
	  0,   4,  
};
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



/* Name    : toque */
/* Frame   : 0 */
/* Palette : Amstrad CPC Mode 0 */
/* Masked  : No */
/* RowOrder: Classic */
extern unsigned char toque000[18] =
{
	  2,   8, 		 /* Width x Height */
/* pixels */
	 64, 128,
	  0,   0,
	  0,   0,
	  0,   0,
	  0,   0,
	  0,   0,
	  0,   0,
	  0,   0
};
/* Name    : toque */
/* Frame   : 1 */
/* Palette : Amstrad CPC Mode 0 */
/* Masked  : No */
/* RowOrder: Classic */
extern unsigned char toque001[18] =
{
	  2,   8, 		 /* Width x Height */
/* pixels */
	 64, 128,
	  0,   0,
	 64,   0,
	  0, 128,
	 64,  64,
	  0,   0,
	  0,   0,
	  0,   0
};
/* Name    : toque */
/* Frame   : 2 */
/* Palette : Amstrad CPC Mode 0 */
/* Masked  : No */
/* RowOrder: Classic */
extern unsigned char toque002[18] =
{
	  2,   8, 		 /* Width x Height */
/* pixels */
	  0,   0,
	  0,   0,
	  0,   0,
	  0,   0,
	 64,   0,
	128, 128,
	  0,  64,
	  0,   0
};
/* Name    : toque */
/* Frame   : 3 */
/* Palette : Amstrad CPC Mode 0 */
/* Masked  : No */
/* RowOrder: Classic */
extern unsigned char toque003[18] =
{
	  2,   8, 		 /* Width x Height */
/* pixels */
	  0,   0,
	  0,   0,
	  0,   0,
	  0,   0,
	  0,   0,
	  0,   0,
	128,   0,
	  0,  64
};

extern unsigned char toque004[18] =
{
	  2,   8, 		 /* Width x Height */
/* pixels */
	  0,   0,
	  0,   0,
	  0,   0,
	  0,   0,
	  0,   0,
	  0,   0,
	  0,   0,
	  0,   0
};

extern unsigned char fire000[6] =
{
	  2,   2, 		 /* Width x Height */
/* pixels */
	180, 112,
	 16,  40,
};
/* Name    : fire */
/* Frame   : 1 */
/* Palette : Amstrad CPC Mode 0 */
/* Masked  : No */
/* RowOrder: Classic */
/* Size: 2 x 4 - (bytes x pixels) */
extern unsigned char fire001[6] =
{
	  2,   2, 		 /* Width x Height */
/* pixels */
	112,  56,
	 20, 160,
};
/* Name    : fire */
/* Frame   : 2 */
/* Palette : Amstrad CPC Mode 0 */
/* Masked  : No */
/* RowOrder: Classic */
/* Size: 2 x 4 - (bytes x pixels) */
extern unsigned char fire002[6] =
{
	  2,   2, 		 /* Width x Height */
/* pixels */
	 56, 180,
	 80,  32,
};
extern unsigned char fire003[6] =
{
	  2,   2, 		 /* Width x Height */
/* pixels */
	 0, 0,
	 0, 0,
};
unsigned char addones000[34] =
{
	  4,   8, 		 /* Width x Height */
/* pixels */
	 15,   0,   0,  15,
	 10, 192, 192,   5,
	 17, 192, 192, 128,
	 17, 192, 192, 128,
	 17,  98, 192, 128,
	  0,  98, 192,   0,
	 10,  51, 192,   5,
	 15,  17, 128,  15
};
/* Name    : addones */
/* Frame   : 1 */
/* Palette : Amstrad CPC Mode 0 */
/* Masked  : No */
/* RowOrder: Classic */
/* Size: 4 x 8 - (bytes x pixels) */
unsigned char addones001[34] =
{
	  4,   8, 		 /* Width x Height */
/* pixels */
	 15,   0,   0,  15,
	 10, 255,  63,   5,
	  0,  63, 243,   0,
	  0,  63, 243,   0,
	  0,  63, 243,   0,
	  0,  63, 243,   0,
	 10, 255,  63,   5,
	 15,   0,   0,  15
};
/* Name    : addones */
/* Frame   : 2 */
/* Palette : Amstrad CPC Mode 0 */
/* Masked  : No */
/* RowOrder: Classic */
/* Size: 4 x 8 - (bytes x pixels) */
unsigned char addones002[34] =
{
	  4,   8, 		 /* Width x Height */
/* pixels */
	143,  81,   0, 167,
	 79,  85,  81,   5,
	  0, 255, 170,   0,
	243, 247, 243, 162,
	  0, 247, 162,   0,
	 81, 251, 251,   0,
	162,  85,   0, 167,
	 15,  81,   0,  15
};
/* Name    : addones */
/* Frame   : 3 */
/* Palette : Amstrad CPC Mode 0 */
/* Masked  : No */
/* RowOrder: Classic */
/* Size: 4 x 8 - (bytes x pixels) */
unsigned char addones003[34] =
{
	  4,   8, 		 /* Width x Height */
/* pixels */
	 15,   0,   0,  15,
	 90,  40, 124, 173,
	240,  40, 124,  84,
	 80,  40, 124,  84,
	 80,  40, 124, 168,
	 80,  40, 124,   0,
	 90,  20,  84,   5,
	 15,   0,   0,  15
};
unsigned char addones004[34] =
{
	  4,   8, 		 /* Width x Height */
/* pixels */
	 15,   0,   0,  15,
	 10,   0,   0,   5,
	  0, 160,  40,   0,
	 80,  60,  60,   0,
	 80,  60,  60,   0,
	  0,  60,  40,   0,
	 10,  20,   0,   5,
	 15,   0,   0,  15
};
/* Name    : escudo */
/* Palette : Amstrad CPC Mode 0 */
/* Masked  : No */
/* RowOrder: Classic */
/* Size: 6 x 16 - (bytes x pixels) */
unsigned char escudo[98] =
{
	  6,  16, 		 /* Width x Height */
/* pixels */
	  0,   0, 145,  98,   0,   0,
	  0,  17,  34,  64, 128,   0,
	  0, 192,   0,   0, 192,   0,
	 17,  34,   0,   0,  64, 128,
	 17,   0,   0,   0,   0, 128,
	 17,   0,   0,   0,   0, 128,
	145,   0,   0,   0,   0, 192,
	128,   0,   0,   0,   0,  64,
	128,   0,   0,   0,   0,  64,
	 34,   0,   0,   0,   0,  64,
	 34,   0,   0,   0,   0,  64,
	 34,   0,   0,   0,   0,  64,
	 34,   0,   0,   0,   0,  64,
	 34,   0,   0,   0,   0,  64,
	 34,   0,   0,   0,   0,  64,
	 34,   0,   0,   0,   0,  64
};