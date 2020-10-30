void PWMSetup(){				//PWM su un solo canale (rc2)
	CCP1CON=0b00001111;			//pwm mode
	T2CON=	0b00000100;			//prescaler = 16, postscaler = 1
	PR2=	255;				//frequenza PWM -> 31250Hz ((255+1)*0.125us)
}

void PIDupdate(){
	static float precErrore = 0;
	static float sumErrore = 0;
	
	float Pterm, Iterm, Dterm;
	float dt;
	
	errore = offsetAngle - currentAngle;
	
	Pterm = (float) kP * errore;
	
	sumErrore += errore;
	Iterm = (float) kI * constrain(sumErrore, -GUARD_GAIN, GUARD_GAIN);
	
	//dt = (float) (millis - pidMillis) / 1000;
	//pidMillis = millis;
	Dterm = (float) kD * (errore - precErrore);
	precErrore = errore;
	
	PID = (int) constrain(K*(Pterm + Iterm + Dterm), -255, 255);	
}

void motorsUpdate(int torque){
	if (torque > 0){
		IN1 = 0;
		IN2 = 1;
		IN3 = 0;
		IN4 = 1;
	}
	else if (torque < 0){
		IN1 = 1;
		IN2 = 0;
		IN3 = 1;
		IN4 = 0;
		torque = ass(torque);
	}
	else{
		IN1 = 1;
		IN2 = 1;
		IN3 = 1;
		IN4 = 1;
	}
	CCPR1L = (unsigned char) map(torque,0,255,30,255);
}