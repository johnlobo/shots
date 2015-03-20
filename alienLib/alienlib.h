#ifndef  __alienlib_h__
#define __alienlib_h__


void drawSprite_clipping_m0(char *sprite, unsigned char x, unsigned char y);

void cpct_drawSprite(char *sprite, int memory);

unsigned char fastCollision(unsigned char x1,unsigned char y1,unsigned char w1,unsigned char h1,unsigned char x2,unsigned char y2,unsigned char w2,unsigned char h2);
unsigned char fastCollision2(unsigned char x1,unsigned char y1,char *sprite1,unsigned char x2,unsigned char y2, char *sprite2);

unsigned char detectColision(unsigned char x1,unsigned char y1,unsigned char w1,unsigned char h1,unsigned char x2,unsigned char y2,unsigned char w2,unsigned char h2);


void enableFirmware();
void disableFirmware();
void printSpriteXOR(char *sprite, char x, char y, int direccion);
int getScreenAddress (char x, char y);


#endif /* __alienlib_h__ */