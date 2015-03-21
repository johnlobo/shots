#include "alienlib.h"
#include "cpcrslib2.h"

unsigned char heart[17] =
{
	3,   5, 		 /* Width x Height */
	/* pixels */
	80,  20,   0,
	180,  60,  40,
	180,  60,  40,
	20,  60,   0,
	0,  40,   0,
};
unsigned char tintas[] =  	//inks
{
0x14,0x01,0x0b,0x09,0x0A,0x0E,0x0C,0x1C,
0x1A,0x16,0x1E,0x13,0x1F,0x17,0x15,0x10,0x14
};

void pause(unsigned int p){
	unsigned int i;
	for (i=0; i < p; i++) {
		__asm
		halt
		__endasm;
	}
}

//******************************************************************************
// Función set_colours()
//
//******************************************************************************
void setColours()
{
	unsigned char x;
	for (x=0; x<17; x++)
	{
		cpc_SetColour(x,tintas[x]);
	}
}

void main(){
	unsigned char i;
	unsigned char j;

	cpc_DisableFirmware();
	
	cpc_SetMode(0);
	
	setColours();
	
	cpc_SetColour(17,3);
	
	for (i=5;i<195;i=i+5){
		for (j=3;j<77;j=j+3){
			drawSprite_clipping_m0(heart,j,i);
		}
	}
	
	//drawSprite_clipping_m0(heart,0,0);
	drawSprite_clipping_m0(heart,-1,100);
	drawSprite_clipping_m0(heart,78,100);
	drawSprite_clipping_m0(heart,39,-1);
	drawSprite_clipping_m0(heart,39,196);
	drawSprite_clipping_m0(heart,-1,-1);
	drawSprite_clipping_m0(heart,78,-1);
	drawSprite_clipping_m0(heart,78,196);
	drawSprite_clipping_m0(heart,-1,196);
	
	pause(5000);
	cpc_EnableFirmware();
}