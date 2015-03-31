#include "alienlib.h"
#include "cpcrslib2.h"
#include "sprites.h"

typedef struct 
{
	unsigned char x;	/* data */
	unsigned char y;
} POINT;

#define MAX_WAYPOINTS 4

POINT way_points[MAX_WAYPOINTS] = {
	{0,0},
	{60,10},
	{40,15},
	{10,180}
};

POINT pos_ship;

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

	cpc_SetColour(17,3);
}

void main(){
	unsigned char i;

	cpc_DisableFirmware();
	
	cpc_SetMode(0);
	
	setColours();

	pos_ship.x = 0;
	pos_ship.y = 0;
	i = 0;

	while (i<MAX_WAYPOINTS){
		if ((pos_ship.x!=way_points[i].x) || (pos_ship.y!=way_points[i].y)){
			if (pos_ship.x<way_points[i].x){
				pos_ship.x++;
			}else if (pos_ship.x>way_points[i].x){
				pos_ship.x--;
			}	
			if (pos_ship.y<way_points[i].y){
				pos_ship.y++;
			}else if (pos_ship.y>way_points[i].y){
				pos_ship.y--;
			}
			drawSprite_clipping_m0(ship01,pos_ship.x,pos_ship.y);
			pause(6);	
		}else{
			i++;
		}
	}
	pause(1000);
	cpc_EnableFirmware();
}