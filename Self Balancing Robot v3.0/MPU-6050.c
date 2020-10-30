#define MPU_ADRESS		0xD0

#define SMPRT_DIV 		0x19

#define CONFIG			0x1A

#define GYRO_CONFIG		0x1B //enableX, enableY, enableZ, F-S(2bit), reserved(3bit) - (250,500,1000,2000)
							  
#define ACCEL_CONFIG	0x1C //EnableX, enableY, enableZ, F-S(2bit), reserved(3bit) - (2,4,8,16)
							 
#define PWR_MGMT_1		0x6B  //Device Reset, Sleep, Cycle, RESERVED(1bit), Temp_dis, CLKSEL(3bit)

//------------ACCELEROMETER MEASURAMENTS------------------------------------------------
#define ACCEL_XOUT_H	0x3B  //2's complement value (first 8bits [15:8])
#define ACCEL_XOUT_L	0x3C  //2's complement value (last 8bits [7:0])

#define ACCEL_YOUT_H	0x3D  //2's complement value (first 8bits [15:8])
#define ACCEL_YOUT_L	0x3E  //2's complement value (last 8bits [7:0])

#define ACCEL_ZOUT_H	0x3F  //2's complement value (first 8bits [15:8])
#define ACCEL_ZOUT_L	0x40  //2's complement value (last 8bits [7:0])

//------------GYROSCOPE MEASURAMENTS----------------------------------------------------
#define GYRO_YOUT_H		0x45  //2's complement value (first 8bits [15:8])
#define GYRO_YOUT_L		0x46  //2's complement value (last 8bits [7:0])
//--------------------------------------------------------------------------------------


void sensorSetup(void);

signed int getGyroZ(void);
signed int getAccelX(void);
signed int getAccelY(void);
signed int getAccelZ(void);

void computeAngle(unsigned char mode);

void sensorSetup(void){//---------------------------------------------------------------ABILITA IL SENSORE A LEGGERE DATI
	IdleI2C();
	StartI2C();
	WriteI2C(MPU_ADRESS);
	WriteI2C(PWR_MGMT_1);
	WriteI2C(0b00001011);				//Sleep off, Tempsens off, clock gyroZ
	StopI2C();
	
	IdleI2C();
	StartI2C();
	WriteI2C(MPU_ADRESS);
	WriteI2C(CONFIG);
	WriteI2C(0b00000101);				//LPF = 10Hz bandwidth
	StopI2C();
	
	IdleI2C();
	StartI2C();
	WriteI2C(MPU_ADRESS);
	WriteI2C(SMPRT_DIV);
	WriteI2C(19);						//Sample rate = 50HZ
	StopI2C();
	
	IdleI2C();
	StartI2C();
	WriteI2C(MPU_ADRESS);
	WriteI2C(GYRO_CONFIG);
	WriteI2C(0x00);						//Sensibilità massima (+/- 250°/s)
	StopI2C();

	IdleI2C();
	StartI2C();
	WriteI2C(MPU_ADRESS);
	WriteI2C(ACCEL_CONFIG);
	WriteI2C(0x00);						//Sensibilità massima (+/- 2g)
	StopI2C();
}

//------------------------------------------------------------------------------------------------------------------
signed int getGyroY(void){//-----------------------------------------------------LEGGE IL VALORE Y DEL GIROSCOPIO					
	signed int dataH,dataL;
	signed int data;
	StartI2C();
	WriteI2C(MPU_ADRESS);
	WriteI2C(GYRO_YOUT_H);
	RestartI2C();
	WriteI2C(MPU_ADRESS+1);
	dataH=ReadI2C();
	NotAckI2C();
	StopI2C();

	StartI2C();
	WriteI2C(MPU_ADRESS);
	WriteI2C(GYRO_YOUT_L);
	RestartI2C();
	WriteI2C(MPU_ADRESS+1);
	dataL=ReadI2C();
	NotAckI2C();
	StopI2C();
	data=(dataH<<8)|dataL;
	return data;
}
//------------------------------------------------------------------------------------------------------------------
signed int getAccelX(void){//-----------------------------------------------------LEGGE IL VALORE X DELL'ACCELEROMETRO
	signed int dataH,dataL;
	signed int data;
	StartI2C();
	WriteI2C(MPU_ADRESS);
	WriteI2C(ACCEL_XOUT_H);
	RestartI2C();
	WriteI2C(MPU_ADRESS+1);
	dataH=ReadI2C();
	NotAckI2C();
	StopI2C();

	StartI2C();
	WriteI2C(MPU_ADRESS);
	WriteI2C(ACCEL_XOUT_L);
	RestartI2C();
	WriteI2C(MPU_ADRESS+1);
	dataL=ReadI2C();
	NotAckI2C();
	StopI2C();
	data=(dataH<<8)|dataL;
	return data;
}
//------------------------------------------------------------------------------------------------------------------
signed int getAccelY(void){//-----------------------------------------------------LEGGE IL VALORE Y DELL'ACCELEROMETRO
	signed int dataH,dataL;
	signed int data;
	StartI2C();
	WriteI2C(MPU_ADRESS);
	WriteI2C(ACCEL_YOUT_H);
	RestartI2C();
	WriteI2C(MPU_ADRESS+1);
	dataH=ReadI2C();
	NotAckI2C();
	StopI2C();

	StartI2C();
	WriteI2C(MPU_ADRESS);
	WriteI2C(ACCEL_YOUT_L);
	RestartI2C();
	WriteI2C(MPU_ADRESS+1);
	dataL=ReadI2C();
	NotAckI2C();
	StopI2C();
	data=(dataH<<8)|dataL;
	return data;
}
//------------------------------------------------------------------------------------------------------------------
signed int getAccelZ(void){//-----------------------------------------------------LEGGE IL VALORE Z DELL'ACCELEROMETRO
	signed int dataH,dataL;
	signed int data;
	StartI2C();
	WriteI2C(MPU_ADRESS);
	WriteI2C(ACCEL_ZOUT_H);
	RestartI2C();
	WriteI2C(MPU_ADRESS+1);
	dataH=ReadI2C();
	NotAckI2C();
	StopI2C();

	StartI2C();
	WriteI2C(MPU_ADRESS);
	WriteI2C(ACCEL_ZOUT_L);
	RestartI2C();
	WriteI2C(MPU_ADRESS+1);
	dataL=ReadI2C();
	NotAckI2C();
	StopI2C();
	data=(dataH<<8)|dataL;
	return data;
}

void computeAngle(unsigned char mode){
	signed int rawAccX, rawAccY, rawAccZ, rawGyroY;
	float angleSum;
	float dt;
	
	if (mode == 1){				//Calcolo offset
		offsetAngle = 0;
		for(i=0; i<100; i++){
			rawAccX = getAccelX();
			rawAccY = getAccelY();
			rawAccZ = getAccelZ();
			accX = (float) RADtoDEG * atan(rawAccX / sqrt(pow(rawAccY,2) + pow(rawAccZ,2)));
			if (i==0){
				gyroY = accX;
				offsetAngle = accX;
				angleSum = (float) accX;	
			}
			else{
				rawGyroY = getGyroY();
				gyroY = offsetAngle + (rawGyroY * 0.001 / 131.0);
				offsetAngle = (float) alpha * gyroY + (1-alpha) * accX;
				angleSum += offsetAngle;
			}	
			DelayMs(1);
		}
		offsetAngle = angleSum / 100;
		return;	
	}
	
	rawGyroY = getGyroY();			//Divido per la sensibilità del giroscopio
	
	rawAccX = getAccelX();			//Divido tutti i dati di accelerazione per la sensibilità
	rawAccY = getAccelY();
	rawAccZ = getAccelZ();
	
	dt = (float) (millis - sensMillis)/1000.0;
	sensMillis = millis;
	gyroY = (float) currentAngle + (rawGyroY * dt /131.0);
	
	accX = (float) RADtoDEG * atan(rawAccX / sqrt(pow(rawAccY,2) + pow(rawAccZ,2)));
	currentAngle = (float) alpha * gyroY + (1-alpha) * accX;
}
