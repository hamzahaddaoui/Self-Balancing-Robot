#define I2C_SCL	TRISCbits.TRISC3
#define I2C_SDA	TRISCbits.TRISC4

/*******************************************************************
Macro       : StopI2C()
Remarks     : This macro initiates stop condition and waits till the stop signal
		sequence is terminated.This macro is applicable only to master
*******************************************************************/
#define StopI2C()  SSPCON2bits.PEN=1;while(SSPCON2bits.PEN)

/*******************************************************************
Macro       : StartI2C()
Remarks     : This macro initiates start condition and waits till the start signal
		sequence is terminated. This macro is applicable only to master
*******************************************************************/
#define StartI2C()  SSPCON2bits.SEN=1;while(SSPCON2bits.SEN)

/*******************************************************************
Macro       : RestartI2C()
Remarks     : This macro initiates Restart condition and waits till the Restart signal
		sequence is terminated. This macro is applicable only to master
*******************************************************************/
#define RestartI2C()  SSPCON2bits.RSEN=1;while(SSPCON2bits.RSEN)

/*******************************************************************
Macro       : NotAckI2C()
Remarks     : This macro initiates negetive acknowledgement condition and 
		waits till the acknowledgement sequence is terminated.
		This macro is applicable only to master
*******************************************************************/
#define NotAckI2C()     SSPCON2bits.ACKDT=1;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN)

/*******************************************************************
Macro       : AckI2C()
Remarks     : This macro initiates positive acknowledgement condition and 
		waits till the acknowledgement sequence is terminated.
		This macro is applicable only to master
*******************************************************************/
#define AckI2C()        SSPCON2bits.ACKDT=0;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN)

/************************************************************************
Macro :  DataRdyI2C() 
Remarks            : This Macro determines if there is any byte to read from
			SSPxBUF register.
*************************************************************************/
#define DataRdyI2C()    (SSPSTATbits.BF)

void IdleI2C( void )
{
  while ( ( SSPCON2 & 0x1F ) || ( SSPSTATbits.R_W ) )
     continue;
}

void CloseI2C( void )
{
  SSPCON1 &= 0xDF;                // disable synchronous serial port
}

void OpenI2C_StSpeed()            // clock 400KHz
{
	SSPCON1 = 0b00101000;			
    SSPSTAT = 0b00000000;
    SSPADD = 19;
    SSPCON2 = 0;
}

unsigned char ReadI2C( void )
{
if( ((SSPCON1&0x0F)==0x08) || ((SSPCON1&0x0F)==0x0B) )	//master mode only
  SSPCON2bits.RCEN = 1;           // enable master for 1 byte reception
  while ( !SSPSTATbits.BF );      // wait until byte received  
  return ( SSPBUF );              // return with read byte 
}

unsigned char WriteI2C( unsigned char data_out )
{
  SSPBUF = data_out;           // write single byte to SSPBUF
  if ( SSPCON1bits.WCOL )      // test if write collision occurred
   return ( -1 );              // if WCOL bit is set return negative #
  else
  {
	if( ((SSPCON1&0x0F)==0x08) || ((SSPCON1&0x0F)==0x0B) )	//master mode only
	{ 
	    while( SSPSTATbits.BF );   // wait until write cycle is complete   
	    IdleI2C();                 // ensure module is idle
	    if ( SSPCON2bits.ACKSTAT ) // test for ACK condition received
	    	 return ( -2 );			// return NACK
		else return ( 0 );              //return ACK
	}
	
  }
}

