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
	
	for (i=0;i<200;i=i+5){
		for (j=0;j<79;j=j+3){
			//printSpriteXOR(heart,j,i,0);
			drawSprite_clipping_m0(heart,j,i);
		}
	}
	
	pause(1000);
	cpc_EnableFirmware();
}