//DISPARO
typedef	struct {		// minimun sprite structure
	char *sp0;		//2 bytes 	01
	unsigned char cx;
	unsigned char cy;	//2 bytes 89 	current coordinates
	unsigned char ox;
	unsigned char oy;	//2 bytes 1011  old coordinates
	unsigned char activo;
	unsigned char moved;
	unsigned char speed;
	unsigned char nuevo;
	unsigned char dead;
	long lastmoved;
//	unsigned char objetivox;
} TIPO_DISPARO;
//NAVE
typedef	struct {		// minimun sprite structure
	char *sp0;		//2 bytes 	01
	unsigned char cx;
	unsigned char cy;	//2 bytes 89 	current coordinates
	unsigned char ox;
	unsigned char oy;	//2 bytes 1011  old coordinates
	unsigned char h;
	unsigned char w;
	unsigned char dir; 	// Dirección del movimiento (0 - Derecha; 1 - Abajo; 2 - Izquierda; 3 - Arriba)
	unsigned char activo;
	unsigned char move; //tipo de movimiento (0 - izda-dcha)
	unsigned char moved;
	unsigned char speed;
	unsigned char nuevo;
	unsigned char dead;
	unsigned char vidas;
	long lastmoved;
	long lastShot;
	char reloadSpeed;
	unsigned char escudo;
	unsigned char max_disparos;
	unsigned char motor;
} TIPO_NAVE;
//MALO
typedef	struct {		// minimun sprite structure
	char *sp0;		//2 bytes 	01
	unsigned char cx;
	unsigned char cy;	//2 bytes 89 	current coordinates
	unsigned char ox;
	unsigned char oy;	//2 bytes 1011  old coordinates
	unsigned char h;
	unsigned char w;
	unsigned char type;
	unsigned char movement; 	// Tipo de movimiento (0 - Formación; 1 - Ataque; 2 - Taxi)
	unsigned char idMovement;
	unsigned char homeX;
	unsigned char homeY;
	unsigned char activo;
	unsigned char moved;
	unsigned char speed;
	unsigned char formSpeed;
	unsigned char nuevo;
	unsigned char dead;
	unsigned char vidas;
	unsigned char agresividad;
	unsigned char state;
	unsigned char step;
	unsigned char destx;
	unsigned char desty;
	long lastmoved;
} TIPO_MALO;
//EXPLOSION
typedef struct {
	unsigned char tipo;
	unsigned char fase;
	unsigned char activo;
	unsigned char cx;
	unsigned char cy;	//2 bytes 89 	current coordinates
	unsigned char ox;
	unsigned char oy;	//2 bytes 1011  old coordinates
	unsigned char h;
	unsigned char w;
	int memoriaPantalla;
	unsigned char speed;
	long lastmoved;
} TIPO_EXPLOSION;
//EXPLOSION
typedef struct {
	unsigned char cx;
	unsigned char cy;	
	unsigned char ox;
	unsigned char oy;
	int memoriaPantalla;
} TIPO_EXPLOSION_PROTA;
//ESTRELLA
typedef struct
{
	unsigned char nX;
	unsigned char nY;
	unsigned char nStarType;
	int *pLineAddress;
	unsigned char columnOffset;
	int *pCurrentAddress;
} TIPO_ESTRELLA;
//COORDENADA
typedef struct{
	unsigned char x;
	unsigned char y;
} TIPO_COORDENADA;
//ATAQUE
typedef struct{
	unsigned char activo;
	unsigned char idMalo;
	unsigned char step;
	unsigned char maxStep;
	char *trayectoria;
} TIPO_ATAQUE;
//TRAYECTORIAS DE ATAQUE
extern char trayectoria1[20]={0,2,4,5,6,6,6,5,4,2,0,254,252,251,250,250,250,251,252,254};
//ADDONS
typedef struct{
	unsigned char activo;
	unsigned char tipo;  //Tipos de addones : 0:escudo, 1:rafaga, 2:freeze,  3:vida Extra
	unsigned char x;
	unsigned char y;
	unsigned char nuevo;
	unsigned char dead;
	unsigned char moved;
	unsigned char speed;
	long lastmoved;
} TIPO_ADDON;
//DIRECCIONES DE PANTALLA
//extern const int direccionLinea[200] = {
//	0xC000,0xC800,0xD000,0xD800,0xE000,0xE800,0xF000,0xF800,
//	0xC050,0xC850,0xD050,0xD850,0xE050,0xE850,0xF050,0xF850,
//	0xC0A0,0xC8A0,0xD0A0,0xD8A0,0xE0A0,0xE8A0,0xF0A0,0xF8A0,
//	0xC0F0,0xC8F0,0xD0F0,0xD8F0,0xE0F0,0xE8F0,0xF0F0,0xF8F0,
//	0xC140,0xC940,0xD140,0xD940,0xE140,0xE940,0xF140,0xF940,
//	0xC190,0xC990,0xD190,0xD990,0xE190,0xE990,0xF190,0xF990,
//	0xC1E0,0xC9E0,0xD1E0,0xD9E0,0xE1E0,0xE9E0,0xF1E0,0xF9E0,
//	0xC230,0xCA30,0xD230,0xDA30,0xE230,0xEA30,0xF230,0xFA30,
//	0xC280,0xCA80,0xD280,0xDA80,0xE280,0xEA80,0xF280,0xFA80,
//	0xC2D0,0xCAD0,0xD2D0,0xDAD0,0xE2D0,0xEAD0,0xF2D0,0xFAD0,
//	0xC320,0xCB20,0xD320,0xDB20,0xE320,0xEB20,0xF320,0xFB20,
//	0xC370,0xCB70,0xD370,0xDB70,0xE370,0xEB70,0xF370,0xFB70,
//	0xC3C0,0xCBC0,0xD3C0,0xDBC0,0xE3C0,0xEBC0,0xF3C0,0xFBC0,
//	0xC410,0xCC10,0xD410,0xDC10,0xE410,0xEC10,0xF410,0xFC10,
//	0xC460,0xCC60,0xD460,0xDC60,0xE460,0xEC60,0xF460,0xFC60,
//	0xC4B0,0xCCB0,0xD4B0,0xDCB0,0xE4B0,0xECB0,0xF4B0,0xFCB0,
//	0xC500,0xCD00,0xD500,0xDD00,0xE500,0xED00,0xF500,0xFD00,
//	0xC550,0xCD50,0xD550,0xDD50,0xE550,0xED50,0xF550,0xFD50,
//	0xC5A0,0xCDA0,0xD5A0,0xDDA0,0xE5A0,0xEDA0,0xF5A0,0xFDA0,
//	0xC5F0,0xCDF0,0xD5F0,0xDDF0,0xE5F0,0xEDF0,0xF5F0,0xFDF0,
//	0xC640,0xCE40,0xD640,0xDE40,0xE640,0xEE40,0xF640,0xFE40,
//	0xC690,0xCE90,0xD690,0xDE90,0xE690,0xEE90,0xF690,0xFE90,
//	0xC6E0,0xCEE0,0xD6E0,0xDEE0,0xE6E0,0xEEE0,0xF6E0,0xFEE0,
//	0xC730,0xCF30,0xD730,0xDF30,0xE730,0xEF30,0xF730,0xFF30,
//	0xC780,0xCF80,0xD780,0xDF80,0xE780,0xEF80,0xF780,0xFF80,
//};