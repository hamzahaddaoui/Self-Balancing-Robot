#include <pic18f2580.h>
#include <xc.h>
#include <math.h>
#include <string.h>
#include <stdio.h>

#include "delay.c"
#include "main.h"
#include "i2c.c"
#include "MPU-6050.c"
#include "Bluetooth.c"
#include "PID&Motors.c"

#pragma config OSC=IRCIO7 
#pragma config WDT=OFF, PBADEN=OFF, MCLRE=ON, DEBUG=ON, LVP=OFF

void PICsetup(){
	OSCCON 	=0b01110000;			//Clock a frequenza 8MHz
	PLLEN	=1;						//Attivo il PLL x4 (la frequenza sale a 32MHz)
	TRISA	=0b11111110;			//RA0 - LED DI SEGNALAZIONE
	TRISB	=0b11000011;			//RB5-RB2 -> IN4,IN3,IN2,IN1 / RB1-RB0 -> ENCODERA, ENCODERB
	TRISC	=0b10111001;			//RB7-RB6 -> TX,RX / RC2-RC1 -> PWM2,PWM1
	T0CON	=0b10001000;			//16bit, ps = 1
	RA0 	=0;						//ATTIVO il LED - INIZIO FASE SETUP
	IN1 	=0;
	IN2 	=0;
	IN3 	=0;
	IN4 	=0;
	TMR0IE 	=1;	
}

bit BIT;

void main(){
	PICsetup();						//Inizializzazione PIC
	OpenI2C_StSpeed();				//Inizializzo I2C
	PWMSetup();						//Inizializzo modulo CCP
	
	for(i=0; i<4; i++) DelayMs(250);//Aspetto 1s per avviare il programma
	sensorSetup();					//Inizializzo il sensore
	
	computeAngle(1);				//calcola l'angolo di offset

	millis 	=0;
	TMR0 	=-8000;					//Per funzione millis
	GIE		=1;	
	
	while(1){
		computeAngle(0);
		PIDupdate();
		if (ass(offsetAngle - currentAngle) < 20) motorsUpdate(PID);
		else motorsUpdate(0);
		while(millis-loopMillis<20);
	}
}

interrupt my_ISR(){
	if(TMR0IE && TMR0IF){
		TMR0 =-8000;
		TMR0IF = 0;
		millis++;
		if (millis%100 == 0) RA0 = !RA0;
	}
}