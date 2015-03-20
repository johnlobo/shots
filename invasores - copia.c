#include <stdio.h>
#include "cpcrslib2.h"
#include "cpcwyzlib.h"	//Music & Sound library
#include "datos.h"
#include "estructuras.h"
#include "sprites.h"
#include "alienlib.h"

// Definición de teclas
#define KEY_LEFT	0
#define KEY_RIGHT	1
#define KEY_UP		2
#define KEY_DOWN	3
#define KEY_FIRE	4
#define KEY_ESC		5
#define KEY_ME1		6
#define KEY_ME2		7
#define KEY_ME3		8
#define KEY_ME4		9
#define KEY_HOSTILITY	11

// Automata de estados
#define STATE_MENU    2
#define STATE_HELP    3
#define STATE_GAME    4
#define STATE_EXIT    5
#define STATE_WIN     6
#define STATE_LOSE    7
#define STATE_LEVELUP    8
#define STATE_REDEFINE    9
#define STATE_DEAD 11

// Estados iniciales de la partida
#define DEBUG 1
#define SONIDO_ACTIVADO 1

unsigned int timer0 = 0;
unsigned int timer1 = 0;
unsigned long nTimeLast = 0;

//prota
TIPO_NAVE prota;
void *animMotorSprite[4];

//Autómata de estados
char state;

//General
char nivel;
char hostilidad;
int score=0;
unsigned char cambio_score=0;
char aux_txt[6];

//******************************************************************************
// Función timerOn()
// Procedmiento que activa el temporizador en las interrupciones
//******************************************************************************
void timerOn(void) {
	__asm
	DI
	IM 1	
	PUSH HL
	LD HL, #_timer0
	LD (HL),#0X0000
	LD HL,#0X0038
	LD (HL),#0XC3		;JP
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
	LD	HL,#_timer0
desborde:
	INC (HL)
	INC HL
	JR	Z,desborde
	POP AF
	POP HL
	EI
	RET
term:
	__endasm;
}
//******************************************************************************
// Función timerOff()
// Detiene el temporizador y vuelve al modo de firmware desactivado
//******************************************************************************
void timerOff(void) {
	__asm
	DI
	IM 1
	LD HL,#0X0038
	LD (HL),#0XFB		;EI
	INC HL
	LD (HL),#0XC9		;RET
	EI
	__endasm;
}
//******************************************************************************
// Función getTime()
// Obtiene el valor del temporizador
//******************************************************************************
unsigned long getTime()
{
	unsigned long nTime = 0;
	nTime = (timer1 << 8) + timer0;
	return nTime;
}
//******************************************************************************
// Función halt_me()
// 
//******************************************************************************
void halt_me () {			
	__asm
	halt				
	halt
	halt
	halt
	halt
	__endasm;
}
//******************************************************************************
// Función scr_waitVSYNC()
// Sincronización vertical
//******************************************************************************
void scr_waitVSYNC() {
	__asm 
	// Check if we are in VSYNC zone
	wait_vs:
	ld b, #0xF5
	in a, (c)
	rra
	jr nc, wait_vs // no, wait
	__endasm;
}
//******************************************************************************
// Función pause()
//
//******************************************************************************
void pause(unsigned char p){
	unsigned char i;
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
void set_colours()
{
	unsigned char x;
	for (x=0; x<17; x++)
	{
		cpc_SetColour(x,tintas[x]);
	}
}
//******************************************************************************
// Función letrasColorAzul()
//
//******************************************************************************
void letrasColorAzul(){
	cpc_SetInkGphStr(0,0);
	cpc_SetInkGphStr(1,42);
	cpc_SetInkGphStr(2,34);
	cpc_SetInkGphStr(3,42);
	pause(2);
}
//******************************************************************************
// Función letrasColorRojo()
//
//******************************************************************************
void letrasColorRojo(){
	cpc_SetInkGphStr(0,0);
	cpc_SetInkGphStr(1,40);
	cpc_SetInkGphStr(2,136);
	cpc_SetInkGphStr(3,40);
	pause(2);
}

//******************************************************************************
// Función: menu()
// Pinta el menú y escoge la opción pulsada
//******************************************************************************
char menu() {
	char choice=-1;

	letrasColorRojo();
	cpc_PrintGphStrXY("SPACE;INVASORES",20, 1*16);
	letrasColorAzul();
	cpc_PrintGphStrXY("1;JUGAR",    30, 4*16);
	cpc_PrintGphStrXY("2;REDEFINIR;TECLAS",    30, 6*16);
	cpc_PrintGphStrXY("ESC;SALIR",  30, 7*16);

	cpc_PrintGphStrXY("C;2015;GLASNOST;CORP", 20, 10*16);
	letrasColorRojo();
	cpc_PrintGphStrXY("JOHN;LOBO", 31, 11*16);

	while (choice==-1) {
		cpc_ScanKeyboard();

		if (cpc_TestKey(KEY_ME1)==1)
			choice=STATE_GAME;
		if (cpc_TestKey(KEY_ME2)==1)   
			choice=STATE_REDEFINE;
		if (cpc_TestKey(KEY_ESC)==1)   
			choice=STATE_EXIT;
	}

	while (cpc_AnyKeyPressed());
	
	return choice; 
}

//******************************************************************************
// Función: 
//
//******************************************************************************
char levelUp()
{
	letrasColorAzul();
	sprintf(aux_txt,";;;PUNTUACION:;%05d;;;",score);
	cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	cpc_PrintGphStrXY2X(aux_txt,8*2,13*8);
	cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	while (!cpc_AnyKeyPressed());
	while (cpc_AnyKeyPressed());
	nivel++;
	sprintf(aux_txt,";;SIGUIENTE;NIVEL;:;%02d;",nivel);
	cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	cpc_PrintGphStrXY2X(aux_txt,8*2,13*8);
	cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	while (!cpc_AnyKeyPressed());
	while (cpc_AnyKeyPressed());
	cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	cpc_PrintGphStrXY2X(";;;;;;;PREPARADO;;;;;;;",8*2,13*8);
	cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	pause(6);
	while (!cpc_AnyKeyPressed());
	while (cpc_AnyKeyPressed());
	
	return STATE_GAME; 
}
//******************************************************************************
// Función: 
//
//******************************************************************************
char protaDead()
{
	letrasColorAzul();
	sprintf(aux_txt,";;;PUNTUACION:;%05d;;;",score);
	cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	cpc_PrintGphStrXY2X(aux_txt,8*2,13*8);
	cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	while (!cpc_AnyKeyPressed());
	while (cpc_AnyKeyPressed());
	sprintf(aux_txt,";;;;;;;;;VIDAS;:;%02d;",prota.vidas);
	cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	cpc_PrintGphStrXY2X(aux_txt,8*2,13*8);
	cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	while (!cpc_AnyKeyPressed());
	while (cpc_AnyKeyPressed());
	if (prota.vidas){
		sprintf(aux_txt,";;;NIVEL;ACTUAL;:;%02d;",nivel);
		cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
		cpc_PrintGphStrXY2X(aux_txt,8*2,13*8);
		cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
		while (!cpc_AnyKeyPressed());
		while (cpc_AnyKeyPressed());
		cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
		cpc_PrintGphStrXY2X(";;;;;;;PREPARADO;;;;;;;",8*2,13*8);
		cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
		pause(6);
		while (!cpc_AnyKeyPressed());
		while (cpc_AnyKeyPressed());
		return STATE_GAME;
	} else 
	return STATE_LOSE; 
}
//******************************************************************************
// Función: 
//
//******************************************************************************
char win()
{
	letrasColorAzul();
	sprintf(aux_txt,"PUNTUACION;FINAL:;%05d",score);
	cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,13*8);
	cpc_PrintGphStrXY2X(aux_txt,8*2,14*8);
	cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	while (!cpc_AnyKeyPressed());
	while (cpc_AnyKeyPressed());
	cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,13*8);
	cpc_PrintGphStrXY2X(";;;;;;;GAME;OVER;;;;;;;",8*2,14*8);
	cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,13*8);
	pause(6);

	while (!cpc_AnyKeyPressed());
	while (cpc_AnyKeyPressed());
	
	return STATE_MENU; 
}

//******************************************************************************
// Función: 
//
//******************************************************************************
char gameOver()
{
	letrasColorAzul();
	sprintf(aux_txt,"PUNTUACION;FINAL:;%05d",score);
	cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	cpc_PrintGphStrXY2X(aux_txt,8*2,13*8);
	cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	while (cpc_AnyKeyPressed()==0);
	cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,11*8);
	cpc_PrintGphStrXY2X(";;;;;;;GAME;OVER;;;;;;;",8*2,13*8);
	cpc_PrintGphStrXY2X(";;;;;;;;;;;;;;;;;;;;;;;",8*2,15*8);
	pause(6);

	while (!cpc_AnyKeyPressed());
	while (cpc_AnyKeyPressed());
	
	return STATE_MENU; 
}

//******************************************************************************
// Función: 
//
//******************************************************************************
void inicializarTeclado()
{
	cpc_AssignKey (KEY_LEFT, 0x4404);		// O
	cpc_AssignKey (KEY_RIGHT, 0x4308);		// P
	cpc_AssignKey (KEY_UP, 0x4808);		    // Q
	cpc_AssignKey (KEY_DOWN, 0x4820);		// A
	cpc_AssignKey (KEY_FIRE, 0x4580);		// SPACE
	cpc_AssignKey (KEY_ESC, 0x4804);		// ESC
	cpc_AssignKey (KEY_ME1, 0x4801);		// 1
	cpc_AssignKey (KEY_ME2, 0x4802);		// 2
	cpc_AssignKey (KEY_ME3, 0x4702);		// 3
	cpc_AssignKey (KEY_ME4, 0x4701);		// 4
	cpc_AssignKey (KEY_HOSTILITY, 0x4510);		// H
}
//******************************************************************************
// Función: 
//
//******************************************************************************
unsigned char redefinirTeclas()
{
	
	cpc_SetMode(0);				//hardware call to set mode 1
	cpc_ClrScr();				//fills scr with ink 0

	letrasColorAzul();

	cpc_PrintGphStrXY("PULSA;PARA",12*2,15*8);
	letrasColorRojo();
	
	cpc_PrintGphStrXY("IZQUIERDA",12*2,17*8);
	cpc_RedefineKey(KEY_LEFT);
	cpc_WyzStartEffect(2,1);	//(Channel, SFX #)
	pause(6);
	cpc_PrintGphStrXY("DERECHA;;",12*2,17*8);
	cpc_RedefineKey(KEY_RIGHT);
	cpc_WyzStartEffect(2,1);	//(Channel, SFX #)
	pause(6);
	cpc_PrintGphStrXY("ARRIBA;;;",12*2,17*8);
	cpc_RedefineKey(KEY_UP);
	cpc_WyzStartEffect(2,1);	//(Channel, SFX #)
	pause(6);
	cpc_PrintGphStrXY("ABAJO;;;;",12*2,17*8);
	cpc_RedefineKey(KEY_DOWN);
	cpc_WyzStartEffect(2,1);	//(Channel, SFX #)
	pause(6);
	cpc_PrintGphStrXY("DISPARO;;;",12*2,17*8);
	cpc_RedefineKey(KEY_FIRE);
	cpc_WyzStartEffect(2,1);	//(Channel, SFX #)
	pause(6);
	
	return STATE_MENU;
}
//******************************************************************************
// Función: 
//
//******************************************************************************
void Inicializacion() {
	
	cpc_DisableFirmware();
	
	set_colours();
	cpc_SetMode(0);				//hardware call to set mode 0
	cpc_ClrScr();				//fills scr with ink 0
	
	inicializarTeclado();
	

	if (SONIDO_ACTIVADO){	
		cpc_WyzInitPlayer(SOUND_TABLE_0, RULE_TABLE_0, EFFECT_TABLE, SONG_TABLE_0);
		cpc_WyzLoadSong(0);
		cpc_WyzSetPlayerOn();
	}

	state = STATE_MENU;

}

//******************************************************************************
// Función game()
// Bucle principal de juego
//******************************************************************************
unsigned char game()
{
	timerOn();
	
	if (SONIDO_ACTIVADO){	
		cpc_WyzInitPlayer(SOUND_TABLE_0, RULE_TABLE_0, EFFECT_TABLE, SONG_TABLE_0);
		cpc_WyzSetPlayerOn();
	}
	cpc_ClrScr();				//fills scr with ink 0
	
	inicializarNivel();
	
	while(1)
	{

		//Espera al barrido
		//scr_waitVSYNC();
		
		//Mostrar explosiones
		if ((explosiones_activas>0)&&((getTime()-explosiones_lastUpdated)>VELOCIDAD_EXPLOSIONES)){
			actualizarExplosiones();
			animarExplosiones();
			actualizarExplosiones();
			explosiones_lastUpdated=getTime();
		}
		//mover al protagonista
		if ((getTime()-prota.lastmoved)>prota.speed){
			prota.lastmoved=getTime();
			moverProta();	//mover al prota
			borrarProta();	//borro al prota
			pintarProta();	//Pinto al protagonista
		}
		//explosiones del protagonista
		if ((explosion_prota_activada)&&((getTime()-explosion_prota_lastUpdated)>VELOCIDAD_EXPLOSION_PROTA)){
			animarExplosionProta();
			actualizarExplosionProta();
			explosion_prota_lastUpdated=getTime();
		}
		
		//addones
		if (addones_activos){
			moverAddones();
			borrarAddones();
			pintarAddones();
		}
		
		//disparos
		moverDisparos();  		//Mover disparos
		borrarDisparos();		//Borro disparos
		pintarDisparos();		//Pinto Disparos
		
		//malos
		moverMalos();		//Muevo los malos
		borrarMalos();		//Borro los malos
		pintarMalos();		//Pinto los malos
		
		//disparos malos
		moverDisparosMalos();	//mover disparos
		borrarDisparosMalos();	//borro disparos
		pintarDisparosMalos();	//Pinto Disparos
		
		//animaciones
		if (!prota.dead)
		motorProta();
		
		//Pinto las estrellas
		if ((ESTRELLAS_ACTIVADAS) && (estrellasMovidas)){
			pintarEstrellas();
			estrellasMovidas=0;
		}
		
		//pinta puntuaciones
		if (cambio_score){
			cambio_score=0;
			sprintf(aux_txt,"%05d",score);
			cpc_PrintGphStr(aux_txt,0xc050);
		}
		
		if ((prota.dead) && (!explosiones_activas) && (!disparos_activos) && (!disparos_malos_activos) && (!explosion_prota_activada)){
			state = STATE_DEAD;
			break;
		}

		if (cpc_TestKey(KEY_ESC)==1){			// ESC
			state = STATE_MENU;
			break;
		}
		

		// Hostilidad
		if ((DEBUG) && (cpc_TestKey(KEY_HOSTILITY)==1)){			
			hostilidad=!hostilidad;
		}
		
		
		if ((malos_activos==0) && (explosiones_activas==0) && (!disparos_activos) && (!disparos_malos_activos)){
			state = STATE_LEVELUP;
			break;
		}
		
	}
	
	if (SONIDO_ACTIVADO) cpc_WyzSetPlayerOff();
	timerOff();
	return state;
}

//******************************************************************************
// Función main()
// Bucle principal del Juego
//******************************************************************************
int main() {
	Inicializacion();

	while (state != STATE_EXIT) {
		switch(state) {
		case STATE_MENU:
			state = menu();
			break;
			
		case STATE_REDEFINE:
			state = redefinirTeclas();
			break;

		case STATE_GAME:
			nivel=1;
			prota.vidas=3;
			prota.escudo=0;
			prota.max_disparos=2;
			//Inicializo putuacion
			cambio_score=0;
			score=0;
			//bucle de juego y subida de nivel
			while ((state!=STATE_LOSE) && (state!=STATE_WIN) && (state!=STATE_MENU)) {
				
				if (SONIDO_ACTIVADO) cpc_WyzSetPlayerOff();
				state = game();
				if (SONIDO_ACTIVADO){	
					cpc_WyzInitPlayer(SOUND_TABLE_0, RULE_TABLE_0, EFFECT_TABLE, SONG_TABLE_0);
					cpc_WyzLoadSong(0);
					cpc_WyzSetPlayerOn();
				}
				if (state==STATE_LEVELUP)
				state=levelUp();
				if (state==STATE_DEAD){
					prota.vidas--;
					state=protaDead();
				}
			}
			break;

		case STATE_WIN:
			state = win();
			break;
			
		case STATE_LOSE:
			state = gameOver();
			break;
			
		default:
			state = STATE_EXIT;
			break;
		}
	}
	if (SONIDO_ACTIVADO) cpc_WyzSetPlayerOff();

	return 0;  
}