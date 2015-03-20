
#ifndef  __cpcrslib2_h__
#define __cpcrslib2_h__

void						cpc_EnableFirmware();
void						cpc_DisableFirmware();

void 						cpc_SetMode( char color);
void 						cpc_SetColour(unsigned char num,  char color);
void  						cpc_SetInk(unsigned char num,  unsigned char color);
unsigned char 				cpc_Random(void);

void 						cpc_ClrScr(void);

void 						cpc_PutSprite(char *sprite, int posicion);


void     					cpc_RRI(unsigned int pos, unsigned char w, unsigned char h);
void  		   				cpc_RLI(unsigned int pos, unsigned char w, unsigned char h);


int 						cpc_AnyKeyPressed(void);
void 						cpc_ScanKeyboard(void);
char 						cpc_TestKeyF(char number);
void						cpc_DeleteKeys(void);
void 						cpc_AssignKey(unsigned char tecla, int valor);
unsigned char 				cpc_TestKey(unsigned char tecla);
void 						cpc_RedefineKey(unsigned char tecla);

void 						cpc_PrintStr(char *text);

void						cpc_PrintGphStr(char *text, int destino);
void						cpc_PrintGphStrM1(char *text, int destino);
void						cpc_PrintGphStr2X(char *text, int destino);
void						cpc_PrintGphStrM12X(char *text, int destino);

void						cpc_PrintGphStrXY(char *text, char a, char b);
void						cpc_PrintGphStrXYM1(char *text, char a, char b);
void						cpc_PrintGphStrXY2X(char *text, char a, char b);
void						cpc_PrintGphStrXYM12X(char *text, char a, char b);
void						cpc_SetInkGphStr(char a, char b);
void						cpc_SetInkGphStrM1(char a, char b);

void     					cpc_PrintGphStrStd(char color, char *cadena, int destino);
void  		   				cpc_PrintGphStrStdXY(char color, char *cadena, char x, char y);

#endif /* __cpcrslib2_h__ */
