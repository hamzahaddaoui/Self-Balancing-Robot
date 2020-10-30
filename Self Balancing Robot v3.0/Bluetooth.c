void bluetoothSetup(){	
	BRG16=0;				// Valore baud rate a 8 bit (ignora SPBRGH)
	BRGH=0;					// High speed off
	SPBRG=51;				// bd=9600
	SPEN = 1;
	TXSTA=0b00000010;       // 8-bit,asicrono,high speed,TSR vuoto
	RCSTA=0b10010000;			
	TXEN=1;
	RCIE=1;
}


void bluetoothTX_data(float data){
	unsigned char lung;
	unsigned char stringa[15];
	sprintf(stringa, "%4.2f\n", data);
	lung = strlen(stringa);
	for(i=0; i<lung; i++){
		TXREG=stringa[i];   	// invio dati
  	    while (!TXIF);
  	    DelayMs(5);
	}
}

void bluetoothTX_string(unsigned char stringa[]){
	unsigned char lung;
	lung = strlen(stringa);
	for(i=0; i<lung; i++){
		TXREG=stringa[i];   	// invio dati
  	    while (!TXIF);
  	    NOP();
  	    NOP();
  	    NOP();
	}
}
