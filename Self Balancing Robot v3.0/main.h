#define ass(x) ((x) > 0 ? (x) : -(x)) 
#define constrain(amt,low,high) ((amt)<(low)?(low):((amt)>(high)?(high):(amt)))

long map(long x, long in_min, long in_max, long out_min, long out_max){
  return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}

#define IN1 RB2
#define IN2 RB3
#define IN3 RB4
#define IN4 RB5

#define   GUARD_GAIN   20.0
const float RADtoDEG = 180.0/3.141592;
float alpha =0.85;					//Costante filtro complementare

unsigned long int millis;			//Conta fino a 49 giorni
unsigned long int sensMillis;		//previous millis del sensore
unsigned long int pidMillis;		//previous millis del pid
unsigned long int loopMillis;

unsigned char i=0; 					//Indice generico
unsigned char j=0;					//indice ricezione bluetooth (PROTETTO)

unsigned char data[20];				//Registro ricezione BLUETOOTH
unsigned char vPin[3];				//PIN VIRTUALI BLUETOOTH


float accX = 0;
float gyroY = 0;
float offsetAngle;
float currentAngle;


float errore = 0;
int PID;
float K = 4.9;
float kP = 2.3;
float kI = 1.7;
float kD = 5.5;

