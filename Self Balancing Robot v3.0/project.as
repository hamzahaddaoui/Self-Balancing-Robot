opt subtitle "Microchip Technology Omniscient Code Generator v1.38 (Free mode) build 201607010351"

opt pagewidth 120

	opt lm

	processor	18F2580
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF6SIDH equ 0D60h ;# 
# 183 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF6SIDL equ 0D61h ;# 
# 296 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF6EIDH equ 0D62h ;# 
# 428 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF6EIDL equ 0D63h ;# 
# 560 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF7SIDH equ 0D64h ;# 
# 692 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF7SIDL equ 0D65h ;# 
# 805 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF7EIDH equ 0D66h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF7EIDL equ 0D67h ;# 
# 1069 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF8SIDH equ 0D68h ;# 
# 1201 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF8SIDL equ 0D69h ;# 
# 1314 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1446 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1578 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF9SIDH equ 0D70h ;# 
# 1710 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF9SIDL equ 0D71h ;# 
# 1823 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF9EIDH equ 0D72h ;# 
# 1955 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF9EIDL equ 0D73h ;# 
# 2087 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF10SIDH equ 0D74h ;# 
# 2219 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF10SIDL equ 0D75h ;# 
# 2332 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF10EIDH equ 0D76h ;# 
# 2464 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF10EIDL equ 0D77h ;# 
# 2596 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF11SIDH equ 0D78h ;# 
# 2728 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF11SIDL equ 0D79h ;# 
# 2841 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2973 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF11EIDL equ 0D7Bh ;# 
# 3105 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF12SIDH equ 0D80h ;# 
# 3237 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF12SIDL equ 0D81h ;# 
# 3350 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF12EIDH equ 0D82h ;# 
# 3482 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF12EIDL equ 0D83h ;# 
# 3614 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF13SIDH equ 0D84h ;# 
# 3746 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF13SIDL equ 0D85h ;# 
# 3859 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF13EIDH equ 0D86h ;# 
# 3991 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF13EIDL equ 0D87h ;# 
# 4123 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF14SIDH equ 0D88h ;# 
# 4255 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF14SIDL equ 0D89h ;# 
# 4368 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF14EIDH equ 0D8Ah ;# 
# 4500 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF14EIDL equ 0D8Bh ;# 
# 4632 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF15SIDH equ 0D90h ;# 
# 4764 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF15SIDL equ 0D91h ;# 
# 4877 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF15EIDH equ 0D92h ;# 
# 5009 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF15EIDL equ 0D93h ;# 
# 5141 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXFCON0 equ 0DD4h ;# 
# 5202 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXFCON1 equ 0DD5h ;# 
# 5263 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
SDFLC equ 0DD8h ;# 
# 5338 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXFBCON0 equ 0DE0h ;# 
# 5407 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXFBCON1 equ 0DE1h ;# 
# 5476 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXFBCON2 equ 0DE2h ;# 
# 5545 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXFBCON3 equ 0DE3h ;# 
# 5614 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXFBCON4 equ 0DE4h ;# 
# 5683 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXFBCON5 equ 0DE5h ;# 
# 5752 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXFBCON6 equ 0DE6h ;# 
# 5821 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXFBCON7 equ 0DE7h ;# 
# 5890 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
MSEL0 equ 0DF0h ;# 
# 5951 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
MSEL1 equ 0DF1h ;# 
# 6012 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
MSEL2 equ 0DF2h ;# 
# 6073 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
MSEL3 equ 0DF3h ;# 
# 6134 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
BSEL0 equ 0DF8h ;# 
# 6184 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
BIE0 equ 0DFAh ;# 
# 6262 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXBIE equ 0DFCh ;# 
# 6321 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B0CON equ 0E20h ;# 
# 6633 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B0SIDH equ 0E21h ;# 
# 6765 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B0SIDL equ 0E22h ;# 
# 6892 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B0EIDH equ 0E23h ;# 
# 7024 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B0EIDL equ 0E24h ;# 
# 7156 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B0DLC equ 0E25h ;# 
# 7303 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B0D0 equ 0E26h ;# 
# 7364 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B0D1 equ 0E27h ;# 
# 7425 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B0D2 equ 0E28h ;# 
# 7486 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B0D3 equ 0E29h ;# 
# 7547 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B0D4 equ 0E2Ah ;# 
# 7608 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B0D5 equ 0E2Bh ;# 
# 7669 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B0D6 equ 0E2Ch ;# 
# 7730 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B0D7 equ 0E2Dh ;# 
# 7791 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7884 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7966 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B1CON equ 0E30h ;# 
# 8278 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B1SIDH equ 0E31h ;# 
# 8410 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B1SIDL equ 0E32h ;# 
# 8537 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B1EIDH equ 0E33h ;# 
# 8669 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B1EIDL equ 0E34h ;# 
# 8801 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B1DLC equ 0E35h ;# 
# 8948 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B1D0 equ 0E36h ;# 
# 9009 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B1D1 equ 0E37h ;# 
# 9070 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B1D2 equ 0E38h ;# 
# 9131 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B1D3 equ 0E39h ;# 
# 9192 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B1D4 equ 0E3Ah ;# 
# 9253 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B1D5 equ 0E3Bh ;# 
# 9314 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B1D6 equ 0E3Ch ;# 
# 9375 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B1D7 equ 0E3Dh ;# 
# 9436 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 9529 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 9611 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B2CON equ 0E40h ;# 
# 9923 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B2SIDH equ 0E41h ;# 
# 10055 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B2SIDL equ 0E42h ;# 
# 10191 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B2EIDH equ 0E43h ;# 
# 10323 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B2EIDL equ 0E44h ;# 
# 10455 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B2DLC equ 0E45h ;# 
# 10602 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B2D0 equ 0E46h ;# 
# 10663 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B2D1 equ 0E47h ;# 
# 10724 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B2D2 equ 0E48h ;# 
# 10785 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B2D3 equ 0E49h ;# 
# 10846 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B2D4 equ 0E4Ah ;# 
# 10907 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B2D5 equ 0E4Bh ;# 
# 10968 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B2D6 equ 0E4Ch ;# 
# 11029 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B2D7 equ 0E4Dh ;# 
# 11090 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 11183 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 11265 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B3CON equ 0E50h ;# 
# 11577 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B3SIDH equ 0E51h ;# 
# 11709 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B3SIDL equ 0E52h ;# 
# 11845 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B3EIDH equ 0E53h ;# 
# 11977 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B3EIDL equ 0E54h ;# 
# 12109 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B3DLC equ 0E55h ;# 
# 12256 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B3D0 equ 0E56h ;# 
# 12317 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B3D1 equ 0E57h ;# 
# 12378 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B3D2 equ 0E58h ;# 
# 12439 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B3D3 equ 0E59h ;# 
# 12500 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B3D4 equ 0E5Ah ;# 
# 12561 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B3D5 equ 0E5Bh ;# 
# 12622 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B3D6 equ 0E5Ch ;# 
# 12683 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B3D7 equ 0E5Dh ;# 
# 12744 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 12837 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 12919 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B4CON equ 0E60h ;# 
# 13231 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B4SIDH equ 0E61h ;# 
# 13363 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B4SIDL equ 0E62h ;# 
# 13499 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B4EIDH equ 0E63h ;# 
# 13631 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B4EIDL equ 0E64h ;# 
# 13763 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B4DLC equ 0E65h ;# 
# 13910 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B4D0 equ 0E66h ;# 
# 13971 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B4D1 equ 0E67h ;# 
# 14032 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B4D2 equ 0E68h ;# 
# 14093 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B4D3 equ 0E69h ;# 
# 14154 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B4D4 equ 0E6Ah ;# 
# 14215 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B4D5 equ 0E6Bh ;# 
# 14276 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B4D6 equ 0E6Ch ;# 
# 14337 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B4D7 equ 0E6Dh ;# 
# 14407 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 14500 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 14582 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B5CON equ 0E70h ;# 
# 14894 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B5SIDH equ 0E71h ;# 
# 15026 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B5SIDL equ 0E72h ;# 
# 15171 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B5EIDH equ 0E73h ;# 
# 15303 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B5EIDL equ 0E74h ;# 
# 15435 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B5DLC equ 0E75h ;# 
# 15576 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B5D0 equ 0E76h ;# 
# 15646 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B5D1 equ 0E77h ;# 
# 15707 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B5D2 equ 0E78h ;# 
# 15777 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B5D3 equ 0E79h ;# 
# 15838 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B5D4 equ 0E7Ah ;# 
# 15899 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B5D5 equ 0E7Bh ;# 
# 15960 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B5D6 equ 0E7Ch ;# 
# 16021 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
B5D7 equ 0E7Dh ;# 
# 16082 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 16175 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 16257 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF0SIDH equ 0F00h ;# 
# 16389 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF0SIDL equ 0F01h ;# 
# 16502 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF0EIDH equ 0F02h ;# 
# 16634 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF0EIDL equ 0F03h ;# 
# 16766 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF1SIDH equ 0F04h ;# 
# 16898 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF1SIDL equ 0F05h ;# 
# 17011 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF1EIDH equ 0F06h ;# 
# 17143 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF1EIDL equ 0F07h ;# 
# 17275 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF2SIDH equ 0F08h ;# 
# 17407 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF2SIDL equ 0F09h ;# 
# 17520 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF2EIDH equ 0F0Ah ;# 
# 17652 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF2EIDL equ 0F0Bh ;# 
# 17784 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF3SIDH equ 0F0Ch ;# 
# 17916 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF3SIDL equ 0F0Dh ;# 
# 18029 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF3EIDH equ 0F0Eh ;# 
# 18161 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF3EIDL equ 0F0Fh ;# 
# 18293 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF4SIDH equ 0F10h ;# 
# 18425 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF4SIDL equ 0F11h ;# 
# 18538 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF4EIDH equ 0F12h ;# 
# 18670 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF4EIDL equ 0F13h ;# 
# 18802 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF5SIDH equ 0F14h ;# 
# 18934 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF5SIDL equ 0F15h ;# 
# 19047 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF5EIDH equ 0F16h ;# 
# 19179 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXF5EIDL equ 0F17h ;# 
# 19311 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXM0SIDH equ 0F18h ;# 
# 19443 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXM0SIDL equ 0F19h ;# 
# 19547 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXM0EIDH equ 0F1Ah ;# 
# 19679 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXM0EIDL equ 0F1Bh ;# 
# 19811 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXM1SIDH equ 0F1Ch ;# 
# 19943 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXM1SIDL equ 0F1Dh ;# 
# 20047 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXM1EIDH equ 0F1Eh ;# 
# 20179 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXM1EIDL equ 0F1Fh ;# 
# 20311 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB2CON equ 0F20h ;# 
# 20438 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB2SIDH equ 0F21h ;# 
# 20570 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB2SIDL equ 0F22h ;# 
# 20674 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB2EIDH equ 0F23h ;# 
# 20806 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB2EIDL equ 0F24h ;# 
# 20938 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB2DLC equ 0F25h ;# 
# 21026 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB2D0 equ 0F26h ;# 
# 21087 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB2D1 equ 0F27h ;# 
# 21148 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB2D2 equ 0F28h ;# 
# 21209 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB2D3 equ 0F29h ;# 
# 21270 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB2D4 equ 0F2Ah ;# 
# 21331 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB2D5 equ 0F2Bh ;# 
# 21392 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB2D6 equ 0F2Ch ;# 
# 21453 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB2D7 equ 0F2Dh ;# 
# 21514 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 21607 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 21689 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB1CON equ 0F30h ;# 
# 21816 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB1SIDH equ 0F31h ;# 
# 21948 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB1SIDL equ 0F32h ;# 
# 22052 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB1EIDH equ 0F33h ;# 
# 22184 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB1EIDL equ 0F34h ;# 
# 22316 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB1DLC equ 0F35h ;# 
# 22404 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB1D0 equ 0F36h ;# 
# 22465 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB1D1 equ 0F37h ;# 
# 22526 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB1D2 equ 0F38h ;# 
# 22587 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB1D3 equ 0F39h ;# 
# 22648 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB1D4 equ 0F3Ah ;# 
# 22709 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB1D5 equ 0F3Bh ;# 
# 22770 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB1D6 equ 0F3Ch ;# 
# 22831 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB1D7 equ 0F3Dh ;# 
# 22892 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 22985 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 23067 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB0CON equ 0F40h ;# 
# 23185 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB0SIDH equ 0F41h ;# 
# 23317 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB0SIDL equ 0F42h ;# 
# 23421 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB0EIDH equ 0F43h ;# 
# 23553 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB0EIDL equ 0F44h ;# 
# 23685 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB0DLC equ 0F45h ;# 
# 23773 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB0D0 equ 0F46h ;# 
# 23834 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB0D1 equ 0F47h ;# 
# 23895 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB0D2 equ 0F48h ;# 
# 23956 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB0D3 equ 0F49h ;# 
# 24017 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB0D4 equ 0F4Ah ;# 
# 24078 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB0D5 equ 0F4Bh ;# 
# 24139 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB0D6 equ 0F4Ch ;# 
# 24200 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXB0D7 equ 0F4Dh ;# 
# 24261 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 24354 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 24436 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXB1CON equ 0F50h ;# 
# 24618 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXB1SIDH equ 0F51h ;# 
# 24750 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXB1SIDL equ 0F52h ;# 
# 24868 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXB1EIDH equ 0F53h ;# 
# 25000 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXB1EIDL equ 0F54h ;# 
# 25132 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXB1DLC equ 0F55h ;# 
# 25264 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXB1D0 equ 0F56h ;# 
# 25325 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXB1D1 equ 0F57h ;# 
# 25386 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXB1D2 equ 0F58h ;# 
# 25447 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXB1D3 equ 0F59h ;# 
# 25508 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXB1D4 equ 0F5Ah ;# 
# 25569 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXB1D5 equ 0F5Bh ;# 
# 25630 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXB1D6 equ 0F5Ch ;# 
# 25691 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXB1D7 equ 0F5Dh ;# 
# 25752 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 25845 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 25927 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXB0CON equ 0F60h ;# 
# 26142 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXB0SIDH equ 0F61h ;# 
# 26274 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXB0SIDL equ 0F62h ;# 
# 26392 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXB0EIDH equ 0F63h ;# 
# 26524 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXB0EIDL equ 0F64h ;# 
# 26656 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXB0DLC equ 0F65h ;# 
# 26788 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXB0D0 equ 0F66h ;# 
# 26849 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXB0D1 equ 0F67h ;# 
# 26910 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXB0D2 equ 0F68h ;# 
# 26971 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXB0D3 equ 0F69h ;# 
# 27032 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXB0D4 equ 0F6Ah ;# 
# 27093 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXB0D5 equ 0F6Bh ;# 
# 27154 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXB0D6 equ 0F6Ch ;# 
# 27215 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXB0D7 equ 0F6Dh ;# 
# 27276 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
CANSTAT equ 0F6Eh ;# 
# 27384 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
CANCON equ 0F6Fh ;# 
# 27487 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
BRGCON1 equ 0F70h ;# 
# 27548 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
BRGCON2 equ 0F71h ;# 
# 27618 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
BRGCON3 equ 0F72h ;# 
# 27662 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
CIOCON equ 0F73h ;# 
# 27688 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
COMSTAT equ 0F74h ;# 
# 27809 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RXERRCNT equ 0F75h ;# 
# 27870 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXERRCNT equ 0F76h ;# 
# 27931 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
ECANCON equ 0F77h ;# 
# 28001 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
PORTA equ 0F80h ;# 
# 28211 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
PORTB equ 0F81h ;# 
# 28384 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
PORTC equ 0F82h ;# 
# 28556 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
PORTE equ 0F84h ;# 
# 28594 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
LATA equ 0F89h ;# 
# 28726 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
LATB equ 0F8Ah ;# 
# 28858 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
LATC equ 0F8Bh ;# 
# 28990 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TRISA equ 0F92h ;# 
# 28995 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
DDRA equ 0F92h ;# 
# 29211 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TRISB equ 0F93h ;# 
# 29216 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
DDRB equ 0F93h ;# 
# 29432 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TRISC equ 0F94h ;# 
# 29437 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
DDRC equ 0F94h ;# 
# 29653 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
OSCTUNE equ 0F9Bh ;# 
# 29724 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
PIE1 equ 0F9Dh ;# 
# 29797 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
PIR1 equ 0F9Eh ;# 
# 29870 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
IPR1 equ 0F9Fh ;# 
# 29952 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
PIE2 equ 0FA0h ;# 
# 30006 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
PIR2 equ 0FA1h ;# 
# 30060 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
IPR2 equ 0FA2h ;# 
# 30114 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
PIE3 equ 0FA3h ;# 
# 30222 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
PIR3 equ 0FA4h ;# 
# 30322 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
IPR3 equ 0FA5h ;# 
# 30422 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
EECON1 equ 0FA6h ;# 
# 30487 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
EECON2 equ 0FA7h ;# 
# 30493 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
EEDATA equ 0FA8h ;# 
# 30499 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
EEADR equ 0FA9h ;# 
# 30505 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RCSTA equ 0FABh ;# 
# 30510 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RCSTA1 equ 0FABh ;# 
# 30714 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXSTA equ 0FACh ;# 
# 30719 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXSTA1 equ 0FACh ;# 
# 31011 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXREG equ 0FADh ;# 
# 31016 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TXREG1 equ 0FADh ;# 
# 31022 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RCREG equ 0FAEh ;# 
# 31027 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RCREG1 equ 0FAEh ;# 
# 31033 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
SPBRG equ 0FAFh ;# 
# 31038 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
SPBRG1 equ 0FAFh ;# 
# 31044 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
SPBRGH equ 0FB0h ;# 
# 31050 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
T3CON equ 0FB1h ;# 
# 31178 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TMR3 equ 0FB2h ;# 
# 31184 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TMR3L equ 0FB2h ;# 
# 31190 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TMR3H equ 0FB3h ;# 
# 31196 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
ECCP1DEL equ 0FB7h ;# 
# 31216 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
BAUDCON equ 0FB8h ;# 
# 31221 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
BAUDCTL equ 0FB8h ;# 
# 31381 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
CCP1CON equ 0FBDh ;# 
# 31444 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
CCPR1 equ 0FBEh ;# 
# 31450 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
CCPR1L equ 0FBEh ;# 
# 31456 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
CCPR1H equ 0FBFh ;# 
# 31462 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
ADCON2 equ 0FC0h ;# 
# 31532 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
ADCON1 equ 0FC1h ;# 
# 31622 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
ADCON0 equ 0FC2h ;# 
# 31740 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
ADRES equ 0FC3h ;# 
# 31746 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
ADRESL equ 0FC3h ;# 
# 31752 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
ADRESH equ 0FC4h ;# 
# 31758 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
SSPCON2 equ 0FC5h ;# 
# 31819 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
SSPCON1 equ 0FC6h ;# 
# 31888 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
SSPSTAT equ 0FC7h ;# 
# 32146 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
SSPADD equ 0FC8h ;# 
# 32152 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
SSPBUF equ 0FC9h ;# 
# 32158 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
T2CON equ 0FCAh ;# 
# 32228 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
PR2 equ 0FCBh ;# 
# 32233 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
MEMCON equ 0FCBh ;# 
# 32337 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TMR2 equ 0FCCh ;# 
# 32343 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
T1CON equ 0FCDh ;# 
# 32456 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TMR1 equ 0FCEh ;# 
# 32462 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TMR1L equ 0FCEh ;# 
# 32468 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TMR1H equ 0FCFh ;# 
# 32474 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
RCON equ 0FD0h ;# 
# 32606 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
WDTCON equ 0FD1h ;# 
# 32633 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
HLVDCON equ 0FD2h ;# 
# 32638 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
LVDCON equ 0FD2h ;# 
# 32902 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
OSCCON equ 0FD3h ;# 
# 32978 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
T0CON equ 0FD5h ;# 
# 33053 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TMR0 equ 0FD6h ;# 
# 33059 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TMR0L equ 0FD6h ;# 
# 33065 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TMR0H equ 0FD7h ;# 
# 33071 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
STATUS equ 0FD8h ;# 
# 33149 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
FSR2 equ 0FD9h ;# 
# 33155 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
FSR2L equ 0FD9h ;# 
# 33161 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
FSR2H equ 0FDAh ;# 
# 33167 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
PLUSW2 equ 0FDBh ;# 
# 33173 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
PREINC2 equ 0FDCh ;# 
# 33179 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
POSTDEC2 equ 0FDDh ;# 
# 33185 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
POSTINC2 equ 0FDEh ;# 
# 33191 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
INDF2 equ 0FDFh ;# 
# 33197 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
BSR equ 0FE0h ;# 
# 33203 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
FSR1 equ 0FE1h ;# 
# 33209 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
FSR1L equ 0FE1h ;# 
# 33215 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
FSR1H equ 0FE2h ;# 
# 33221 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
PLUSW1 equ 0FE3h ;# 
# 33227 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
PREINC1 equ 0FE4h ;# 
# 33233 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
POSTDEC1 equ 0FE5h ;# 
# 33239 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
POSTINC1 equ 0FE6h ;# 
# 33245 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
INDF1 equ 0FE7h ;# 
# 33251 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
WREG equ 0FE8h ;# 
# 33257 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
FSR0 equ 0FE9h ;# 
# 33263 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
FSR0L equ 0FE9h ;# 
# 33269 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
FSR0H equ 0FEAh ;# 
# 33275 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
PLUSW0 equ 0FEBh ;# 
# 33281 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
PREINC0 equ 0FECh ;# 
# 33287 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
POSTDEC0 equ 0FEDh ;# 
# 33293 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
POSTINC0 equ 0FEEh ;# 
# 33299 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
INDF0 equ 0FEFh ;# 
# 33305 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
INTCON3 equ 0FF0h ;# 
# 33396 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
INTCON2 equ 0FF1h ;# 
# 33472 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
INTCON equ 0FF2h ;# 
# 33588 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
PROD equ 0FF3h ;# 
# 33594 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
PRODL equ 0FF3h ;# 
# 33600 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
PRODH equ 0FF4h ;# 
# 33606 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TABLAT equ 0FF5h ;# 
# 33614 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TBLPTR equ 0FF6h ;# 
# 33620 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TBLPTRL equ 0FF6h ;# 
# 33626 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TBLPTRH equ 0FF7h ;# 
# 33632 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TBLPTRU equ 0FF8h ;# 
# 33640 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
PCLAT equ 0FF9h ;# 
# 33647 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
PC equ 0FF9h ;# 
# 33653 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
PCL equ 0FF9h ;# 
# 33659 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
PCLATH equ 0FFAh ;# 
# 33665 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
PCLATU equ 0FFBh ;# 
# 33671 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
STKPTR equ 0FFCh ;# 
# 33744 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TOS equ 0FFDh ;# 
# 33750 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TOSL equ 0FFDh ;# 
# 33756 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TOSH equ 0FFEh ;# 
# 33762 "C:\Program Files (x86)\Microchip\xc8\v1.38\include\pic18f2580.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_DelayMs
	FNCALL	_main,_OpenI2C_StSpeed
	FNCALL	_main,_PICsetup
	FNCALL	_main,_PIDupdate
	FNCALL	_main,_PWMSetup
	FNCALL	_main,___ftadd
	FNCALL	_main,___ftge
	FNCALL	_main,___ftneg
	FNCALL	_main,_computeAngle
	FNCALL	_main,_motorsUpdate
	FNCALL	_main,_sensorSetup
	FNCALL	_sensorSetup,_IdleI2C
	FNCALL	_sensorSetup,_WriteI2C
	FNCALL	_motorsUpdate,_map
	FNCALL	_map,___aldiv
	FNCALL	_map,___lmul
	FNCALL	_computeAngle,_DelayMs
	FNCALL	_computeAngle,___awtoft
	FNCALL	_computeAngle,___ftadd
	FNCALL	_computeAngle,___ftdiv
	FNCALL	_computeAngle,___ftmul
	FNCALL	_computeAngle,___ftneg
	FNCALL	_computeAngle,___lltoft
	FNCALL	_computeAngle,_atan
	FNCALL	_computeAngle,_getAccelX
	FNCALL	_computeAngle,_getAccelY
	FNCALL	_computeAngle,_getAccelZ
	FNCALL	_computeAngle,_getGyroY
	FNCALL	_computeAngle,_pow
	FNCALL	_computeAngle,_sqrt
	FNCALL	_sqrt,___ftge
	FNCALL	_sqrt,___ftmul
	FNCALL	_sqrt,___ftsub
	FNCALL	_pow,___ftge
	FNCALL	_pow,___ftmul
	FNCALL	_pow,___ftneg
	FNCALL	_pow,___fttol
	FNCALL	_pow,___lltoft
	FNCALL	_pow,_exp
	FNCALL	_pow,_log
	FNCALL	_log,___awtoft
	FNCALL	_log,___ftadd
	FNCALL	_log,___ftmul
	FNCALL	_log,_eval_poly
	FNCALL	_log,_frexp
	FNCALL	_exp,___awtoft
	FNCALL	_exp,___ftdiv
	FNCALL	_exp,___ftge
	FNCALL	_exp,___ftmul
	FNCALL	_exp,___ftneg
	FNCALL	_exp,___ftsub
	FNCALL	_exp,___fttol
	FNCALL	_exp,_eval_poly
	FNCALL	_exp,_floor
	FNCALL	_exp,_ldexp
	FNCALL	_floor,___altoft
	FNCALL	_floor,___ftadd
	FNCALL	_floor,___ftge
	FNCALL	_floor,___fttol
	FNCALL	_floor,_frexp
	FNCALL	___altoft,___ftpack
	FNCALL	___ftsub,___ftadd
	FNCALL	___awtoft,___ftpack
	FNCALL	___lltoft,___ftpack
	FNCALL	_getGyroY,_ReadI2C
	FNCALL	_getGyroY,_WriteI2C
	FNCALL	_getAccelZ,_ReadI2C
	FNCALL	_getAccelZ,_WriteI2C
	FNCALL	_getAccelY,_ReadI2C
	FNCALL	_getAccelY,_WriteI2C
	FNCALL	_getAccelX,_ReadI2C
	FNCALL	_getAccelX,_WriteI2C
	FNCALL	_WriteI2C,_IdleI2C
	FNCALL	_atan,___ftadd
	FNCALL	_atan,___ftdiv
	FNCALL	_atan,___ftge
	FNCALL	_atan,___ftmul
	FNCALL	_atan,___ftneg
	FNCALL	_atan,_eval_poly
	FNCALL	_atan,_fabs
	FNCALL	_fabs,___ftneg
	FNCALL	_eval_poly,___ftadd
	FNCALL	_eval_poly,___ftmul
	FNCALL	_eval_poly,___wmul
	FNCALL	___ftdiv,___ftpack
	FNCALL	_PIDupdate,___ftadd
	FNCALL	_PIDupdate,___ftge
	FNCALL	_PIDupdate,___ftmul
	FNCALL	_PIDupdate,___ftneg
	FNCALL	_PIDupdate,___fttol
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftadd,___ftpack
	FNROOT	_main
	FNCALL	_my_ISR,___llmod
	FNCALL	intlevel2,_my_ISR
	global	intlevel2
	FNROOT	intlevel2
	global	_kD
	global	_kI
	global	_kP
	global	_K
	global	_alpha
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\main.h"
	line	40

;initializer for _kD
	db	low(float24(5.5000000000000000))
	db	high(float24(5.5000000000000000))
	db	low highword(float24(5.5000000000000000))
	line	39

;initializer for _kI
	db	low(float24(1.7000000000000000))
	db	high(float24(1.7000000000000000))
	db	low highword(float24(1.7000000000000000))
	line	38

;initializer for _kP
	db	low(float24(2.2999999999999998))
	db	high(float24(2.2999999999999998))
	db	low highword(float24(2.2999999999999998))
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	line	37

;initializer for _K
	db	low(float24(4.9000000000000004))
	db	high(float24(4.9000000000000004))
	db	low highword(float24(4.9000000000000004))
	line	15

;initializer for _alpha
	db	low(float24(0.84999999999999998))
	db	high(float24(0.84999999999999998))
	db	low highword(float24(0.84999999999999998))
	global	_dpowers
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\doprnt.c"
	line	354
_dpowers:
	dw	(01h) & 0xffff
	dw	highword(01h)
	dw	(0Ah) & 0xffff
	dw	highword(0Ah)
	dw	(064h) & 0xffff
	dw	highword(064h)
	dw	(03E8h) & 0xffff
	dw	highword(03E8h)
	dw	(02710h) & 0xffff
	dw	highword(02710h)
	dw	(0186A0h) & 0xffff
	dw	highword(0186A0h)
	dw	(0F4240h) & 0xffff
	dw	highword(0F4240h)
	dw	(0989680h) & 0xffff
	dw	highword(0989680h)
	dw	(05F5E100h) & 0xffff
	dw	highword(05F5E100h)
	dw	(03B9ACA00h) & 0xffff
	dw	highword(03B9ACA00h)
	global __end_of_dpowers
__end_of_dpowers:
	global	__npowers_
psect	smallconst
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\powers.c"
	line	39
__npowers_:
	db	low(float24(1.0000000000000000))
	db	high(float24(1.0000000000000000))
	db	low highword(float24(1.0000000000000000))
	db	low(float24(0.10000000000000001))
	db	high(float24(0.10000000000000001))
	db	low highword(float24(0.10000000000000001))
	db	low(float24(0.010000000000000000))
	db	high(float24(0.010000000000000000))
	db	low highword(float24(0.010000000000000000))
	db	low(float24(0.0010000000000000000))
	db	high(float24(0.0010000000000000000))
	db	low highword(float24(0.0010000000000000000))
	db	low(float24(0.00010000000000000000))
	db	high(float24(0.00010000000000000000))
	db	low highword(float24(0.00010000000000000000))
	db	low(float24(1.0000000000000001e-005))
	db	high(float24(1.0000000000000001e-005))
	db	low highword(float24(1.0000000000000001e-005))
	db	low(float24(9.9999999999999995e-007))
	db	high(float24(9.9999999999999995e-007))
	db	low highword(float24(9.9999999999999995e-007))
	db	low(float24(9.9999999999999995e-008))
	db	high(float24(9.9999999999999995e-008))
	db	low highword(float24(9.9999999999999995e-008))
	db	low(float24(1.0000000000000000e-008))
	db	high(float24(1.0000000000000000e-008))
	db	low highword(float24(1.0000000000000000e-008))
	db	low(float24(1.0000000000000001e-009))
	db	high(float24(1.0000000000000001e-009))
	db	low highword(float24(1.0000000000000001e-009))
	db	low(float24(1.0000000000000000e-010))
	db	high(float24(1.0000000000000000e-010))
	db	low highword(float24(1.0000000000000000e-010))
	db	low(float24(9.9999999999999995e-021))
	db	high(float24(9.9999999999999995e-021))
	db	low highword(float24(9.9999999999999995e-021))
	db	low(float24(1.0000000000000001e-030))
	db	high(float24(1.0000000000000001e-030))
	db	low highword(float24(1.0000000000000001e-030))
	global __end_of__npowers_
__end_of__npowers_:
	global	__powers_
psect	smallconst
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\powers.c"
	line	7
__powers_:
	db	low(float24(1.0000000000000000))
	db	high(float24(1.0000000000000000))
	db	low highword(float24(1.0000000000000000))
	db	low(float24(10.000000000000000))
	db	high(float24(10.000000000000000))
	db	low highword(float24(10.000000000000000))
	db	low(float24(100.00000000000000))
	db	high(float24(100.00000000000000))
	db	low highword(float24(100.00000000000000))
	db	low(float24(1000.0000000000000))
	db	high(float24(1000.0000000000000))
	db	low highword(float24(1000.0000000000000))
	db	low(float24(10000.000000000000))
	db	high(float24(10000.000000000000))
	db	low highword(float24(10000.000000000000))
	db	low(float24(100000.00000000000))
	db	high(float24(100000.00000000000))
	db	low highword(float24(100000.00000000000))
	db	low(float24(1000000.0000000000))
	db	high(float24(1000000.0000000000))
	db	low highword(float24(1000000.0000000000))
	db	low(float24(10000000.000000000))
	db	high(float24(10000000.000000000))
	db	low highword(float24(10000000.000000000))
	db	low(float24(100000000.00000000))
	db	high(float24(100000000.00000000))
	db	low highword(float24(100000000.00000000))
	db	low(float24(1000000000.0000000))
	db	high(float24(1000000000.0000000))
	db	low highword(float24(1000000000.0000000))
	db	low(float24(10000000000.000000))
	db	high(float24(10000000000.000000))
	db	low highword(float24(10000000000.000000))
	db	low(float24(1.0000000000000000e+020))
	db	high(float24(1.0000000000000000e+020))
	db	low highword(float24(1.0000000000000000e+020))
	db	low(float24(1.0000000000000000e+030))
	db	high(float24(1.0000000000000000e+030))
	db	low highword(float24(1.0000000000000000e+030))
	global __end_of__powers_
__end_of__powers_:
	global	_RADtoDEG
psect	smallconst
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\main.h"
	line	14
_RADtoDEG:
	db	low(float24(57.295791433133260))
	db	high(float24(57.295791433133260))
	db	low highword(float24(57.295791433133260))
	global __end_of_RADtoDEG
__end_of_RADtoDEG:
	global	exp@coeff
psect	smallconst
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\exp.c"
	line	17
exp@coeff:
	db	low(float24(1.0000000000000000))
	db	high(float24(1.0000000000000000))
	db	low highword(float24(1.0000000000000000))
	db	low(float24(0.69314718056000002))
	db	high(float24(0.69314718056000002))
	db	low highword(float24(0.69314718056000002))
	db	low(float24(0.24022650695000000))
	db	high(float24(0.24022650695000000))
	db	low highword(float24(0.24022650695000000))
	db	low(float24(0.055504108944999998))
	db	high(float24(0.055504108944999998))
	db	low highword(float24(0.055504108944999998))
	db	low(float24(0.0096181261778999997))
	db	high(float24(0.0096181261778999997))
	db	low highword(float24(0.0096181261778999997))
	db	low(float24(0.0013333710529000000))
	db	high(float24(0.0013333710529000000))
	db	low highword(float24(0.0013333710529000000))
	db	low(float24(0.00015399104432000000))
	db	high(float24(0.00015399104432000000))
	db	low highword(float24(0.00015399104432000000))
	db	low(float24(1.5327675256999998e-005))
	db	high(float24(1.5327675256999998e-005))
	db	low highword(float24(1.5327675256999998e-005))
	db	low(float24(1.2485143336000000e-006))
	db	high(float24(1.2485143336000000e-006))
	db	low highword(float24(1.2485143336000000e-006))
	db	low(float24(1.3908092220999999e-007))
	db	high(float24(1.3908092220999999e-007))
	db	low highword(float24(1.3908092220999999e-007))
	global __end_ofexp@coeff
__end_ofexp@coeff:
	global	log@coeff
psect	smallconst
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\log.c"
	line	9
log@coeff:
	db	low(float24(0.0000000000000000))
	db	high(float24(0.0000000000000000))
	db	low highword(float24(0.0000000000000000))
	db	low(float24(0.99999642389999999))
	db	high(float24(0.99999642389999999))
	db	low highword(float24(0.99999642389999999))
	db	low(float24(-0.49987412380000001))
	db	high(float24(-0.49987412380000001))
	db	low highword(float24(-0.49987412380000001))
	db	low(float24(0.33179902579999998))
	db	high(float24(0.33179902579999998))
	db	low highword(float24(0.33179902579999998))
	db	low(float24(-0.24073380840000000))
	db	high(float24(-0.24073380840000000))
	db	low highword(float24(-0.24073380840000000))
	db	low(float24(0.16765407110000000))
	db	high(float24(0.16765407110000000))
	db	low highword(float24(0.16765407110000000))
	db	low(float24(-0.095329389700000003))
	db	high(float24(-0.095329389700000003))
	db	low highword(float24(-0.095329389700000003))
	db	low(float24(0.036088493700000002))
	db	high(float24(0.036088493700000002))
	db	low highword(float24(0.036088493700000002))
	db	low(float24(-0.0064535442000000004))
	db	high(float24(-0.0064535442000000004))
	db	low highword(float24(-0.0064535442000000004))
	global __end_oflog@coeff
__end_oflog@coeff:
	global	atan@coeff_a
psect	smallconst
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\atan.c"
	line	10
atan@coeff_a:
	db	low(float24(33.058618473989547))
	db	high(float24(33.058618473989547))
	db	low highword(float24(33.058618473989547))
	db	low(float24(58.655751569001964))
	db	high(float24(58.655751569001964))
	db	low highword(float24(58.655751569001964))
	db	low(float24(32.390974856200444))
	db	high(float24(32.390974856200444))
	db	low highword(float24(32.390974856200444))
	db	low(float24(5.8531952112628600))
	db	high(float24(5.8531952112628600))
	db	low highword(float24(5.8531952112628600))
	db	low(float24(0.19523741936234276))
	db	high(float24(0.19523741936234276))
	db	low highword(float24(0.19523741936234276))
	db	low(float24(-0.0024346033004411264))
	db	high(float24(-0.0024346033004411264))
	db	low highword(float24(-0.0024346033004411264))
	global __end_ofatan@coeff_a
__end_ofatan@coeff_a:
	global	atan@coeff_b
psect	smallconst
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\atan.c"
	line	19
atan@coeff_b:
	db	low(float24(33.058618473992418))
	db	high(float24(33.058618473992418))
	db	low highword(float24(33.058618473992418))
	db	low(float24(69.675291059524653))
	db	high(float24(69.675291059524653))
	db	low highword(float24(69.675291059524653))
	db	low(float24(49.004348218216251))
	db	high(float24(49.004348218216251))
	db	low highword(float24(49.004348218216251))
	db	low(float24(12.975578862709240))
	db	high(float24(12.975578862709240))
	db	low highword(float24(12.975578862709240))
	db	low(float24(1.0000000000000000))
	db	high(float24(1.0000000000000000))
	db	low highword(float24(1.0000000000000000))
	global __end_ofatan@coeff_b
__end_ofatan@coeff_b:
	global	_dpowers
	global	__npowers_
	global	__powers_
	global	_RADtoDEG
	global	exp@coeff
	global	log@coeff
	global	atan@coeff_a
	global	atan@coeff_b
	global	PIDupdate@precErrore
	global	_gyroY
	global	_PID
	global	_errno
	global	_millis
	global	PIDupdate@sumErrore
	global	_accX
	global	_currentAngle
	global	_errore
	global	_offsetAngle
	global	_i
	global	_loopMillis
	global	_sensMillis
	global	_TMR0
_TMR0	set	0xFD6
	global	_CCP1CON
_CCP1CON	set	0xFBD
	global	_CCPR1L
_CCPR1L	set	0xFBE
	global	_OSCCON
_OSCCON	set	0xFD3
	global	_PR2
_PR2	set	0xFCB
	global	_RCSTA
_RCSTA	set	0xFAB
	global	_SPBRG
_SPBRG	set	0xFAF
	global	_SSPADD
_SSPADD	set	0xFC8
	global	_SSPBUF
_SSPBUF	set	0xFC9
	global	_SSPCON1
_SSPCON1	set	0xFC6
	global	_SSPCON1bits
_SSPCON1bits	set	0xFC6
	global	_SSPCON2
_SSPCON2	set	0xFC5
	global	_SSPCON2bits
_SSPCON2bits	set	0xFC5
	global	_SSPSTAT
_SSPSTAT	set	0xFC7
	global	_SSPSTATbits
_SSPSTATbits	set	0xFC7
	global	_T0CON
_T0CON	set	0xFD5
	global	_T2CON
_T2CON	set	0xFCA
	global	_TRISA
_TRISA	set	0xF92
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISC
_TRISC	set	0xF94
	global	_TXREG
_TXREG	set	0xFAD
	global	_TXSTA
_TXSTA	set	0xFAC
	global	_BRG16
_BRG16	set	0x7DC3
	global	_BRGH
_BRGH	set	0x7D62
	global	_GIE
_GIE	set	0x7F97
	global	_PLLEN
_PLLEN	set	0x7CDE
	global	_RA0
_RA0	set	0x7C00
	global	_RB2
_RB2	set	0x7C0A
	global	_RB3
_RB3	set	0x7C0B
	global	_RB4
_RB4	set	0x7C0C
	global	_RB5
_RB5	set	0x7C0D
	global	_RCIE
_RCIE	set	0x7CED
	global	_SPEN
_SPEN	set	0x7D5F
	global	_TMR0IE
_TMR0IE	set	0x7F95
	global	_TMR0IF
_TMR0IF	set	0x7F92
	global	_TXEN
_TXEN	set	0x7D65
	global	_TXIF
_TXIF	set	0x7CF4
	
STR_1:
	db	37
	db	52	;'4'
	db	46
	db	50	;'2'
	db	102	;'f'
	db	10
	db	0
; #config settings
global __CFG_OSC$IRCIO7
__CFG_OSC$IRCIO7 equ 0x0
global __CFG_WDT$OFF
__CFG_WDT$OFF equ 0x0
global __CFG_PBADEN$OFF
__CFG_PBADEN$OFF equ 0x0
global __CFG_MCLRE$ON
__CFG_MCLRE$ON equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_DEBUG$ON
__CFG_DEBUG$ON equ 0x0
	file	"project.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMRAM,class=COMRAM,bit,space=1,noexec
global __pbitbssCOMRAM
__pbitbssCOMRAM:
	global	_BIT
	global	_BIT
_BIT:
       ds      1
psect	bssCOMRAM,class=COMRAM,space=1,noexec
global __pbssCOMRAM
__pbssCOMRAM:
PIDupdate@precErrore:
       ds      3
	global	_gyroY
_gyroY:
       ds      3
	global	_PID
_PID:
       ds      2
	global	_errno
_errno:
       ds      2
	global	_j
	global	_j
_j:
       ds      1
psect	dataCOMRAM,class=COMRAM,space=1,noexec
global __pdataCOMRAM
__pdataCOMRAM:
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\main.h"
	line	40
	global	_kD
_kD:
       ds      3
psect	dataCOMRAM
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\main.h"
	line	39
	global	_kI
_kI:
       ds      3
psect	dataCOMRAM
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\main.h"
	line	38
	global	_kP
_kP:
       ds      3
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
	global	_millis
_millis:
       ds      4
PIDupdate@sumErrore:
       ds      3
	global	_accX
_accX:
       ds      3
	global	_currentAngle
_currentAngle:
       ds      3
	global	_errore
_errore:
       ds      3
	global	_offsetAngle
_offsetAngle:
       ds      3
	global	_i
_i:
       ds      1
psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\main.h"
	line	37
	global	_K
_K:
       ds      3
psect	dataBANK0
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\main.h"
	line	15
	global	_alpha
_alpha:
       ds      3
psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
	global	_data
	global	_data
_data:
       ds      20
	global	_loopMillis
_loopMillis:
       ds      4
	global	_pidMillis
	global	_pidMillis
_pidMillis:
       ds      4
	global	_sensMillis
_sensMillis:
       ds      4
	global	_vPin
	global	_vPin
_vPin:
       ds      3
	file	"project.as"
	line	#
psect	cinit
; Initialize objects allocated to BANK0 (6 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
	lfsr	1,6
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
; Initialize objects allocated to COMRAM (9 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	lfsr	0,__pdataCOMRAM
	lfsr	1,9
	copy_data1:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data1
	line	#
; Clear objects allocated to BANK1 (35 bytes)
	global __pbssBANK1
lfsr	0,__pbssBANK1
movlw	35
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to BANK0 (20 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	20
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
; Clear objects allocated to BITCOMRAM (1 bytes)
	global __pbitbssCOMRAM
clrf	(__pbitbssCOMRAM/8+0)&0xffh,c
; Clear objects allocated to COMRAM (11 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	11
clear_2:
clrf	postinc0,c
decf	wreg
bnz	clear_2
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	bcf int$flags,0,c ;clear compiler interrupt flag (level 1)
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	computeAngle@dt
computeAngle@dt:	; 3 bytes @ 0x0
	ds   3
	global	computeAngle@mode
computeAngle@mode:	; 1 bytes @ 0x3
	ds   1
	global	computeAngle@angleSum
computeAngle@angleSum:	; 3 bytes @ 0x4
	ds   3
	global	_computeAngle$1189
_computeAngle$1189:	; 3 bytes @ 0x7
	ds   3
	global	_computeAngle$1190
_computeAngle$1190:	; 3 bytes @ 0xA
	ds   3
	global	_computeAngle$1191
_computeAngle$1191:	; 3 bytes @ 0xD
	ds   3
	global	_computeAngle$1192
_computeAngle$1192:	; 3 bytes @ 0x10
	ds   3
	global	_computeAngle$1193
_computeAngle$1193:	; 3 bytes @ 0x13
	ds   3
	global	_computeAngle$1194
_computeAngle$1194:	; 3 bytes @ 0x16
	ds   3
	global	_computeAngle$1195
_computeAngle$1195:	; 3 bytes @ 0x19
	ds   3
	global	_computeAngle$1196
_computeAngle$1196:	; 3 bytes @ 0x1C
	ds   3
	global	computeAngle@rawAccX
computeAngle@rawAccX:	; 2 bytes @ 0x1F
	ds   2
	global	computeAngle@rawAccY
computeAngle@rawAccY:	; 2 bytes @ 0x21
	ds   2
	global	computeAngle@rawAccZ
computeAngle@rawAccZ:	; 2 bytes @ 0x23
	ds   2
	global	computeAngle@rawGyroY
computeAngle@rawGyroY:	; 2 bytes @ 0x25
	ds   2
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x0
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x0
	global	?_map
?_map:	; 4 bytes @ 0x0
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x0
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x0
	global	map@x
map@x:	; 4 bytes @ 0x0
	ds   3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x3
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x3
	ds   1
	global	map@in_min
map@in_min:	; 4 bytes @ 0x4
	ds   2
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x6
	ds   1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x7
	ds   1
	global	map@in_max
map@in_max:	; 4 bytes @ 0x8
	ds   2
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0xA
	ds   1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0xB
	ds   1
?___ftge:	; 1 bit 
	global	?_eval_poly
?_eval_poly:	; 3 bytes @ 0xC
	global	eval_poly@x
eval_poly@x:	; 3 bytes @ 0xC
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0xC
	global	map@out_min
map@out_min:	; 4 bytes @ 0xC
	ds   3
	global	eval_poly@d
eval_poly@d:	; 2 bytes @ 0xF
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0xF
	ds   1
	global	map@out_max
map@out_max:	; 4 bytes @ 0x10
	ds   1
	global	eval_poly@n
eval_poly@n:	; 2 bytes @ 0x11
	ds   1
??___ftge:	; 1 bytes @ 0x12
	ds   1
??_eval_poly:	; 1 bytes @ 0x13
	ds   1
??_map:	; 1 bytes @ 0x14
	ds   1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x15
	global	?_floor
?_floor:	; 3 bytes @ 0x15
	global	_PIDupdate$403
_PIDupdate$403:	; 3 bytes @ 0x15
	global	eval_poly@res
eval_poly@res:	; 3 bytes @ 0x15
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x15
	global	floor@x
floor@x:	; 3 bytes @ 0x15
	ds   3
	global	?_log
?_log:	; 3 bytes @ 0x18
	global	?_ldexp
?_ldexp:	; 3 bytes @ 0x18
	global	_PIDupdate$404
_PIDupdate$404:	; 3 bytes @ 0x18
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x18
	global	floor@i
floor@i:	; 3 bytes @ 0x18
	global	ldexp@value
ldexp@value:	; 3 bytes @ 0x18
	global	log@x
log@x:	; 3 bytes @ 0x18
	ds   3
??___ftdiv:	; 1 bytes @ 0x1B
	global	floor@expon
floor@expon:	; 2 bytes @ 0x1B
	global	ldexp@newexp
ldexp@newexp:	; 2 bytes @ 0x1B
	global	log@exponent
log@exponent:	; 2 bytes @ 0x1B
	global	_PIDupdate$405
_PIDupdate$405:	; 3 bytes @ 0x1B
	ds   2
??_ldexp:	; 1 bytes @ 0x1D
	ds   1
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x1E
	global	_PIDupdate$406
_PIDupdate$406:	; 3 bytes @ 0x1E
	ds   1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x1F
	ds   1
?_motorsUpdate:	; 1 bytes @ 0x20
	global	motorsUpdate@torque
motorsUpdate@torque:	; 2 bytes @ 0x20
	ds   1
	global	PIDupdate@Pterm
PIDupdate@Pterm:	; 3 bytes @ 0x21
	ds   1
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x22
	ds   1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x23
	ds   1
	global	?_exp
?_exp:	; 3 bytes @ 0x24
	global	PIDupdate@Iterm
PIDupdate@Iterm:	; 3 bytes @ 0x24
	global	exp@x
exp@x:	; 3 bytes @ 0x24
	ds   3
	global	PIDupdate@Dterm
PIDupdate@Dterm:	; 3 bytes @ 0x27
	global	_exp$1205
_exp$1205:	; 3 bytes @ 0x27
	ds   3
	global	exp@exponent
exp@exponent:	; 2 bytes @ 0x2A
	global	_PIDupdate$1197
_PIDupdate$1197:	; 3 bytes @ 0x2A
	ds   2
	global	exp@sign
exp@sign:	; 1 bytes @ 0x2C
	ds   1
	global	?_pow
?_pow:	; 3 bytes @ 0x2D
	global	pow@x
pow@x:	; 3 bytes @ 0x2D
	ds   3
	global	pow@y
pow@y:	; 3 bytes @ 0x30
	ds   3
	global	_pow$1203
_pow$1203:	; 3 bytes @ 0x33
	ds   3
	global	_pow$1204
_pow$1204:	; 3 bytes @ 0x36
	ds   3
	global	pow@sign
pow@sign:	; 1 bytes @ 0x39
	ds   1
	global	pow@yi
pow@yi:	; 4 bytes @ 0x3A
	ds   4
	global	?_sqrt
?_sqrt:	; 3 bytes @ 0x3E
	global	sqrt@a
sqrt@a:	; 3 bytes @ 0x3E
	ds   3
??_sqrt:	; 1 bytes @ 0x41
	ds   3
	global	sqrt@og
sqrt@og:	; 3 bytes @ 0x44
	ds   3
	global	sqrt@z
sqrt@z:	; 3 bytes @ 0x47
	ds   3
	global	sqrt@i
sqrt@i:	; 1 bytes @ 0x4A
	ds   1
	global	sqrt@q
sqrt@q:	; 3 bytes @ 0x4B
	ds   3
	global	sqrt@x
sqrt@x:	; 3 bytes @ 0x4E
	ds   3
	global	?_atan
?_atan:	; 3 bytes @ 0x51
	global	atan@f
atan@f:	; 3 bytes @ 0x51
	ds   3
	global	atan@y
atan@y:	; 3 bytes @ 0x54
	ds   3
	global	atan@x
atan@x:	; 3 bytes @ 0x57
	ds   3
	global	atan@recip
atan@recip:	; 1 bytes @ 0x5A
	ds   1
	global	atan@val_squared
atan@val_squared:	; 3 bytes @ 0x5B
	ds   3
	global	atan@val
atan@val:	; 3 bytes @ 0x5E
	ds   3
??_computeAngle:	; 1 bytes @ 0x61
	ds   4
??_main:	; 1 bytes @ 0x65
	ds   8
	global	_main$1198
_main$1198:	; 3 bytes @ 0x6D
	ds   3
	global	_main$419
_main$419:	; 3 bytes @ 0x70
	ds   3
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_DelayMs:	; 1 bytes @ 0x0
?_IdleI2C:	; 1 bytes @ 0x0
?_OpenI2C_StSpeed:	; 1 bytes @ 0x0
?_ReadI2C:	; 1 bytes @ 0x0
?_WriteI2C:	; 1 bytes @ 0x0
?_sensorSetup:	; 1 bytes @ 0x0
?_computeAngle:	; 1 bytes @ 0x0
?_PWMSetup:	; 1 bytes @ 0x0
?_PIDupdate:	; 1 bytes @ 0x0
?_PICsetup:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_my_ISR:	; 2 bytes @ 0x0
	global	?___llmod
?___llmod:	; 4 bytes @ 0x0
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0x0
	ds   4
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0x4
	ds   4
??___llmod:	; 1 bytes @ 0x8
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x8
	ds   1
??_my_ISR:	; 1 bytes @ 0x9
	ds   14
??_DelayMs:	; 1 bytes @ 0x17
??_IdleI2C:	; 1 bytes @ 0x17
??_OpenI2C_StSpeed:	; 1 bytes @ 0x17
??_ReadI2C:	; 1 bytes @ 0x17
??_PWMSetup:	; 1 bytes @ 0x17
??_PICsetup:	; 1 bytes @ 0x17
	global	?___wmul
?___wmul:	; 2 bytes @ 0x17
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x17
	global	?_frexp
?_frexp:	; 3 bytes @ 0x17
	global	?___lmul
?___lmul:	; 4 bytes @ 0x17
	global	?___fttol
?___fttol:	; 4 bytes @ 0x17
	global	DelayMs@cnt
DelayMs@cnt:	; 1 bytes @ 0x17
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x17
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x17
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x17
	global	frexp@value
frexp@value:	; 3 bytes @ 0x17
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x17
	ds   1
??_WriteI2C:	; 1 bytes @ 0x18
	global	DelayMs@i
DelayMs@i:	; 1 bytes @ 0x18
	global	WriteI2C@data_out
WriteI2C@data_out:	; 1 bytes @ 0x18
	ds   1
??_sensorSetup:	; 1 bytes @ 0x19
	global	?_getGyroY
?_getGyroY:	; 2 bytes @ 0x19
	global	?_getAccelX
?_getAccelX:	; 2 bytes @ 0x19
	global	?_getAccelY
?_getAccelY:	; 2 bytes @ 0x19
	global	?_getAccelZ
?_getAccelZ:	; 2 bytes @ 0x19
	global	DelayMs@_dcnt
DelayMs@_dcnt:	; 1 bytes @ 0x19
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x19
	ds   1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x1A
	global	frexp@eptr
frexp@eptr:	; 2 bytes @ 0x1A
	ds   1
??_getGyroY:	; 1 bytes @ 0x1B
??_getAccelX:	; 1 bytes @ 0x1B
??_getAccelY:	; 1 bytes @ 0x1B
??_getAccelZ:	; 1 bytes @ 0x1B
??___wmul:	; 1 bytes @ 0x1B
??___fttol:	; 1 bytes @ 0x1B
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x1B
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x1B
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x1B
	ds   1
??___ftpack:	; 1 bytes @ 0x1C
??_frexp:	; 1 bytes @ 0x1C
	ds   1
	global	getGyroY@dataH
getGyroY@dataH:	; 2 bytes @ 0x1D
	global	getAccelX@dataH
getAccelX@dataH:	; 2 bytes @ 0x1D
	global	getAccelY@dataH
getAccelY@dataH:	; 2 bytes @ 0x1D
	global	getAccelZ@dataH
getAccelZ@dataH:	; 2 bytes @ 0x1D
	ds   2
??___lmul:	; 1 bytes @ 0x1F
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x1F
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x1F
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x1F
	global	getGyroY@dataL
getGyroY@dataL:	; 2 bytes @ 0x1F
	global	getAccelX@dataL
getAccelX@dataL:	; 2 bytes @ 0x1F
	global	getAccelY@dataL
getAccelY@dataL:	; 2 bytes @ 0x1F
	global	getAccelZ@dataL
getAccelZ@dataL:	; 2 bytes @ 0x1F
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x1F
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x1F
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x1F
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x1F
	ds   1
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x20
	ds   1
	global	getGyroY@data
getGyroY@data:	; 2 bytes @ 0x21
	global	getAccelX@data
getAccelX@data:	; 2 bytes @ 0x21
	global	getAccelY@data
getAccelY@data:	; 2 bytes @ 0x21
	global	getAccelZ@data
getAccelZ@data:	; 2 bytes @ 0x21
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x21
	ds   1
??___awtoft:	; 1 bytes @ 0x22
??___ftneg:	; 1 bytes @ 0x22
	global	?_fabs
?_fabs:	; 3 bytes @ 0x22
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x22
	global	fabs@d
fabs@d:	; 3 bytes @ 0x22
	ds   1
??___lltoft:	; 1 bytes @ 0x23
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x23
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x23
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x23
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x23
	ds   2
??_fabs:	; 1 bytes @ 0x25
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x25
	ds   1
	global	?___altoft
?___altoft:	; 3 bytes @ 0x26
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x26
	global	___altoft@c
___altoft@c:	; 4 bytes @ 0x26
	ds   1
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0x27
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x27
	ds   2
??___ftadd:	; 1 bytes @ 0x29
	ds   1
??___altoft:	; 1 bytes @ 0x2A
	ds   1
??___aldiv:	; 1 bytes @ 0x2B
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x2B
	ds   1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x2C
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x2C
	ds   1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x2D
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x2D
	ds   1
	global	___altoft@exp
___altoft@exp:	; 1 bytes @ 0x2E
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x2E
	ds   1
??___ftmul:	; 1 bytes @ 0x2F
??___ftsub:	; 1 bytes @ 0x2F
	global	___altoft@sign
___altoft@sign:	; 1 bytes @ 0x2F
	ds   2
??_motorsUpdate:	; 1 bytes @ 0x31
	ds   1
??_atan:	; 1 bytes @ 0x32
??_pow:	; 1 bytes @ 0x32
??_exp:	; 1 bytes @ 0x32
??_log:	; 1 bytes @ 0x32
??_floor:	; 1 bytes @ 0x32
??_PIDupdate:	; 1 bytes @ 0x32
;!
;!Data Sizes:
;!    Strings     7
;!    Constant    211
;!    Data        15
;!    BSS         66
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           94     50      71
;!    BANK0           160    115     141
;!    BANK1           256     39      74
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    frexp@eptr	PTR int  size(2) Largest target is 2
;!		 -> log@exponent(BANK0[2]), floor@expon(BANK0[2]), 
;!
;!    eval_poly@d	PTR const  size(2) Largest target is 30
;!		 -> log@coeff(CODE[27]), exp@coeff(CODE[30]), atan@coeff_a(CODE[18]), atan@coeff_b(CODE[15]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _sensorSetup->_WriteI2C
;!    _map->___aldiv
;!    ___aldiv->___lmul
;!    _computeAngle->___ftmul
;!    _sqrt->___ftmul
;!    _pow->___ftmul
;!    _log->___ftmul
;!    _exp->___ftmul
;!    ___altoft->___fttol
;!    ___ftsub->___ftadd
;!    ___awtoft->___ftpack
;!    ___lltoft->___ftpack
;!    _getGyroY->_WriteI2C
;!    _getAccelZ->_WriteI2C
;!    _getAccelY->_WriteI2C
;!    _getAccelX->_WriteI2C
;!    _WriteI2C->_IdleI2C
;!    _atan->___ftmul
;!    _fabs->___ftneg
;!    _eval_poly->___ftmul
;!    ___ftdiv->___ftmul
;!    _PIDupdate->___ftmul
;!    ___ftneg->___ftpack
;!    ___ftmul->___ftadd
;!    ___ftge->___ftmul
;!    ___ftadd->___awtoft
;!
;!Critical Paths under _my_ISR in COMRAM
;!
;!    _my_ISR->___llmod
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_computeAngle
;!    _motorsUpdate->_map
;!    _computeAngle->_atan
;!    _sqrt->_pow
;!    _pow->_exp
;!    _log->_eval_poly
;!    _exp->___ftdiv
;!    _ldexp->_eval_poly
;!    _floor->___ftge
;!    _atan->_sqrt
;!    _eval_poly->___ftmul
;!    ___ftdiv->___ftge
;!    _PIDupdate->___ftge
;!    ___ftge->___ftmul
;!
;!Critical Paths under _my_ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_computeAngle
;!
;!Critical Paths under _my_ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _my_ISR in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _my_ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _my_ISR in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _my_ISR in BANK5
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 8, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                14    14      0  265399
;!                                            101 BANK0     14    14      0
;!                            _DelayMs
;!                    _OpenI2C_StSpeed
;!                           _PICsetup
;!                          _PIDupdate
;!                           _PWMSetup
;!                            ___ftadd
;!                             ___ftge
;!                            ___ftneg
;!                       _computeAngle
;!                       _motorsUpdate
;!                        _sensorSetup
;! ---------------------------------------------------------------------------------
;! (1) _sensorSetup                                          0     0      0      31
;!                            _IdleI2C
;!                           _WriteI2C
;! ---------------------------------------------------------------------------------
;! (1) _motorsUpdate                                         2     0      2    1664
;!                                             32 BANK0      2     0      2
;!                                _map
;! ---------------------------------------------------------------------------------
;! (2) _map                                                 32    12     20    1352
;!                                              0 BANK0     32    12     20
;!                            ___aldiv
;!                             ___lmul
;! ---------------------------------------------------------------------------------
;! (3) ___lmul                                              12     4      8     322
;!                                             23 COMRAM    12     4      8
;! ---------------------------------------------------------------------------------
;! (3) ___aldiv                                             14     6      8     428
;!                                             35 COMRAM    14     6      8
;!                             ___lmul (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _computeAngle                                        67    67      0  229277
;!                                             97 BANK0      4     4      0
;!                                              0 BANK1     39    39      0
;!                            _DelayMs
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftdiv
;!                            ___ftmul
;!                            ___ftneg
;!                           ___lltoft
;!                               _atan
;!                          _getAccelX
;!                          _getAccelY
;!                          _getAccelZ
;!                           _getGyroY
;!                                _pow
;!                               _sqrt
;! ---------------------------------------------------------------------------------
;! (2) _sqrt                                                19    16      3   20981
;!                                             62 BANK0     19    16      3
;!                           ___awtoft (ARG)
;!                            ___ftdiv (ARG)
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftsub
;!                                _pow (ARG)
;! ---------------------------------------------------------------------------------
;! (2) _pow                                                 17    11      6  128377
;!                                             45 BANK0     17    11      6
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___fttol
;!                           ___lltoft
;!                                _exp
;!                                _log
;! ---------------------------------------------------------------------------------
;! (3) _log                                                  5     2      3   42845
;!                                             24 BANK0      5     2      3
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftmul
;!                          _eval_poly
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (3) _exp                                                  9     6      3   68008
;!                                             36 BANK0      9     6      3
;!                           ___awtoft
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___ftsub
;!                            ___fttol
;!                          _eval_poly
;!                              _floor
;!                              _ldexp
;!                                _log (ARG)
;! ---------------------------------------------------------------------------------
;! (4) _ldexp                                                7     2      5     513
;!                                             24 BANK0      7     2      5
;!                          _eval_poly (ARG)
;! ---------------------------------------------------------------------------------
;! (4) _floor                                                8     5      3   15417
;!                                             21 BANK0      8     5      3
;!                           ___altoft
;!                            ___ftadd
;!                             ___ftge
;!                            ___fttol
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (4) _frexp                                                7     2      5     630
;!                                             23 COMRAM     7     2      5
;! ---------------------------------------------------------------------------------
;! (5) ___altoft                                            10     6      4    2865
;!                                             38 COMRAM    10     6      4
;!                           ___ftpack
;!                            ___fttol (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftsub                                              6     0      6    8843
;!                                              0 BANK0      6     0      6
;!                           ___awtoft (ARG)
;!                            ___ftadd
;! ---------------------------------------------------------------------------------
;! (4) ___awtoft                                             4     1      3    3487
;!                                             31 COMRAM     4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (3) ___lltoft                                             9     5      4    2901
;!                                             31 COMRAM     9     5      4
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) _getGyroY                                            10     8      2     133
;!                                             25 COMRAM    10     8      2
;!                            _ReadI2C
;!                           _WriteI2C
;! ---------------------------------------------------------------------------------
;! (2) _getAccelZ                                           10     8      2     133
;!                                             25 COMRAM    10     8      2
;!                            _ReadI2C
;!                           _WriteI2C
;! ---------------------------------------------------------------------------------
;! (2) _getAccelY                                           10     8      2     133
;!                                             25 COMRAM    10     8      2
;!                            _ReadI2C
;!                           _WriteI2C
;! ---------------------------------------------------------------------------------
;! (2) _getAccelX                                           10     8      2     133
;!                                             25 COMRAM    10     8      2
;!                            _ReadI2C
;!                           _WriteI2C
;! ---------------------------------------------------------------------------------
;! (2) _WriteI2C                                             1     1      0      31
;!                                             24 COMRAM     1     1      0
;!                            _IdleI2C
;! ---------------------------------------------------------------------------------
;! (3) _IdleI2C                                              1     1      0       0
;!                                             23 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (3) _ReadI2C                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _atan                                                16    13      3   48481
;!                                             81 BANK0     16    13      3
;!                           ___awtoft (ARG)
;!                            ___ftadd
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                          _eval_poly
;!                               _fabs
;!                                _pow (ARG)
;!                               _sqrt (ARG)
;! ---------------------------------------------------------------------------------
;! (3) _fabs                                                 3     0      3    1374
;!                                             34 COMRAM     3     0      3
;!                            ___ftneg
;! ---------------------------------------------------------------------------------
;! (4) _eval_poly                                           12     5      7   21129
;!                                             12 BANK0     12     5      7
;!                            ___ftadd
;!                            ___ftmul
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (5) ___wmul                                               6     2      4    2736
;!                                             23 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (4) ___ftdiv                                             15     9      6    4504
;!                                             21 BANK0     15     9      6
;!                           ___awtoft (ARG)
;!                            ___ftadd (ARG)
;!                             ___ftge (ARG)
;!                            ___ftmul (ARG)
;!                           ___ftpack
;!                           ___ftpack (ARG)
;!                            ___ftsub (ARG)
;!                           ___lltoft (ARG)
;! ---------------------------------------------------------------------------------
;! (2) _DelayMs                                              3     3      0     102
;!                                             23 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _PWMSetup                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _PIDupdate                                           33    33      0   22435
;!                                             21 BANK0     24    24      0
;!                            ___ftadd
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___fttol
;! ---------------------------------------------------------------------------------
;! (5) ___fttol                                             15    11      4     862
;!                                             23 COMRAM    15    11      4
;! ---------------------------------------------------------------------------------
;! (4) ___ftneg                                              3     0      3    1204
;!                                             31 COMRAM     3     0      3
;!                           ___ftpack (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftmul                                             15     9      6    9012
;!                                             47 COMRAM     3     3      0
;!                                              0 BANK0     12     6      6
;!                           ___awtoft (ARG)
;!                            ___ftadd (ARG)
;!                            ___ftneg (ARG)
;!                           ___ftpack
;!                              _frexp (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftge                                               9     3      6    2412
;!                                             12 BANK0      9     3      6
;!                            ___ftadd (ARG)
;!                            ___ftmul (ARG)
;!                            ___ftneg (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___ftadd                                             12     6      6    8203
;!                                             35 COMRAM    12     6      6
;!                           ___awtoft (ARG)
;!                            ___ftneg (ARG)
;!                           ___ftpack
;!                           ___ftpack (ARG)
;!                             ___wmul (ARG)
;!                              _frexp (ARG)
;! ---------------------------------------------------------------------------------
;! (5) ___ftpack                                             8     3      5    2584
;!                                             23 COMRAM     8     3      5
;! ---------------------------------------------------------------------------------
;! (1) _PICsetup                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _OpenI2C_StSpeed                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (7) _my_ISR                                              14    14      0     599
;!                                              9 COMRAM    14    14      0
;!                            ___llmod
;! ---------------------------------------------------------------------------------
;! (8) ___llmod                                              9     1      8     599
;!                                              0 COMRAM     9     1      8
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 8
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _DelayMs
;!   _OpenI2C_StSpeed
;!   _PICsetup
;!   _PIDupdate
;!     ___ftadd
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftneg (ARG)
;!         ___ftpack (ARG)
;!       ___ftpack (ARG)
;!       ___ftpack (ARG)
;!       ___wmul (ARG)
;!       _frexp (ARG)
;!     ___ftge
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftneg (ARG)
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!         ___ftpack (ARG)
;!         ___wmul (ARG)
;!         _frexp (ARG)
;!       ___ftmul (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!           _frexp (ARG)
;!         ___ftneg (ARG)
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!       ___ftneg (ARG)
;!         ___ftpack (ARG)
;!     ___ftmul
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftneg (ARG)
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!         ___ftpack (ARG)
;!         ___wmul (ARG)
;!         _frexp (ARG)
;!       ___ftneg (ARG)
;!         ___ftpack (ARG)
;!       ___ftpack (ARG)
;!       _frexp (ARG)
;!     ___ftneg
;!       ___ftpack (ARG)
;!     ___fttol
;!   _PWMSetup
;!   ___ftadd
;!     ___awtoft (ARG)
;!       ___ftpack
;!     ___ftneg (ARG)
;!       ___ftpack (ARG)
;!     ___ftpack (ARG)
;!     ___ftpack (ARG)
;!     ___wmul (ARG)
;!     _frexp (ARG)
;!   ___ftge
;!     ___ftadd (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftneg (ARG)
;!         ___ftpack (ARG)
;!       ___ftpack (ARG)
;!       ___ftpack (ARG)
;!       ___wmul (ARG)
;!       _frexp (ARG)
;!     ___ftmul (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftneg (ARG)
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!         ___ftpack (ARG)
;!         ___wmul (ARG)
;!         _frexp (ARG)
;!       ___ftneg (ARG)
;!         ___ftpack (ARG)
;!       ___ftpack (ARG)
;!       _frexp (ARG)
;!     ___ftneg (ARG)
;!       ___ftpack (ARG)
;!   ___ftneg
;!     ___ftpack (ARG)
;!   _computeAngle
;!     _DelayMs
;!     ___awtoft
;!       ___ftpack
;!     ___ftadd
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftneg (ARG)
;!         ___ftpack (ARG)
;!       ___ftpack (ARG)
;!       ___ftpack (ARG)
;!       ___wmul (ARG)
;!       _frexp (ARG)
;!     ___ftdiv
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftneg (ARG)
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!         ___ftpack (ARG)
;!         ___wmul (ARG)
;!         _frexp (ARG)
;!       ___ftge (ARG)
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!           _frexp (ARG)
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftneg (ARG)
;!           ___ftpack (ARG)
;!       ___ftmul (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!           _frexp (ARG)
;!         ___ftneg (ARG)
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!       ___ftpack (ARG)
;!       ___ftpack (ARG)
;!       ___ftsub (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!           _frexp (ARG)
;!       ___lltoft (ARG)
;!         ___ftpack
;!     ___ftmul
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftneg (ARG)
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!         ___ftpack (ARG)
;!         ___wmul (ARG)
;!         _frexp (ARG)
;!       ___ftneg (ARG)
;!         ___ftpack (ARG)
;!       ___ftpack (ARG)
;!       _frexp (ARG)
;!     ___ftneg
;!       ___ftpack (ARG)
;!     ___lltoft
;!       ___ftpack
;!     _atan
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftneg (ARG)
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!         ___ftpack (ARG)
;!         ___wmul (ARG)
;!         _frexp (ARG)
;!       ___ftdiv (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!           _frexp (ARG)
;!         ___ftge (ARG)
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftpack (ARG)
;!         ___ftpack (ARG)
;!         ___ftsub (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!         ___lltoft (ARG)
;!           ___ftpack
;!       ___ftge (ARG)
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!           _frexp (ARG)
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftneg (ARG)
;!           ___ftpack (ARG)
;!       ___ftmul (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!           _frexp (ARG)
;!         ___ftneg (ARG)
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!       ___ftneg (ARG)
;!         ___ftpack (ARG)
;!       _eval_poly (ARG)
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!           _frexp (ARG)
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___wmul
;!       _fabs (ARG)
;!         ___ftneg
;!           ___ftpack (ARG)
;!       _pow (ARG)
;!         ___ftge
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftneg
;!           ___ftpack (ARG)
;!         ___fttol
;!         ___lltoft
;!           ___ftpack
;!         _exp
;!           ___awtoft
;!             ___ftpack
;!           ___ftdiv
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftge (ARG)
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftadd (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftneg (ARG)
;!                     ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___wmul (ARG)
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftsub (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!             ___lltoft (ARG)
;!               ___ftpack
;!           ___ftge
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftneg
;!             ___ftpack (ARG)
;!           ___ftsub
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!           ___fttol
;!           _eval_poly
;!             ___ftadd
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___wmul
;!           _floor
;!             ___altoft
;!               ___ftpack
;!               ___fttol (ARG)
;!             ___ftadd
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftge
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftadd (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftneg (ARG)
;!                     ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___wmul (ARG)
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!             ___fttol
;!             _frexp
;!           _ldexp
;!             _eval_poly (ARG)
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftadd (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftneg (ARG)
;!                     ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___wmul (ARG)
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___wmul
;!           _log (ARG)
;!             ___awtoft
;!               ___ftpack
;!             ___ftadd
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             _eval_poly
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftadd (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftneg (ARG)
;!                     ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___wmul (ARG)
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___wmul
;!             _frexp
;!         _log
;!           ___awtoft
;!             ___ftpack
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           _eval_poly
;!             ___ftadd
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___wmul
;!           _frexp
;!       _sqrt (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftdiv (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftge (ARG)
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___ftsub (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!           ___lltoft (ARG)
;!             ___ftpack
;!         ___ftge (ARG)
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftsub (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!         _pow (ARG)
;!           ___ftge
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftneg
;!             ___ftpack (ARG)
;!           ___fttol
;!           ___lltoft
;!             ___ftpack
;!           _exp
;!             ___awtoft
;!               ___ftpack
;!             ___ftdiv
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftge (ARG)
;!                 ___ftadd (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftneg (ARG)
;!                     ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___wmul (ARG)
;!                   _frexp (ARG)
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftadd (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftneg (ARG)
;!                       ___ftpack (ARG)
;!                     ___ftpack (ARG)
;!                     ___ftpack (ARG)
;!                     ___wmul (ARG)
;!                     _frexp (ARG)
;!                   ___ftneg (ARG)
;!                     ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftadd (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftneg (ARG)
;!                     ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___wmul (ARG)
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftsub (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftadd (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftneg (ARG)
;!                     ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___wmul (ARG)
;!                   _frexp (ARG)
;!               ___lltoft (ARG)
;!                 ___ftpack
;!             ___ftge
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftadd (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftneg (ARG)
;!                     ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___wmul (ARG)
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftneg
;!               ___ftpack (ARG)
;!             ___ftsub
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!             ___fttol
;!             _eval_poly
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftadd (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftneg (ARG)
;!                     ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___wmul (ARG)
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___wmul
;!             _floor
;!               ___altoft
;!                 ___ftpack
;!                 ___fttol (ARG)
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftge
;!                 ___ftadd (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftneg (ARG)
;!                     ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___wmul (ARG)
;!                   _frexp (ARG)
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftadd (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftneg (ARG)
;!                       ___ftpack (ARG)
;!                     ___ftpack (ARG)
;!                     ___ftpack (ARG)
;!                     ___wmul (ARG)
;!                     _frexp (ARG)
;!                   ___ftneg (ARG)
;!                     ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!               ___fttol
;!               _frexp
;!             _ldexp
;!               _eval_poly (ARG)
;!                 ___ftadd
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftneg (ARG)
;!                     ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___wmul (ARG)
;!                   _frexp (ARG)
;!                 ___ftmul
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftadd (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftneg (ARG)
;!                       ___ftpack (ARG)
;!                     ___ftpack (ARG)
;!                     ___ftpack (ARG)
;!                     ___wmul (ARG)
;!                     _frexp (ARG)
;!                   ___ftneg (ARG)
;!                     ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___wmul
;!             _log (ARG)
;!               ___awtoft
;!                 ___ftpack
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftadd (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftneg (ARG)
;!                     ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___wmul (ARG)
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               _eval_poly
;!                 ___ftadd
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftneg (ARG)
;!                     ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___wmul (ARG)
;!                   _frexp (ARG)
;!                 ___ftmul
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftadd (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftneg (ARG)
;!                       ___ftpack (ARG)
;!                     ___ftpack (ARG)
;!                     ___ftpack (ARG)
;!                     ___wmul (ARG)
;!                     _frexp (ARG)
;!                   ___ftneg (ARG)
;!                     ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___wmul
;!               _frexp
;!           _log
;!             ___awtoft
;!               ___ftpack
;!             ___ftadd
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             _eval_poly
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftadd (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftneg (ARG)
;!                     ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___wmul (ARG)
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___wmul
;!             _frexp
;!     _getAccelX
;!       _ReadI2C
;!       _WriteI2C
;!         _IdleI2C
;!     _getAccelY
;!       _ReadI2C
;!       _WriteI2C
;!         _IdleI2C
;!     _getAccelZ
;!       _ReadI2C
;!       _WriteI2C
;!         _IdleI2C
;!     _getGyroY
;!       _ReadI2C
;!       _WriteI2C
;!         _IdleI2C
;!     _pow
;!       ___ftge
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!           _frexp (ARG)
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftneg (ARG)
;!           ___ftpack (ARG)
;!       ___ftmul
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!           _frexp (ARG)
;!         ___ftneg (ARG)
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!       ___ftneg
;!         ___ftpack (ARG)
;!       ___fttol
;!       ___lltoft
;!         ___ftpack
;!       _exp
;!         ___awtoft
;!           ___ftpack
;!         ___ftdiv
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftge (ARG)
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___ftsub (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!           ___lltoft (ARG)
;!             ___ftpack
;!         ___ftge
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftneg
;!           ___ftpack (ARG)
;!         ___ftsub
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!         ___fttol
;!         _eval_poly
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___wmul
;!         _floor
;!           ___altoft
;!             ___ftpack
;!             ___fttol (ARG)
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftge
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!           ___fttol
;!           _frexp
;!         _ldexp
;!           _eval_poly (ARG)
;!             ___ftadd
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___wmul
;!         _log (ARG)
;!           ___awtoft
;!             ___ftpack
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           _eval_poly
;!             ___ftadd
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___wmul
;!           _frexp
;!       _log
;!         ___awtoft
;!           ___ftpack
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!           _frexp (ARG)
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         _eval_poly
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___wmul
;!         _frexp
;!     _sqrt
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftdiv (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!           _frexp (ARG)
;!         ___ftge (ARG)
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftpack (ARG)
;!         ___ftpack (ARG)
;!         ___ftsub (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!         ___lltoft (ARG)
;!           ___ftpack
;!       ___ftge (ARG)
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!           _frexp (ARG)
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftneg (ARG)
;!           ___ftpack (ARG)
;!       ___ftmul (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!           _frexp (ARG)
;!         ___ftneg (ARG)
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!       ___ftsub (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!           _frexp (ARG)
;!       _pow (ARG)
;!         ___ftge
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftneg (ARG)
;!             ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftneg
;!           ___ftpack (ARG)
;!         ___fttol
;!         ___lltoft
;!           ___ftpack
;!         _exp
;!           ___awtoft
;!             ___ftpack
;!           ___ftdiv
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftge (ARG)
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftadd (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftneg (ARG)
;!                     ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___wmul (ARG)
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftsub (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!             ___lltoft (ARG)
;!               ___ftpack
;!           ___ftge
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftneg
;!             ___ftpack (ARG)
;!           ___ftsub
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!           ___fttol
;!           _eval_poly
;!             ___ftadd
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___wmul
;!           _floor
;!             ___altoft
;!               ___ftpack
;!               ___fttol (ARG)
;!             ___ftadd
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftge
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftadd (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftneg (ARG)
;!                     ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___wmul (ARG)
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!             ___fttol
;!             _frexp
;!           _ldexp
;!             _eval_poly (ARG)
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftadd (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftneg (ARG)
;!                     ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___wmul (ARG)
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___wmul
;!           _log (ARG)
;!             ___awtoft
;!               ___ftpack
;!             ___ftadd
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             _eval_poly
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftadd (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftneg (ARG)
;!                     ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   ___wmul (ARG)
;!                   _frexp (ARG)
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___wmul
;!             _frexp
;!         _log
;!           ___awtoft
;!             ___ftpack
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!             _frexp (ARG)
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftneg (ARG)
;!               ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           _eval_poly
;!             ___ftadd
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               ___wmul (ARG)
;!               _frexp (ARG)
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftneg (ARG)
;!                   ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 ___wmul (ARG)
;!                 _frexp (ARG)
;!               ___ftneg (ARG)
;!                 ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___wmul
;!           _frexp
;!   _motorsUpdate
;!     _map
;!       ___aldiv
;!         ___lmul (ARG)
;!       ___lmul
;!   _sensorSetup
;!     _IdleI2C
;!     _WriteI2C
;!       _IdleI2C
;!
;! _my_ISR (ROOT)
;!   ___llmod
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             5FF      0       0      16        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100     27      4A       7       28.9%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0     73      8D       5       88.1%
;!BITCOMRAM           5E      0       1       0        1.1%
;!COMRAM              5E     32      47       1       75.5%
;!BITSFR_3             0      0       0      40        0.0%
;!SFR_3                0      0       0      40        0.0%
;!BITSFR_2             0      0       0      40        0.0%
;!SFR_2                0      0       0      40        0.0%
;!BITSFR_1             0      0       0      40        0.0%
;!SFR_1                0      0       0      40        0.0%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     11E       3        0.0%
;!DATA                 0      0     11E      17        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 34 in file "D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0
;;      Temps:          0       8       0       0       0       0       0
;;      Totals:         0      14       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_DelayMs
;;		_OpenI2C_StSpeed
;;		_PICsetup
;;		_PIDupdate
;;		_PWMSetup
;;		___ftadd
;;		___ftge
;;		___ftneg
;;		_computeAngle
;;		_motorsUpdate
;;		_sensorSetup
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\main.c"
	line	34
global __ptext0
__ptext0:
psect	text0
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\main.c"
	line	34
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 23
	line	35
	
l5184:
;main.c: 35: PICsetup();
	call	_PICsetup	;wreg free
	line	36
;main.c: 36: OpenI2C_StSpeed();
	call	_OpenI2C_StSpeed	;wreg free
	line	37
;main.c: 37: PWMSetup();
	call	_PWMSetup	;wreg free
	line	39
	
l5186:
;main.c: 39: for(i=0; i<4; i++) DelayMs(250);
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_i))&0ffh
	
l5188:; BSR set to: 0

		movlw	04h-1
	movlb	0	; () banked
	cpfsgt	((_i))&0ffh
	goto	u6651
	goto	u6650

u6651:
	goto	l5192
u6650:
	goto	l5198
	
l5190:; BSR set to: 0

	goto	l5198
	
l392:; BSR set to: 0

	
l5192:; BSR set to: 0

	movlw	(0FAh)&0ffh
	
	call	_DelayMs
	
l5194:
	movlb	0	; () banked
	incf	((_i))&0ffh
	
l5196:; BSR set to: 0

		movlw	04h-1
	movlb	0	; () banked
	cpfsgt	((_i))&0ffh
	goto	u6661
	goto	u6660

u6661:
	goto	l5192
u6660:
	goto	l5198
	
l393:; BSR set to: 0

	line	40
	
l5198:; BSR set to: 0

;main.c: 40: sensorSetup();
	call	_sensorSetup	;wreg free
	line	42
	
l5200:
;main.c: 42: computeAngle(1);
	movlw	(01h)&0ffh
	
	call	_computeAngle
	line	44
	
l5202:
;main.c: 44: millis =0;
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_millis))&0ffh
	movlw	high(0)
	movwf	((_millis+1))&0ffh
	movlw	low highword(0)
	movwf	((_millis+2))&0ffh
	movlw	high highword(0)
	movwf	((_millis+3))&0ffh
	line	45
	
l5204:; BSR set to: 0

;main.c: 45: TMR0 =-8000;
	movlw	high(-8000)
	movwf	((c:4054+1)),c	;volatile
	movlw	low(-8000)
	movwf	((c:4054)),c	;volatile
	line	46
	
l5206:; BSR set to: 0

;main.c: 46: GIE =1;
	bsf	c:(32663/8),(32663)&7	;volatile
	goto	l5208
	line	48
;main.c: 48: while(1){
	
l394:; BSR set to: 0

	line	49
	
l5208:; BSR set to: 0

;main.c: 49: computeAngle(0);
	movlw	(0)&0ffh
	
	call	_computeAngle
	line	50
;main.c: 50: PIDupdate();
	call	_PIDupdate	;wreg free
	line	51
;main.c: 51: if (((offsetAngle - currentAngle) > 0 ? (offsetAngle - currentAngle) : -(offsetAngle - currentAngle)) < 20) motorsUpdate(PID);
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+2))&0ffh

	movff	(_offsetAngle),(c:___ftadd@f2)
	movff	(_offsetAngle+1),(c:___ftadd@f2+1)
	movff	(_offsetAngle+2),(c:___ftadd@f2+2)
	movff	(_currentAngle),(c:___ftneg@f1)
	movff	(_currentAngle+1),(c:___ftneg@f1+1)
	movff	(_currentAngle+2),(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(c:___ftadd@f1)
	movff	1+?___ftneg,(c:___ftadd@f1+1)
	movff	2+?___ftneg,(c:___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(___ftge@ff2)
	movff	1+?___ftadd,(___ftge@ff2+1)
	movff	2+?___ftadd,(___ftge@ff2+2)
	call	___ftge	;wreg free
	movlb	0	; () banked
	btfss	status,0
	goto	u6671
	goto	u6670
u6671:
	goto	l5212
u6670:
	
l5210:; BSR set to: 0

	movff	(_offsetAngle),(c:___ftadd@f2)
	movff	(_offsetAngle+1),(c:___ftadd@f2+1)
	movff	(_offsetAngle+2),(c:___ftadd@f2+2)
	movff	(_currentAngle),(c:___ftneg@f1)
	movff	(_currentAngle+1),(c:___ftneg@f1+1)
	movff	(_currentAngle+2),(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(c:___ftadd@f1)
	movff	1+?___ftneg,(c:___ftadd@f1+1)
	movff	2+?___ftneg,(c:___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_main$1198)
	movff	1+?___ftadd,(_main$1198+1)
	movff	2+?___ftadd,(_main$1198+2)
	movff	(_main$1198),(c:___ftneg@f1)
	movff	(_main$1198+1),(c:___ftneg@f1+1)
	movff	(_main$1198+2),(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(_main$419)
	movff	1+?___ftneg,(_main$419+1)
	movff	2+?___ftneg,(_main$419+2)
	goto	l399
	
l397:
	
l5212:
	movff	(_currentAngle),(c:___ftneg@f1)
	movff	(_currentAngle+1),(c:___ftneg@f1+1)
	movff	(_currentAngle+2),(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(c:___ftadd@f1)
	movff	1+?___ftneg,(c:___ftadd@f1+1)
	movff	2+?___ftneg,(c:___ftadd@f1+2)
	movff	(_offsetAngle),(c:___ftadd@f2)
	movff	(_offsetAngle+1),(c:___ftadd@f2+1)
	movff	(_offsetAngle+2),(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_main$419)
	movff	1+?___ftadd,(_main$419+1)
	movff	2+?___ftadd,(_main$419+2)
	
l399:
	movff	(_main$419),(___ftge@ff1)
	movff	(_main$419+1),(___ftge@ff1+1)
	movff	(_main$419+2),(___ftge@ff1+2)
	movlw	low(float24(20.000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff2))&0ffh
	movlw	high(float24(20.000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff2+1))&0ffh
	movlw	low highword(float24(20.000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff2+2))&0ffh

	call	___ftge	;wreg free
	movlb	0	; () banked
	btfsc	status,0
	goto	u6681
	goto	u6680
u6681:
	goto	l5216
u6680:
	
l5214:; BSR set to: 0

	movff	(c:_PID),(motorsUpdate@torque)
	movff	(c:_PID+1),(motorsUpdate@torque+1)
	call	_motorsUpdate	;wreg free
	goto	l5218
	line	52
	
l395:
	
l5216:
;main.c: 52: else motorsUpdate(0);
	movlw	high(0)
	movlb	0	; () banked
	movwf	((motorsUpdate@torque+1))&0ffh
	movlw	low(0)
	movwf	((motorsUpdate@torque))&0ffh
	call	_motorsUpdate	;wreg free
	goto	l5218
	
l400:
	line	53
;main.c: 53: while(millis-loopMillis<20);
	goto	l5218
	
l402:
	goto	l5218
	
l401:
	
l5218:
	movff	(_loopMillis),??_main+0+0
	movff	(_loopMillis+1),??_main+0+0+1
	movff	(_loopMillis+2),??_main+0+0+2
	movff	(_loopMillis+3),??_main+0+0+3
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	comf	(??_main+0+2)&0ffh
	comf	(??_main+0+3)&0ffh
	incf	(??_main+0+0)&0ffh
	movlw	0
	addwfc	(??_main+0+1)&0ffh
	addwfc	(??_main+0+2)&0ffh
	addwfc	(??_main+0+3)&0ffh
	movlb	0	; () banked
	movf	((_millis))&0ffh,w
	movlb	0	; () banked
	addwf	(??_main+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	(??_main+4+0)&0ffh
	movlb	0	; () banked
	movf	((_millis+1))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_main+0+1)&0ffh,w
	movlb	0	; () banked
	movwf	1+(??_main+4+0)&0ffh
	
	movlb	0	; () banked
	movf	((_millis+2))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_main+0+2)&0ffh,w
	movlb	0	; () banked
	movwf	2+(??_main+4+0)&0ffh
	
	movlb	0	; () banked
	movf	((_millis+3))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_main+0+3)&0ffh,w
	movlb	0	; () banked
	movwf	3+(??_main+4+0)&0ffh
	movlb	0	; () banked
		movf	(??_main+4+3)&0ffh,w
	movlb	0	; () banked
	iorwf	(??_main+4+2)&0ffh,w
	movlb	0	; () banked
	iorwf	(??_main+4+1)&0ffh,w
	bnz	u6690
	movlw	20
	movlb	0	; () banked
	subwf	 (??_main+4+0)&0ffh,w
	btfss	status,0
	goto	u6691
	goto	u6690

u6691:
	goto	l5218
u6690:
	goto	l5208
	
l403:; BSR set to: 0

	goto	l5208
	line	54
	
l404:; BSR set to: 0

	line	48
	goto	l5208
	
l405:; BSR set to: 0

	line	55
	
l406:; BSR set to: 0

	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_sensorSetup

;; *************** function _sensorSetup *****************
;; Defined at:
;;		line 38 in file "D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\MPU-6050.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_IdleI2C
;;		_WriteI2C
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\MPU-6050.c"
	line	38
global __ptext1
__ptext1:
psect	text1
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\MPU-6050.c"
	line	38
	global	__size_of_sensorSetup
	__size_of_sensorSetup	equ	__end_of_sensorSetup-_sensorSetup
	
_sensorSetup:; BSR set to: 0

;incstack = 0
	opt	stack 26
	line	39
	
l4712:
;MPU-6050.c: 39: IdleI2C();
	call	_IdleI2C	;wreg free
	line	40
	
l4714:
;MPU-6050.c: 40: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l180
	
l181:
	
l180:
	btfsc	((c:4037)),c,0	;volatile
	goto	u5901
	goto	u5900
u5901:
	goto	l180
u5900:
	goto	l4716
	
l182:
	line	41
	
l4716:
;MPU-6050.c: 41: WriteI2C(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_WriteI2C
	line	42
;MPU-6050.c: 42: WriteI2C(0x6B);
	movlw	(06Bh)&0ffh
	
	call	_WriteI2C
	line	43
;MPU-6050.c: 43: WriteI2C(0b00001011);
	movlw	(0Bh)&0ffh
	
	call	_WriteI2C
	line	44
	
l4718:
;MPU-6050.c: 44: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l183
	
l184:
	
l183:
	btfsc	((c:4037)),c,2	;volatile
	goto	u5911
	goto	u5910
u5911:
	goto	l183
u5910:
	goto	l4720
	
l185:
	line	46
	
l4720:
;MPU-6050.c: 46: IdleI2C();
	call	_IdleI2C	;wreg free
	line	47
	
l4722:
;MPU-6050.c: 47: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l186
	
l187:
	
l186:
	btfsc	((c:4037)),c,0	;volatile
	goto	u5921
	goto	u5920
u5921:
	goto	l186
u5920:
	goto	l4724
	
l188:
	line	48
	
l4724:
;MPU-6050.c: 48: WriteI2C(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_WriteI2C
	line	49
;MPU-6050.c: 49: WriteI2C(0x1A);
	movlw	(01Ah)&0ffh
	
	call	_WriteI2C
	line	50
;MPU-6050.c: 50: WriteI2C(0b00000101);
	movlw	(05h)&0ffh
	
	call	_WriteI2C
	line	51
	
l4726:
;MPU-6050.c: 51: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l189
	
l190:
	
l189:
	btfsc	((c:4037)),c,2	;volatile
	goto	u5931
	goto	u5930
u5931:
	goto	l189
u5930:
	goto	l4728
	
l191:
	line	53
	
l4728:
;MPU-6050.c: 53: IdleI2C();
	call	_IdleI2C	;wreg free
	line	54
	
l4730:
;MPU-6050.c: 54: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l192
	
l193:
	
l192:
	btfsc	((c:4037)),c,0	;volatile
	goto	u5941
	goto	u5940
u5941:
	goto	l192
u5940:
	goto	l4732
	
l194:
	line	55
	
l4732:
;MPU-6050.c: 55: WriteI2C(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_WriteI2C
	line	56
;MPU-6050.c: 56: WriteI2C(0x19);
	movlw	(019h)&0ffh
	
	call	_WriteI2C
	line	57
;MPU-6050.c: 57: WriteI2C(19);
	movlw	(013h)&0ffh
	
	call	_WriteI2C
	line	58
	
l4734:
;MPU-6050.c: 58: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l195
	
l196:
	
l195:
	btfsc	((c:4037)),c,2	;volatile
	goto	u5951
	goto	u5950
u5951:
	goto	l195
u5950:
	goto	l4736
	
l197:
	line	60
	
l4736:
;MPU-6050.c: 60: IdleI2C();
	call	_IdleI2C	;wreg free
	line	61
	
l4738:
;MPU-6050.c: 61: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l198
	
l199:
	
l198:
	btfsc	((c:4037)),c,0	;volatile
	goto	u5961
	goto	u5960
u5961:
	goto	l198
u5960:
	goto	l4740
	
l200:
	line	62
	
l4740:
;MPU-6050.c: 62: WriteI2C(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_WriteI2C
	line	63
;MPU-6050.c: 63: WriteI2C(0x1B);
	movlw	(01Bh)&0ffh
	
	call	_WriteI2C
	line	64
;MPU-6050.c: 64: WriteI2C(0x00);
	movlw	(0)&0ffh
	
	call	_WriteI2C
	line	65
	
l4742:
;MPU-6050.c: 65: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l201
	
l202:
	
l201:
	btfsc	((c:4037)),c,2	;volatile
	goto	u5971
	goto	u5970
u5971:
	goto	l201
u5970:
	goto	l4744
	
l203:
	line	67
	
l4744:
;MPU-6050.c: 67: IdleI2C();
	call	_IdleI2C	;wreg free
	line	68
	
l4746:
;MPU-6050.c: 68: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l204
	
l205:
	
l204:
	btfsc	((c:4037)),c,0	;volatile
	goto	u5981
	goto	u5980
u5981:
	goto	l204
u5980:
	goto	l4748
	
l206:
	line	69
	
l4748:
;MPU-6050.c: 69: WriteI2C(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_WriteI2C
	line	70
;MPU-6050.c: 70: WriteI2C(0x1C);
	movlw	(01Ch)&0ffh
	
	call	_WriteI2C
	line	71
;MPU-6050.c: 71: WriteI2C(0x00);
	movlw	(0)&0ffh
	
	call	_WriteI2C
	line	72
	
l4750:
;MPU-6050.c: 72: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l207
	
l208:
	
l207:
	btfsc	((c:4037)),c,2	;volatile
	goto	u5991
	goto	u5990
u5991:
	goto	l207
u5990:
	goto	l210
	
l209:
	line	73
	
l210:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_sensorSetup
	__end_of_sensorSetup:
	signat	_sensorSetup,89
	global	_motorsUpdate

;; *************** function _motorsUpdate *****************
;; Defined at:
;;		line 29 in file "D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\PID&Motors.c"
;; Parameters:    Size  Location     Type
;;  torque          2   32[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       2       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_map
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\PID&Motors.c"
	line	29
global __ptext2
__ptext2:
psect	text2
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\PID&Motors.c"
	line	29
	global	__size_of_motorsUpdate
	__size_of_motorsUpdate	equ	__end_of_motorsUpdate-_motorsUpdate
	
_motorsUpdate:
;incstack = 0
	opt	stack 26
	line	30
	
l4834:
;PID&Motors.c: 30: if (torque > 0){
	movlb	0	; () banked
	btfsc	((motorsUpdate@torque+1))&0ffh,7
	goto	u6081
	movlb	0	; () banked
	movf	((motorsUpdate@torque+1))&0ffh,w
	bnz	u6080
	movlb	0	; () banked
	decf	((motorsUpdate@torque))&0ffh,w
	btfss	status,0
	goto	u6081
	goto	u6080

u6081:
	goto	l4838
u6080:
	line	31
	
l4836:; BSR set to: 0

;PID&Motors.c: 31: RB2 = 0;
	bcf	c:(31754/8),(31754)&7	;volatile
	line	32
;PID&Motors.c: 32: RB3 = 1;
	bsf	c:(31755/8),(31755)&7	;volatile
	line	33
;PID&Motors.c: 33: RB4 = 0;
	bcf	c:(31756/8),(31756)&7	;volatile
	line	34
;PID&Motors.c: 34: RB5 = 1;
	bsf	c:(31757/8),(31757)&7	;volatile
	line	35
;PID&Motors.c: 35: }
	goto	l4846
	line	36
	
l376:; BSR set to: 0

	
l4838:; BSR set to: 0

;PID&Motors.c: 36: else if (torque < 0){
	movlb	0	; () banked
	btfsc	((motorsUpdate@torque+1))&0ffh,7
	goto	u6090
	goto	u6091

u6091:
	goto	l378
u6090:
	line	37
	
l4840:; BSR set to: 0

;PID&Motors.c: 37: RB2 = 1;
	bsf	c:(31754/8),(31754)&7	;volatile
	line	38
;PID&Motors.c: 38: RB3 = 0;
	bcf	c:(31755/8),(31755)&7	;volatile
	line	39
;PID&Motors.c: 39: RB4 = 1;
	bsf	c:(31756/8),(31756)&7	;volatile
	line	40
;PID&Motors.c: 40: RB5 = 0;
	bcf	c:(31757/8),(31757)&7	;volatile
	line	41
	
l4842:; BSR set to: 0

;PID&Motors.c: 41: torque = ((torque) > 0 ? (torque) : -(torque));
	movlb	0	; () banked
	btfsc	((motorsUpdate@torque+1))&0ffh,7
	goto	u6100
	movlb	0	; () banked
	movf	((motorsUpdate@torque+1))&0ffh,w
	bnz	u6101
	movlb	0	; () banked
	decf	((motorsUpdate@torque))&0ffh,w
	btfsc	status,0
	goto	u6101
	goto	u6100

u6101:
	goto	l4846
u6100:
	
l4844:; BSR set to: 0

	movlb	0	; () banked
	negf	((motorsUpdate@torque))&0ffh
	comf	((motorsUpdate@torque+1))&0ffh
	btfsc	status,0
	incf	((motorsUpdate@torque+1))&0ffh
	goto	l4846
	
l380:; BSR set to: 0

	goto	l4846
	
l382:; BSR set to: 0

	line	42
;PID&Motors.c: 42: }
	goto	l4846
	line	43
	
l378:; BSR set to: 0

	line	44
;PID&Motors.c: 43: else{
;PID&Motors.c: 44: RB2 = 1;
	bsf	c:(31754/8),(31754)&7	;volatile
	line	45
;PID&Motors.c: 45: RB3 = 1;
	bsf	c:(31755/8),(31755)&7	;volatile
	line	46
;PID&Motors.c: 46: RB4 = 1;
	bsf	c:(31756/8),(31756)&7	;volatile
	line	47
;PID&Motors.c: 47: RB5 = 1;
	bsf	c:(31757/8),(31757)&7	;volatile
	goto	l4846
	line	48
	
l383:; BSR set to: 0

	goto	l4846
	
l377:; BSR set to: 0

	line	49
	
l4846:; BSR set to: 0

;PID&Motors.c: 48: }
;PID&Motors.c: 49: CCPR1L = (unsigned char) map(torque,0,255,30,255);
	movff	(motorsUpdate@torque),(map@x)
	movff	(motorsUpdate@torque+1),(map@x+1)
	movlb	0	; () banked
	movlw	0
	btfsc	((map@x+1))&0ffh,7
	movlw	-1
	movwf	((map@x+2))&0ffh
	movwf	((map@x+3))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movwf	((map@in_min))&0ffh
	movlw	high(0)
	movwf	((map@in_min+1))&0ffh
	movlw	low highword(0)
	movwf	((map@in_min+2))&0ffh
	movlw	high highword(0)
	movwf	((map@in_min+3))&0ffh
	movlw	low(0FFh)
	movlb	0	; () banked
	movwf	((map@in_max))&0ffh
	movlw	high(0FFh)
	movwf	((map@in_max+1))&0ffh
	movlw	low highword(0FFh)
	movwf	((map@in_max+2))&0ffh
	movlw	high highword(0FFh)
	movwf	((map@in_max+3))&0ffh
	movlw	low(01Eh)
	movlb	0	; () banked
	movwf	((map@out_min))&0ffh
	movlw	high(01Eh)
	movwf	((map@out_min+1))&0ffh
	movlw	low highword(01Eh)
	movwf	((map@out_min+2))&0ffh
	movlw	high highword(01Eh)
	movwf	((map@out_min+3))&0ffh
	movlw	low(0FFh)
	movlb	0	; () banked
	movwf	((map@out_max))&0ffh
	movlw	high(0FFh)
	movwf	((map@out_max+1))&0ffh
	movlw	low highword(0FFh)
	movwf	((map@out_max+2))&0ffh
	movlw	high highword(0FFh)
	movwf	((map@out_max+3))&0ffh
	call	_map	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+?_map)&0ffh,w
	movwf	((c:4030)),c	;volatile
	line	50
	
l384:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_motorsUpdate
	__end_of_motorsUpdate:
	signat	_motorsUpdate,4217
	global	_map

;; *************** function _map *****************
;; Defined at:
;;		line 4 in file "D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\main.h"
;; Parameters:    Size  Location     Type
;;  x               4    0[BANK0 ] long 
;;  in_min          4    4[BANK0 ] long 
;;  in_max          4    8[BANK0 ] long 
;;  out_min         4   12[BANK0 ] long 
;;  out_max         4   16[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0      20       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0      12       0       0       0       0       0
;;      Totals:         0      32       0       0       0       0       0
;;Total ram usage:       32 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___aldiv
;;		___lmul
;; This function is called by:
;;		_motorsUpdate
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\main.h"
	line	4
global __ptext3
__ptext3:
psect	text3
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\main.h"
	line	4
	global	__size_of_map
	__size_of_map	equ	__end_of_map-_map
	
_map:; BSR set to: 0

;incstack = 0
	opt	stack 26
	line	5
	
l4496:
;main.h: 5: return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
	movff	(map@in_min),??_map+0+0
	movff	(map@in_min+1),??_map+0+0+1
	movff	(map@in_min+2),??_map+0+0+2
	movff	(map@in_min+3),??_map+0+0+3
	movlb	0	; () banked
	comf	(??_map+0+0)&0ffh
	comf	(??_map+0+1)&0ffh
	comf	(??_map+0+2)&0ffh
	comf	(??_map+0+3)&0ffh
	incf	(??_map+0+0)&0ffh
	movlw	0
	addwfc	(??_map+0+1)&0ffh
	addwfc	(??_map+0+2)&0ffh
	addwfc	(??_map+0+3)&0ffh
	movlb	0	; () banked
	movf	((map@x))&0ffh,w
	movlb	0	; () banked
	addwf	(??_map+0+0)&0ffh,w
	movwf	((c:___lmul@multiplier)),c
	movlb	0	; () banked
	movf	((map@x+1))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_map+0+1)&0ffh,w
	movwf	1+((c:___lmul@multiplier)),c
	
	movlb	0	; () banked
	movf	((map@x+2))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_map+0+2)&0ffh,w
	movwf	2+((c:___lmul@multiplier)),c
	
	movlb	0	; () banked
	movf	((map@x+3))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_map+0+3)&0ffh,w
	movwf	3+((c:___lmul@multiplier)),c
	movff	(map@out_min),??_map+4+0
	movff	(map@out_min+1),??_map+4+0+1
	movff	(map@out_min+2),??_map+4+0+2
	movff	(map@out_min+3),??_map+4+0+3
	movlb	0	; () banked
	comf	(??_map+4+0)&0ffh
	comf	(??_map+4+1)&0ffh
	comf	(??_map+4+2)&0ffh
	comf	(??_map+4+3)&0ffh
	incf	(??_map+4+0)&0ffh
	movlw	0
	addwfc	(??_map+4+1)&0ffh
	addwfc	(??_map+4+2)&0ffh
	addwfc	(??_map+4+3)&0ffh
	movlb	0	; () banked
	movf	((map@out_max))&0ffh,w
	movlb	0	; () banked
	addwf	(??_map+4+0)&0ffh,w
	movwf	((c:___lmul@multiplicand)),c
	movlb	0	; () banked
	movf	((map@out_max+1))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_map+4+1)&0ffh,w
	movwf	1+((c:___lmul@multiplicand)),c
	
	movlb	0	; () banked
	movf	((map@out_max+2))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_map+4+2)&0ffh,w
	movwf	2+((c:___lmul@multiplicand)),c
	
	movlb	0	; () banked
	movf	((map@out_max+3))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_map+4+3)&0ffh,w
	movwf	3+((c:___lmul@multiplicand)),c
	call	___lmul	;wreg free
	movff	0+?___lmul,(c:___aldiv@dividend)
	movff	1+?___lmul,(c:___aldiv@dividend+1)
	movff	2+?___lmul,(c:___aldiv@dividend+2)
	movff	3+?___lmul,(c:___aldiv@dividend+3)
	
	movff	(map@in_min),??_map+8+0
	movff	(map@in_min+1),??_map+8+0+1
	movff	(map@in_min+2),??_map+8+0+2
	movff	(map@in_min+3),??_map+8+0+3
	movlb	0	; () banked
	comf	(??_map+8+0)&0ffh
	comf	(??_map+8+1)&0ffh
	comf	(??_map+8+2)&0ffh
	comf	(??_map+8+3)&0ffh
	incf	(??_map+8+0)&0ffh
	movlw	0
	addwfc	(??_map+8+1)&0ffh
	addwfc	(??_map+8+2)&0ffh
	addwfc	(??_map+8+3)&0ffh
	movlb	0	; () banked
	movf	((map@in_max))&0ffh,w
	movlb	0	; () banked
	addwf	(??_map+8+0)&0ffh,w
	movwf	((c:___aldiv@divisor)),c
	movlb	0	; () banked
	movf	((map@in_max+1))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_map+8+1)&0ffh,w
	movwf	1+((c:___aldiv@divisor)),c
	
	movlb	0	; () banked
	movf	((map@in_max+2))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_map+8+2)&0ffh,w
	movwf	2+((c:___aldiv@divisor)),c
	
	movlb	0	; () banked
	movf	((map@in_max+3))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_map+8+3)&0ffh,w
	movwf	3+((c:___aldiv@divisor)),c
	call	___aldiv	;wreg free
	movlb	0	; () banked
	movf	((map@out_min))&0ffh,w
	addwf	(0+?___aldiv),c,w
	movlb	0	; () banked
	movwf	((?_map))&0ffh
	movlb	0	; () banked
	movf	((map@out_min+1))&0ffh,w
	addwfc	(1+?___aldiv),c,w
	movlb	0	; () banked
	movwf	1+((?_map))&0ffh
	
	movlb	0	; () banked
	movf	((map@out_min+2))&0ffh,w
	addwfc	(2+?___aldiv),c,w
	movlb	0	; () banked
	movwf	2+((?_map))&0ffh
	
	movlb	0	; () banked
	movf	((map@out_min+3))&0ffh,w
	addwfc	(3+?___aldiv),c,w
	movlb	0	; () banked
	movwf	3+((?_map))&0ffh
	goto	l103
	
l4498:; BSR set to: 0

	line	6
	
l103:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_map
	__end_of_map:
	signat	_map,20604
	global	___lmul

;; *************** function ___lmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\Umul32.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4   23[COMRAM] unsigned long 
;;  multiplicand    4   27[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4   31[COMRAM] unsigned long 
;; Return value:  Size  Location     Type
;;                  4   23[COMRAM] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         8       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_map
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\Umul32.c"
	line	15
global __ptext4
__ptext4:
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\Umul32.c"
	line	15
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:; BSR set to: 0

;incstack = 0
	opt	stack 26
	line	119
	
l2796:
	movlw	low(0)
	movwf	((c:___lmul@product)),c
	movlw	high(0)
	movwf	((c:___lmul@product+1)),c
	movlw	low highword(0)
	movwf	((c:___lmul@product+2)),c
	movlw	high highword(0)
	movwf	((c:___lmul@product+3)),c
	goto	l2798
	line	120
	
l533:
	line	121
	
l2798:
	
	btfss	((c:___lmul@multiplier)),c,(0)&7
	goto	u2611
	goto	u2610
u2611:
	goto	l2802
u2610:
	line	122
	
l2800:
	movf	((c:___lmul@multiplicand)),c,w
	addwf	((c:___lmul@product)),c
	movf	((c:___lmul@multiplicand+1)),c,w
	addwfc	((c:___lmul@product+1)),c
	movf	((c:___lmul@multiplicand+2)),c,w
	addwfc	((c:___lmul@product+2)),c
	movf	((c:___lmul@multiplicand+3)),c,w
	addwfc	((c:___lmul@product+3)),c
	goto	l2802
	
l534:
	line	123
	
l2802:
	bcf	status,0
	rlcf	((c:___lmul@multiplicand)),c
	rlcf	((c:___lmul@multiplicand+1)),c
	rlcf	((c:___lmul@multiplicand+2)),c
	rlcf	((c:___lmul@multiplicand+3)),c
	line	124
	
l2804:
	bcf	status,0
	rrcf	((c:___lmul@multiplier+3)),c
	rrcf	((c:___lmul@multiplier+2)),c
	rrcf	((c:___lmul@multiplier+1)),c
	rrcf	((c:___lmul@multiplier)),c
	line	125
	movf	((c:___lmul@multiplier)),c,w
iorwf	((c:___lmul@multiplier+1)),c,w
iorwf	((c:___lmul@multiplier+2)),c,w
iorwf	((c:___lmul@multiplier+3)),c,w
	btfss	status,2
	goto	u2621
	goto	u2620

u2621:
	goto	l2798
u2620:
	
l535:
	line	128
	movff	(c:___lmul@product),(c:?___lmul)
	movff	(c:___lmul@product+1),(c:?___lmul+1)
	movff	(c:___lmul@product+2),(c:?___lmul+2)
	movff	(c:___lmul@product+3),(c:?___lmul+3)
	line	129
	
l536:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
	signat	___lmul,8316
	global	___aldiv

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\aldiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        4   35[COMRAM] long 
;;  divisor         4   39[COMRAM] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   45[COMRAM] long 
;;  sign            1   44[COMRAM] unsigned char 
;;  counter         1   43[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   35[COMRAM] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         8       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_map
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\aldiv.c"
	line	8
global __ptext5
__ptext5:
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\aldiv.c"
	line	8
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:
;incstack = 0
	opt	stack 26
	line	14
	
l2806:
	movlw	low(0)
	movwf	((c:___aldiv@sign)),c
	line	15
	
l2808:
	btfsc	((c:___aldiv@divisor+3)),c,7
	goto	u2630
	goto	u2631

u2631:
	goto	l2814
u2630:
	line	16
	
l2810:
	comf	((c:___aldiv@divisor+3)),c
	comf	((c:___aldiv@divisor+2)),c
	comf	((c:___aldiv@divisor+1)),c
	negf	((c:___aldiv@divisor)),c
	movlw	0
	addwfc	((c:___aldiv@divisor+1)),c
	addwfc	((c:___aldiv@divisor+2)),c
	addwfc	((c:___aldiv@divisor+3)),c
	line	17
	
l2812:
	movlw	low(01h)
	movwf	((c:___aldiv@sign)),c
	goto	l2814
	line	18
	
l577:
	line	19
	
l2814:
	btfsc	((c:___aldiv@dividend+3)),c,7
	goto	u2640
	goto	u2641

u2641:
	goto	l2820
u2640:
	line	20
	
l2816:
	comf	((c:___aldiv@dividend+3)),c
	comf	((c:___aldiv@dividend+2)),c
	comf	((c:___aldiv@dividend+1)),c
	negf	((c:___aldiv@dividend)),c
	movlw	0
	addwfc	((c:___aldiv@dividend+1)),c
	addwfc	((c:___aldiv@dividend+2)),c
	addwfc	((c:___aldiv@dividend+3)),c
	line	21
	
l2818:
	movlw	(01h)&0ffh
	xorwf	((c:___aldiv@sign)),c
	goto	l2820
	line	22
	
l578:
	line	23
	
l2820:
	movlw	low(0)
	movwf	((c:___aldiv@quotient)),c
	movlw	high(0)
	movwf	((c:___aldiv@quotient+1)),c
	movlw	low highword(0)
	movwf	((c:___aldiv@quotient+2)),c
	movlw	high highword(0)
	movwf	((c:___aldiv@quotient+3)),c
	line	24
	
l2822:
	movf	((c:___aldiv@divisor)),c,w
iorwf	((c:___aldiv@divisor+1)),c,w
iorwf	((c:___aldiv@divisor+2)),c,w
iorwf	((c:___aldiv@divisor+3)),c,w
	btfsc	status,2
	goto	u2651
	goto	u2650

u2651:
	goto	l2842
u2650:
	line	25
	
l2824:
	movlw	low(01h)
	movwf	((c:___aldiv@counter)),c
	line	26
	goto	l2828
	
l581:
	line	27
	
l2826:
	bcf	status,0
	rlcf	((c:___aldiv@divisor)),c
	rlcf	((c:___aldiv@divisor+1)),c
	rlcf	((c:___aldiv@divisor+2)),c
	rlcf	((c:___aldiv@divisor+3)),c
	line	28
	incf	((c:___aldiv@counter)),c
	goto	l2828
	line	29
	
l580:
	line	26
	
l2828:
	
	btfss	((c:___aldiv@divisor+3)),c,(31)&7
	goto	u2661
	goto	u2660
u2661:
	goto	l2826
u2660:
	goto	l2830
	
l582:
	goto	l2830
	line	30
	
l583:
	line	31
	
l2830:
	bcf	status,0
	rlcf	((c:___aldiv@quotient)),c
	rlcf	((c:___aldiv@quotient+1)),c
	rlcf	((c:___aldiv@quotient+2)),c
	rlcf	((c:___aldiv@quotient+3)),c
	line	32
	
l2832:
		movf	((c:___aldiv@divisor)),c,w
	subwf	((c:___aldiv@dividend)),c,w
	movf	((c:___aldiv@divisor+1)),c,w
	subwfb	((c:___aldiv@dividend+1)),c,w
	movf	((c:___aldiv@divisor+2)),c,w
	subwfb	((c:___aldiv@dividend+2)),c,w
	movf	((c:___aldiv@divisor+3)),c,w
	subwfb	((c:___aldiv@dividend+3)),c,w
	btfss	status,0
	goto	u2671
	goto	u2670

u2671:
	goto	l2838
u2670:
	line	33
	
l2834:
	movf	((c:___aldiv@divisor)),c,w
	subwf	((c:___aldiv@dividend)),c
	movf	((c:___aldiv@divisor+1)),c,w
	subwfb	((c:___aldiv@dividend+1)),c
	movf	((c:___aldiv@divisor+2)),c,w
	subwfb	((c:___aldiv@dividend+2)),c
	movf	((c:___aldiv@divisor+3)),c,w
	subwfb	((c:___aldiv@dividend+3)),c
	line	34
	
l2836:
	bsf	(0+(0/8)+(c:___aldiv@quotient)),c,(0)&7
	goto	l2838
	line	35
	
l584:
	line	36
	
l2838:
	bcf	status,0
	rrcf	((c:___aldiv@divisor+3)),c
	rrcf	((c:___aldiv@divisor+2)),c
	rrcf	((c:___aldiv@divisor+1)),c
	rrcf	((c:___aldiv@divisor)),c
	line	37
	
l2840:
	decfsz	((c:___aldiv@counter)),c
	
	goto	l2830
	goto	l2842
	
l585:
	goto	l2842
	line	38
	
l579:
	line	39
	
l2842:
	movf	((c:___aldiv@sign)),c,w
	btfsc	status,2
	goto	u2681
	goto	u2680
u2681:
	goto	l2846
u2680:
	line	40
	
l2844:
	comf	((c:___aldiv@quotient+3)),c
	comf	((c:___aldiv@quotient+2)),c
	comf	((c:___aldiv@quotient+1)),c
	negf	((c:___aldiv@quotient)),c
	movlw	0
	addwfc	((c:___aldiv@quotient+1)),c
	addwfc	((c:___aldiv@quotient+2)),c
	addwfc	((c:___aldiv@quotient+3)),c
	goto	l2846
	
l586:
	line	41
	
l2846:
	movff	(c:___aldiv@quotient),(c:?___aldiv)
	movff	(c:___aldiv@quotient+1),(c:?___aldiv+1)
	movff	(c:___aldiv@quotient+2),(c:?___aldiv+2)
	movff	(c:___aldiv@quotient+3),(c:?___aldiv+3)
	goto	l587
	
l2848:
	line	42
	
l587:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
	signat	___aldiv,8316
	global	_computeAngle

;; *************** function _computeAngle *****************
;; Defined at:
;;		line 172 in file "D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\MPU-6050.c"
;; Parameters:    Size  Location     Type
;;  mode            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  mode            1    3[BANK1 ] unsigned char 
;;  angleSum        3    4[BANK1 ] float 
;;  dt              3    0[BANK1 ] float 
;;  rawGyroY        2   37[BANK1 ] int 
;;  rawAccZ         2   35[BANK1 ] int 
;;  rawAccY         2   33[BANK1 ] int 
;;  rawAccX         2   31[BANK1 ] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0      39       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0
;;      Totals:         0       4      39       0       0       0       0
;;Total ram usage:       43 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_DelayMs
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___ftneg
;;		___lltoft
;;		_atan
;;		_getAccelX
;;		_getAccelY
;;		_getAccelZ
;;		_getGyroY
;;		_pow
;;		_sqrt
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\MPU-6050.c"
	line	172
global __ptext6
__ptext6:
psect	text6
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\MPU-6050.c"
	line	172
	global	__size_of_computeAngle
	__size_of_computeAngle	equ	__end_of_computeAngle-_computeAngle
	
_computeAngle:
;incstack = 0
	opt	stack 23
;computeAngle@mode stored from wreg
	movlb	1	; () banked
	movwf	((computeAngle@mode))&0ffh
	line	177
	
l4752:
;MPU-6050.c: 173: signed int rawAccX, rawAccY, rawAccZ, rawGyroY;
;MPU-6050.c: 174: float angleSum;
;MPU-6050.c: 175: float dt;
;MPU-6050.c: 177: if (mode == 1){
	movlb	1	; () banked
		decf	((computeAngle@mode))&0ffh,w
	btfss	status,2
	goto	u6001
	goto	u6000

u6001:
	goto	l4784
u6000:
	line	178
	
l4754:; BSR set to: 1

;MPU-6050.c: 178: offsetAngle = 0;
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((_offsetAngle))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((_offsetAngle+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((_offsetAngle+2))&0ffh

	line	179
;MPU-6050.c: 179: for(i=0; i<100; i++){
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_i))&0ffh
	
l4756:; BSR set to: 0

		movlw	064h-1
	movlb	0	; () banked
	cpfsgt	((_i))&0ffh
	goto	u6011
	goto	u6010

u6011:
	goto	l4760
u6010:
	goto	l4780
	
l4758:; BSR set to: 0

	goto	l4780
	
l322:; BSR set to: 0

	line	180
	
l4760:; BSR set to: 0

;MPU-6050.c: 180: rawAccX = getAccelX();
	call	_getAccelX	;wreg free
	movff	0+?_getAccelX,(computeAngle@rawAccX)
	movff	1+?_getAccelX,(computeAngle@rawAccX+1)
	line	181
;MPU-6050.c: 181: rawAccY = getAccelY();
	call	_getAccelY	;wreg free
	movff	0+?_getAccelY,(computeAngle@rawAccY)
	movff	1+?_getAccelY,(computeAngle@rawAccY+1)
	line	182
;MPU-6050.c: 182: rawAccZ = getAccelZ();
	call	_getAccelZ	;wreg free
	movff	0+?_getAccelZ,(computeAngle@rawAccZ)
	movff	1+?_getAccelZ,(computeAngle@rawAccZ+1)
	line	183
;MPU-6050.c: 183: accX = (float) RADtoDEG * atan(rawAccX / sqrt(pow(rawAccY,2) + pow(rawAccZ,2)));
	movff	(computeAngle@rawAccZ),(c:___awtoft@c)
	movff	(computeAngle@rawAccZ+1),(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(_computeAngle$1189)
	movff	1+?___awtoft,(_computeAngle$1189+1)
	movff	2+?___awtoft,(_computeAngle$1189+2)
;MPU-6050.c: 183: accX = (float) RADtoDEG * atan(rawAccX / sqrt(pow(rawAccY,2) + pow(rawAccZ,2)));
	movff	(computeAngle@rawAccY),(c:___awtoft@c)
	movff	(computeAngle@rawAccY+1),(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(_computeAngle$1190)
	movff	1+?___awtoft,(_computeAngle$1190+1)
	movff	2+?___awtoft,(_computeAngle$1190+2)
	
l4762:
;MPU-6050.c: 183: accX = (float) RADtoDEG * atan(rawAccX / sqrt(pow(rawAccY,2) + pow(rawAccZ,2)));
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+2))&0ffh

	movff	(_computeAngle$1189),(pow@x)
	movff	(_computeAngle$1189+1),(pow@x+1)
	movff	(_computeAngle$1189+2),(pow@x+2)
	call	_pow	;wreg free
	movff	0+?_pow,(_computeAngle$1191)
	movff	1+?_pow,(_computeAngle$1191+1)
	movff	2+?_pow,(_computeAngle$1191+2)
	
l4764:
;MPU-6050.c: 183: accX = (float) RADtoDEG * atan(rawAccX / sqrt(pow(rawAccY,2) + pow(rawAccZ,2)));
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+2))&0ffh

	movff	(_computeAngle$1190),(pow@x)
	movff	(_computeAngle$1190+1),(pow@x+1)
	movff	(_computeAngle$1190+2),(pow@x+2)
	call	_pow	;wreg free
	movff	0+?_pow,(_computeAngle$1192)
	movff	1+?_pow,(_computeAngle$1192+1)
	movff	2+?_pow,(_computeAngle$1192+2)
;MPU-6050.c: 183: accX = (float) RADtoDEG * atan(rawAccX / sqrt(pow(rawAccY,2) + pow(rawAccZ,2)));
	movff	(_computeAngle$1191),(c:___ftadd@f2)
	movff	(_computeAngle$1191+1),(c:___ftadd@f2+1)
	movff	(_computeAngle$1191+2),(c:___ftadd@f2+2)
	movff	(_computeAngle$1192),(c:___ftadd@f1)
	movff	(_computeAngle$1192+1),(c:___ftadd@f1+1)
	movff	(_computeAngle$1192+2),(c:___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_computeAngle$1193)
	movff	1+?___ftadd,(_computeAngle$1193+1)
	movff	2+?___ftadd,(_computeAngle$1193+2)
;MPU-6050.c: 183: accX = (float) RADtoDEG * atan(rawAccX / sqrt(pow(rawAccY,2) + pow(rawAccZ,2)));
	movff	(_computeAngle$1193),(sqrt@a)
	movff	(_computeAngle$1193+1),(sqrt@a+1)
	movff	(_computeAngle$1193+2),(sqrt@a+2)
	call	_sqrt	;wreg free
	movff	0+?_sqrt,(___ftdiv@f2)
	movff	1+?_sqrt,(___ftdiv@f2+1)
	movff	2+?_sqrt,(___ftdiv@f2+2)
	movff	(computeAngle@rawAccX),(c:___awtoft@c)
	movff	(computeAngle@rawAccX+1),(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftdiv@f1)
	movff	1+?___awtoft,(___ftdiv@f1+1)
	movff	2+?___awtoft,(___ftdiv@f1+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(_computeAngle$1194)
	movff	1+?___ftdiv,(_computeAngle$1194+1)
	movff	2+?___ftdiv,(_computeAngle$1194+2)
	
l4766:
;MPU-6050.c: 183: accX = (float) RADtoDEG * atan(rawAccX / sqrt(pow(rawAccY,2) + pow(rawAccZ,2)));
	movff	(_computeAngle$1194),(atan@f)
	movff	(_computeAngle$1194+1),(atan@f+1)
	movff	(_computeAngle$1194+2),(atan@f+2)
	call	_atan	;wreg free
	movff	0+?_atan,(_computeAngle$1195)
	movff	1+?_atan,(_computeAngle$1195+1)
	movff	2+?_atan,(_computeAngle$1195+2)
	
l4768:
;MPU-6050.c: 183: accX = (float) RADtoDEG * atan(rawAccX / sqrt(pow(rawAccY,2) + pow(rawAccZ,2)));
	movff	(_computeAngle$1195),(___ftmul@f1)
	movff	(_computeAngle$1195+1),(___ftmul@f1+1)
	movff	(_computeAngle$1195+2),(___ftmul@f1+2)
	movlw	low((_RADtoDEG))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_RADtoDEG))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_RADtoDEG))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftmul@f2)
	tblrd*+
	
	movff	tablat,(___ftmul@f2+1)
	tblrd*-
	
	movff	tablat,(___ftmul@f2+2)

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(_accX)
	movff	1+?___ftmul,(_accX+1)
	movff	2+?___ftmul,(_accX+2)
	line	184
	
l4770:
;MPU-6050.c: 184: if (i==0){
	movlb	0	; () banked
	movf	((_i))&0ffh,w
	btfss	status,2
	goto	u6021
	goto	u6020
u6021:
	goto	l4774
u6020:
	line	185
	
l4772:; BSR set to: 0

;MPU-6050.c: 185: gyroY = accX;
	movff	(_accX),(c:_gyroY)
	movff	(_accX+1),(c:_gyroY+1)
	movff	(_accX+2),(c:_gyroY+2)
	line	186
;MPU-6050.c: 186: offsetAngle = accX;
	movff	(_accX),(_offsetAngle)
	movff	(_accX+1),(_offsetAngle+1)
	movff	(_accX+2),(_offsetAngle+2)
	line	187
;MPU-6050.c: 187: angleSum = (float) accX;
	movff	(_accX),(computeAngle@angleSum)
	movff	(_accX+1),(computeAngle@angleSum+1)
	movff	(_accX+2),(computeAngle@angleSum+2)
	line	188
;MPU-6050.c: 188: }
	goto	l325
	line	189
	
l324:; BSR set to: 0

	line	190
	
l4774:; BSR set to: 0

;MPU-6050.c: 189: else{
;MPU-6050.c: 190: rawGyroY = getGyroY();
	call	_getGyroY	;wreg free
	movff	0+?_getGyroY,(computeAngle@rawGyroY)
	movff	1+?_getGyroY,(computeAngle@rawGyroY+1)
	line	191
;MPU-6050.c: 191: gyroY = offsetAngle + (rawGyroY * 0.001 / 131.0);
	movlw	low(float24(131.00000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(131.00000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(131.00000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	movlw	low(float24(0.0010000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(0.0010000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(0.0010000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	movff	(computeAngle@rawGyroY),(c:___awtoft@c)
	movff	(computeAngle@rawGyroY+1),(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftmul@f1)
	movff	1+?___awtoft,(___ftmul@f1+1)
	movff	2+?___awtoft,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftdiv@f1)
	movff	1+?___ftmul,(___ftdiv@f1+1)
	movff	2+?___ftmul,(___ftdiv@f1+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:___ftadd@f1)
	movff	1+?___ftdiv,(c:___ftadd@f1+1)
	movff	2+?___ftdiv,(c:___ftadd@f1+2)
	movff	(_offsetAngle),(c:___ftadd@f2)
	movff	(_offsetAngle+1),(c:___ftadd@f2+1)
	movff	(_offsetAngle+2),(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:_gyroY)
	movff	1+?___ftadd,(c:_gyroY+1)
	movff	2+?___ftadd,(c:_gyroY+2)
	line	192
;MPU-6050.c: 192: offsetAngle = (float) alpha * gyroY + (1-alpha) * accX;
	movff	(_accX),(___ftmul@f2)
	movff	(_accX+1),(___ftmul@f2+1)
	movff	(_accX+2),(___ftmul@f2+2)
	movlw	low(float24(1.0000000000000000))
	movwf	((c:___ftadd@f2)),c
	movlw	high(float24(1.0000000000000000))
	movwf	((c:___ftadd@f2+1)),c
	movlw	low highword(float24(1.0000000000000000))
	movwf	((c:___ftadd@f2+2)),c

	movff	(_alpha),(c:___ftneg@f1)
	movff	(_alpha+1),(c:___ftneg@f1+1)
	movff	(_alpha+2),(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(c:___ftadd@f1)
	movff	1+?___ftneg,(c:___ftadd@f1+1)
	movff	2+?___ftneg,(c:___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(___ftmul@f1)
	movff	1+?___ftadd,(___ftmul@f1+1)
	movff	2+?___ftadd,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(_computeAngle$1196)
	movff	1+?___ftmul,(_computeAngle$1196+1)
	movff	2+?___ftmul,(_computeAngle$1196+2)
;MPU-6050.c: 192: offsetAngle = (float) alpha * gyroY + (1-alpha) * accX;
	movff	(c:_gyroY),(___ftmul@f2)
	movff	(c:_gyroY+1),(___ftmul@f2+1)
	movff	(c:_gyroY+2),(___ftmul@f2+2)
	movff	(_alpha),(___ftmul@f1)
	movff	(_alpha+1),(___ftmul@f1+1)
	movff	(_alpha+2),(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f1)
	movff	1+?___ftmul,(c:___ftadd@f1+1)
	movff	2+?___ftmul,(c:___ftadd@f1+2)
	movff	(_computeAngle$1196),(c:___ftadd@f2)
	movff	(_computeAngle$1196+1),(c:___ftadd@f2+1)
	movff	(_computeAngle$1196+2),(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_offsetAngle)
	movff	1+?___ftadd,(_offsetAngle+1)
	movff	2+?___ftadd,(_offsetAngle+2)
	line	193
;MPU-6050.c: 193: angleSum += offsetAngle;
	movff	(computeAngle@angleSum),(c:___ftadd@f1)
	movff	(computeAngle@angleSum+1),(c:___ftadd@f1+1)
	movff	(computeAngle@angleSum+2),(c:___ftadd@f1+2)
	movff	(_offsetAngle),(c:___ftadd@f2)
	movff	(_offsetAngle+1),(c:___ftadd@f2+1)
	movff	(_offsetAngle+2),(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(computeAngle@angleSum)
	movff	1+?___ftadd,(computeAngle@angleSum+1)
	movff	2+?___ftadd,(computeAngle@angleSum+2)
	line	194
	
l325:
	line	195
;MPU-6050.c: 194: }
;MPU-6050.c: 195: DelayMs(1);
	movlw	(01h)&0ffh
	
	call	_DelayMs
	line	179
	
l4776:
	movlb	0	; () banked
	incf	((_i))&0ffh
	
l4778:; BSR set to: 0

		movlw	064h-1
	movlb	0	; () banked
	cpfsgt	((_i))&0ffh
	goto	u6031
	goto	u6030

u6031:
	goto	l4760
u6030:
	goto	l4780
	
l323:; BSR set to: 0

	line	197
	
l4780:; BSR set to: 0

;MPU-6050.c: 196: }
;MPU-6050.c: 197: offsetAngle = angleSum / 100;
	movff	(computeAngle@angleSum),(___ftdiv@f1)
	movff	(computeAngle@angleSum+1),(___ftdiv@f1+1)
	movff	(computeAngle@angleSum+2),(___ftdiv@f1+2)
	movlw	low(float24(100.00000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(100.00000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(100.00000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(_offsetAngle)
	movff	1+?___ftdiv,(_offsetAngle+1)
	movff	2+?___ftdiv,(_offsetAngle+2)
	goto	l326
	line	198
	
l4782:
;MPU-6050.c: 198: return;
	goto	l326
	line	199
	
l321:
	line	201
	
l4784:
;MPU-6050.c: 199: }
;MPU-6050.c: 201: rawGyroY = getGyroY();
	call	_getGyroY	;wreg free
	movff	0+?_getGyroY,(computeAngle@rawGyroY)
	movff	1+?_getGyroY,(computeAngle@rawGyroY+1)
	line	203
;MPU-6050.c: 203: rawAccX = getAccelX();
	call	_getAccelX	;wreg free
	movff	0+?_getAccelX,(computeAngle@rawAccX)
	movff	1+?_getAccelX,(computeAngle@rawAccX+1)
	line	204
;MPU-6050.c: 204: rawAccY = getAccelY();
	call	_getAccelY	;wreg free
	movff	0+?_getAccelY,(computeAngle@rawAccY)
	movff	1+?_getAccelY,(computeAngle@rawAccY+1)
	line	205
;MPU-6050.c: 205: rawAccZ = getAccelZ();
	call	_getAccelZ	;wreg free
	movff	0+?_getAccelZ,(computeAngle@rawAccZ)
	movff	1+?_getAccelZ,(computeAngle@rawAccZ+1)
	line	207
;MPU-6050.c: 207: dt = (float) (millis - sensMillis)/1000.0;
	movff	(_sensMillis),??_computeAngle+0+0
	movff	(_sensMillis+1),??_computeAngle+0+0+1
	movff	(_sensMillis+2),??_computeAngle+0+0+2
	movff	(_sensMillis+3),??_computeAngle+0+0+3
	movlb	0	; () banked
	comf	(??_computeAngle+0+0)&0ffh
	comf	(??_computeAngle+0+1)&0ffh
	comf	(??_computeAngle+0+2)&0ffh
	comf	(??_computeAngle+0+3)&0ffh
	incf	(??_computeAngle+0+0)&0ffh
	movlw	0
	addwfc	(??_computeAngle+0+1)&0ffh
	addwfc	(??_computeAngle+0+2)&0ffh
	addwfc	(??_computeAngle+0+3)&0ffh
	movlb	0	; () banked
	movf	((_millis))&0ffh,w
	movlb	0	; () banked
	addwf	(??_computeAngle+0+0)&0ffh,w
	movwf	((c:___lltoft@c)),c
	movlb	0	; () banked
	movf	((_millis+1))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_computeAngle+0+1)&0ffh,w
	movwf	1+((c:___lltoft@c)),c
	
	movlb	0	; () banked
	movf	((_millis+2))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_computeAngle+0+2)&0ffh,w
	movwf	2+((c:___lltoft@c)),c
	
	movlb	0	; () banked
	movf	((_millis+3))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_computeAngle+0+3)&0ffh,w
	movwf	3+((c:___lltoft@c)),c
	call	___lltoft	;wreg free
	movff	0+?___lltoft,(___ftdiv@f1)
	movff	1+?___lltoft,(___ftdiv@f1+1)
	movff	2+?___lltoft,(___ftdiv@f1+2)
	movlw	low(float24(1000.0000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(1000.0000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(1000.0000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(computeAngle@dt)
	movff	1+?___ftdiv,(computeAngle@dt+1)
	movff	2+?___ftdiv,(computeAngle@dt+2)
	line	208
	
l4786:
;MPU-6050.c: 208: sensMillis = millis;
	movff	(_millis),(_sensMillis)
	movff	(_millis+1),(_sensMillis+1)
	movff	(_millis+2),(_sensMillis+2)
	movff	(_millis+3),(_sensMillis+3)
	line	209
;MPU-6050.c: 209: gyroY = (float) currentAngle + (rawGyroY * dt /131.0);
	movlw	low(float24(131.00000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2))&0ffh
	movlw	high(float24(131.00000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(float24(131.00000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f2+2))&0ffh

	movff	(computeAngle@dt),(___ftmul@f2)
	movff	(computeAngle@dt+1),(___ftmul@f2+1)
	movff	(computeAngle@dt+2),(___ftmul@f2+2)
	movff	(computeAngle@rawGyroY),(c:___awtoft@c)
	movff	(computeAngle@rawGyroY+1),(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftmul@f1)
	movff	1+?___awtoft,(___ftmul@f1+1)
	movff	2+?___awtoft,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftdiv@f1)
	movff	1+?___ftmul,(___ftdiv@f1+1)
	movff	2+?___ftmul,(___ftdiv@f1+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:___ftadd@f1)
	movff	1+?___ftdiv,(c:___ftadd@f1+1)
	movff	2+?___ftdiv,(c:___ftadd@f1+2)
	movff	(_currentAngle),(c:___ftadd@f2)
	movff	(_currentAngle+1),(c:___ftadd@f2+1)
	movff	(_currentAngle+2),(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:_gyroY)
	movff	1+?___ftadd,(c:_gyroY+1)
	movff	2+?___ftadd,(c:_gyroY+2)
	line	211
;MPU-6050.c: 211: accX = (float) RADtoDEG * atan(rawAccX / sqrt(pow(rawAccY,2) + pow(rawAccZ,2)));
	movff	(computeAngle@rawAccZ),(c:___awtoft@c)
	movff	(computeAngle@rawAccZ+1),(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(_computeAngle$1189)
	movff	1+?___awtoft,(_computeAngle$1189+1)
	movff	2+?___awtoft,(_computeAngle$1189+2)
;MPU-6050.c: 211: accX = (float) RADtoDEG * atan(rawAccX / sqrt(pow(rawAccY,2) + pow(rawAccZ,2)));
	movff	(computeAngle@rawAccY),(c:___awtoft@c)
	movff	(computeAngle@rawAccY+1),(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(_computeAngle$1190)
	movff	1+?___awtoft,(_computeAngle$1190+1)
	movff	2+?___awtoft,(_computeAngle$1190+2)
	
l4788:
;MPU-6050.c: 211: accX = (float) RADtoDEG * atan(rawAccX / sqrt(pow(rawAccY,2) + pow(rawAccZ,2)));
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+2))&0ffh

	movff	(_computeAngle$1189),(pow@x)
	movff	(_computeAngle$1189+1),(pow@x+1)
	movff	(_computeAngle$1189+2),(pow@x+2)
	call	_pow	;wreg free
	movff	0+?_pow,(_computeAngle$1191)
	movff	1+?_pow,(_computeAngle$1191+1)
	movff	2+?_pow,(_computeAngle$1191+2)
	
l4790:
;MPU-6050.c: 211: accX = (float) RADtoDEG * atan(rawAccX / sqrt(pow(rawAccY,2) + pow(rawAccZ,2)));
	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((pow@y+2))&0ffh

	movff	(_computeAngle$1190),(pow@x)
	movff	(_computeAngle$1190+1),(pow@x+1)
	movff	(_computeAngle$1190+2),(pow@x+2)
	call	_pow	;wreg free
	movff	0+?_pow,(_computeAngle$1192)
	movff	1+?_pow,(_computeAngle$1192+1)
	movff	2+?_pow,(_computeAngle$1192+2)
;MPU-6050.c: 211: accX = (float) RADtoDEG * atan(rawAccX / sqrt(pow(rawAccY,2) + pow(rawAccZ,2)));
	movff	(_computeAngle$1191),(c:___ftadd@f2)
	movff	(_computeAngle$1191+1),(c:___ftadd@f2+1)
	movff	(_computeAngle$1191+2),(c:___ftadd@f2+2)
	movff	(_computeAngle$1192),(c:___ftadd@f1)
	movff	(_computeAngle$1192+1),(c:___ftadd@f1+1)
	movff	(_computeAngle$1192+2),(c:___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_computeAngle$1193)
	movff	1+?___ftadd,(_computeAngle$1193+1)
	movff	2+?___ftadd,(_computeAngle$1193+2)
;MPU-6050.c: 211: accX = (float) RADtoDEG * atan(rawAccX / sqrt(pow(rawAccY,2) + pow(rawAccZ,2)));
	movff	(_computeAngle$1193),(sqrt@a)
	movff	(_computeAngle$1193+1),(sqrt@a+1)
	movff	(_computeAngle$1193+2),(sqrt@a+2)
	call	_sqrt	;wreg free
	movff	0+?_sqrt,(___ftdiv@f2)
	movff	1+?_sqrt,(___ftdiv@f2+1)
	movff	2+?_sqrt,(___ftdiv@f2+2)
	movff	(computeAngle@rawAccX),(c:___awtoft@c)
	movff	(computeAngle@rawAccX+1),(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftdiv@f1)
	movff	1+?___awtoft,(___ftdiv@f1+1)
	movff	2+?___awtoft,(___ftdiv@f1+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(_computeAngle$1194)
	movff	1+?___ftdiv,(_computeAngle$1194+1)
	movff	2+?___ftdiv,(_computeAngle$1194+2)
	
l4792:
;MPU-6050.c: 211: accX = (float) RADtoDEG * atan(rawAccX / sqrt(pow(rawAccY,2) + pow(rawAccZ,2)));
	movff	(_computeAngle$1194),(atan@f)
	movff	(_computeAngle$1194+1),(atan@f+1)
	movff	(_computeAngle$1194+2),(atan@f+2)
	call	_atan	;wreg free
	movff	0+?_atan,(_computeAngle$1195)
	movff	1+?_atan,(_computeAngle$1195+1)
	movff	2+?_atan,(_computeAngle$1195+2)
	
l4794:
;MPU-6050.c: 211: accX = (float) RADtoDEG * atan(rawAccX / sqrt(pow(rawAccY,2) + pow(rawAccZ,2)));
	movff	(_computeAngle$1195),(___ftmul@f1)
	movff	(_computeAngle$1195+1),(___ftmul@f1+1)
	movff	(_computeAngle$1195+2),(___ftmul@f1+2)
	movlw	low((_RADtoDEG))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_RADtoDEG))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_RADtoDEG))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___ftmul@f2)
	tblrd*+
	
	movff	tablat,(___ftmul@f2+1)
	tblrd*-
	
	movff	tablat,(___ftmul@f2+2)

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(_accX)
	movff	1+?___ftmul,(_accX+1)
	movff	2+?___ftmul,(_accX+2)
	line	212
	
l4796:
;MPU-6050.c: 212: currentAngle = (float) alpha * gyroY + (1-alpha) * accX;
	movff	(_accX),(___ftmul@f2)
	movff	(_accX+1),(___ftmul@f2+1)
	movff	(_accX+2),(___ftmul@f2+2)
	movlw	low(float24(1.0000000000000000))
	movwf	((c:___ftadd@f2)),c
	movlw	high(float24(1.0000000000000000))
	movwf	((c:___ftadd@f2+1)),c
	movlw	low highword(float24(1.0000000000000000))
	movwf	((c:___ftadd@f2+2)),c

	movff	(_alpha),(c:___ftneg@f1)
	movff	(_alpha+1),(c:___ftneg@f1+1)
	movff	(_alpha+2),(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(c:___ftadd@f1)
	movff	1+?___ftneg,(c:___ftadd@f1+1)
	movff	2+?___ftneg,(c:___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(___ftmul@f1)
	movff	1+?___ftadd,(___ftmul@f1+1)
	movff	2+?___ftadd,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(_computeAngle$1196)
	movff	1+?___ftmul,(_computeAngle$1196+1)
	movff	2+?___ftmul,(_computeAngle$1196+2)
	
l4798:
;MPU-6050.c: 212: currentAngle = (float) alpha * gyroY + (1-alpha) * accX;
	movff	(c:_gyroY),(___ftmul@f2)
	movff	(c:_gyroY+1),(___ftmul@f2+1)
	movff	(c:_gyroY+2),(___ftmul@f2+2)
	movff	(_alpha),(___ftmul@f1)
	movff	(_alpha+1),(___ftmul@f1+1)
	movff	(_alpha+2),(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f1)
	movff	1+?___ftmul,(c:___ftadd@f1+1)
	movff	2+?___ftmul,(c:___ftadd@f1+2)
	movff	(_computeAngle$1196),(c:___ftadd@f2)
	movff	(_computeAngle$1196+1),(c:___ftadd@f2+1)
	movff	(_computeAngle$1196+2),(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_currentAngle)
	movff	1+?___ftadd,(_currentAngle+1)
	movff	2+?___ftadd,(_currentAngle+2)
	line	213
	
l326:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_computeAngle
	__end_of_computeAngle:
	signat	_computeAngle,4217
	global	_sqrt

;; *************** function _sqrt *****************
;; Defined at:
;;		line 9 in file "C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\sprcsqrt.c"
;; Parameters:    Size  Location     Type
;;  a               3   62[BANK0 ] void 
;; Auto vars:     Size  Location     Type
;;  x               3   78[BANK0 ] void 
;;  q               3   75[BANK0 ] void 
;;  z               3   71[BANK0 ] void 
;;  og              3   68[BANK0 ] void 
;;  i               1   74[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   62[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       3       0       0       0       0       0
;;      Locals:         0      13       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0
;;      Totals:         0      19       0       0       0       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftge
;;		___ftmul
;;		___ftsub
;; This function is called by:
;;		_computeAngle
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\sprcsqrt.c"
	line	9
global __ptext7
__ptext7:
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\sprcsqrt.c"
	line	9
	global	__size_of_sqrt
	__size_of_sqrt	equ	__end_of_sqrt-_sqrt
	
_sqrt:
;incstack = 0
	opt	stack 24
	line	138
	
l4652:
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+2))&0ffh

	movff	(sqrt@a),(___ftge@ff2)
	movff	(sqrt@a+1),(___ftge@ff2+1)
	movff	(sqrt@a+2),(___ftge@ff2+2)
	call	___ftge	;wreg free
	movlb	0	; () banked
	btfss	status,0
	goto	u5821
	goto	u5820
u5821:
	goto	l1157
u5820:
	line	139
	
l4654:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((sqrt@a+2))&0ffh,7
	goto	u5830
	goto	u5831

u5831:
	goto	l1158
u5830:
	line	140
	
l4656:; BSR set to: 0

	movlw	high(021h)
	movwf	((c:_errno+1)),c
	movlw	low(021h)
	movwf	((c:_errno)),c
	line	141
	
l1158:; BSR set to: 0

	line	142
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_sqrt))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_sqrt+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_sqrt+2))&0ffh

	goto	l1159
	
l4658:; BSR set to: 0

	goto	l1159
	line	143
	
l1157:; BSR set to: 0

	line	144
	movff	(sqrt@a),(sqrt@z)
	movff	(sqrt@a+1),(sqrt@z+1)
	movff	(sqrt@a+2),(sqrt@z+2)
	line	145
	
l4660:; BSR set to: 0

	movff	(sqrt@a),??_sqrt+0+0
	movff	(sqrt@a+1),??_sqrt+0+0+1
	movff	(sqrt@a+2),??_sqrt+0+0+2
	movlb	0	; () banked
	comf	(??_sqrt+0+0)&0ffh
	comf	(??_sqrt+0+1)&0ffh
	comf	(??_sqrt+0+2)&0ffh
	incf	(??_sqrt+0+0)&0ffh
	movlw	0
	addwfc	(??_sqrt+0+1)&0ffh
	addwfc	(??_sqrt+0+2)&0ffh

	movlw	low(0BE6EC8h)
	movlb	0	; () banked
	addwf	(??_sqrt+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((sqrt@x))&0ffh
	movlw	06Eh
	movlb	0	; () banked
	addwfc	(??_sqrt+0+1)&0ffh,w
	movlb	0	; () banked
	movwf	1+((sqrt@x))&0ffh
	
	movlw	0BEh
	movlb	0	; () banked
	addwfc	(??_sqrt+0+2)&0ffh,w
	movlb	0	; () banked
	movwf	2+((sqrt@x))&0ffh
	line	146
	
l4662:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rrcf	((sqrt@x+2))&0ffh
	rrcf	((sqrt@x+1))&0ffh
	rrcf	((sqrt@x))&0ffh
	line	147
	
l4664:; BSR set to: 0

	movlw	low(08000h)
	movlb	0	; () banked
	subwf	((sqrt@z))&0ffh
	movlw	high(08000h)
	movlb	0	; () banked
	subwfb	((sqrt@z+1))&0ffh
	movlw	low highword(08000h)
	movlb	0	; () banked
	subwfb	((sqrt@z+2))&0ffh

	line	148
	
l4666:; BSR set to: 0

	movlw	low(04h)
	movlb	0	; () banked
	movwf	((sqrt@i))&0ffh
	goto	l4668
	line	149
	
l1160:; BSR set to: 0

	line	150
	
l4668:; BSR set to: 0

	movff	(sqrt@x),(sqrt@og)
	movff	(sqrt@x+1),(sqrt@og+1)
	movff	(sqrt@x+2),(sqrt@og+2)
	line	151
	
l4670:; BSR set to: 0

	movff	(sqrt@x),(___ftmul@f1)
	movff	(sqrt@x+1),(___ftmul@f1+1)
	movff	(sqrt@x+2),(___ftmul@f1+2)
	movff	(sqrt@z),(___ftmul@f2)
	movff	(sqrt@z+1),(___ftmul@f2+1)
	movff	(sqrt@z+2),(___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(sqrt@q)
	movff	1+?___ftmul,(sqrt@q+1)
	movff	2+?___ftmul,(sqrt@q+2)
	line	152
	
l4672:
	movff	(sqrt@q),(___ftmul@f1)
	movff	(sqrt@q+1),(___ftmul@f1+1)
	movff	(sqrt@q+2),(___ftmul@f1+2)
	movff	(sqrt@x),(___ftmul@f2)
	movff	(sqrt@x+1),(___ftmul@f2+1)
	movff	(sqrt@x+2),(___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(sqrt@q)
	movff	1+?___ftmul,(sqrt@q+1)
	movff	2+?___ftmul,(sqrt@q+2)
	line	153
	
l4674:
	movff	(sqrt@q),(___ftmul@f1)
	movff	(sqrt@q+1),(___ftmul@f1+1)
	movff	(sqrt@q+2),(___ftmul@f1+2)
	movff	(sqrt@x),(___ftmul@f2)
	movff	(sqrt@x+1),(___ftmul@f2+1)
	movff	(sqrt@x+2),(___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(sqrt@q)
	movff	1+?___ftmul,(sqrt@q+1)
	movff	2+?___ftmul,(sqrt@q+2)
	line	154
	
l4676:
	movff	(sqrt@x),(___ftmul@f1)
	movff	(sqrt@x+1),(___ftmul@f1+1)
	movff	(sqrt@x+2),(___ftmul@f1+2)
	movlw	low(float24(1.5000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(1.5000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(1.5000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(sqrt@x)
	movff	1+?___ftmul,(sqrt@x+1)
	movff	2+?___ftmul,(sqrt@x+2)
	line	155
	
l4678:
	movff	(sqrt@x),(___ftsub@f1)
	movff	(sqrt@x+1),(___ftsub@f1+1)
	movff	(sqrt@x+2),(___ftsub@f1+2)
	movff	(sqrt@q),(___ftsub@f2)
	movff	(sqrt@q+1),(___ftsub@f2+1)
	movff	(sqrt@q+2),(___ftsub@f2+2)
	call	___ftsub	;wreg free
	movff	0+?___ftsub,(sqrt@x)
	movff	1+?___ftsub,(sqrt@x+1)
	movff	2+?___ftsub,(sqrt@x+2)
	line	156
	
l4680:
	movlb	0	; () banked
	decfsz	((sqrt@i))&0ffh
	
	goto	l4668
	goto	l4682
	
l1161:; BSR set to: 0

	line	157
	
l4682:; BSR set to: 0

	movff	(sqrt@x),(___ftmul@f1)
	movff	(sqrt@x+1),(___ftmul@f1+1)
	movff	(sqrt@x+2),(___ftmul@f1+2)
	movff	(sqrt@a),(___ftmul@f2)
	movff	(sqrt@a+1),(___ftmul@f2+1)
	movff	(sqrt@a+2),(___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(?_sqrt)
	movff	1+?___ftmul,(?_sqrt+1)
	movff	2+?___ftmul,(?_sqrt+2)
	goto	l1159
	
l4684:
	line	159
	
l1159:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_sqrt
	__end_of_sqrt:
	signat	_sqrt,4219
	global	_pow

;; *************** function _pow *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\pow.c"
;; Parameters:    Size  Location     Type
;;  x               3   45[BANK0 ] unsigned char 
;;  y               3   48[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  yi              4   58[BANK0 ] unsigned long 
;;  sign            1   57[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   45[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       6       0       0       0       0       0
;;      Locals:         0      11       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0      17       0       0       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___fttol
;;		___lltoft
;;		_exp
;;		_log
;; This function is called by:
;;		_computeAngle
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\pow.c"
	line	5
global __ptext8
__ptext8:
psect	text8
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\pow.c"
	line	5
	global	__size_of_pow
	__size_of_pow	equ	__end_of_pow-_pow
	
_pow:
;incstack = 0
	opt	stack 23
	line	7
	
l4612:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((pow@sign))&0ffh
	line	10
	
l4614:; BSR set to: 0

	movlb	0	; () banked
	movf	((pow@x))&0ffh,w
	movlb	0	; () banked
iorwf	((pow@x+1))&0ffh,w
	movlb	0	; () banked
iorwf	((pow@x+2))&0ffh,w
	btfss	status,2
	goto	u5761
	goto	u5760

u5761:
	goto	l4622
u5760:
	line	11
	
l4616:; BSR set to: 0

	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+2))&0ffh

	movff	(pow@y),(___ftge@ff2)
	movff	(pow@y+1),(___ftge@ff2+1)
	movff	(pow@y+2),(___ftge@ff2+2)
	call	___ftge	;wreg free
	movlb	0	; () banked
	btfss	status,0
	goto	u5771
	goto	u5770
u5771:
	goto	l1023
u5770:
	line	12
	
l4618:; BSR set to: 0

	movlw	high(021h)
	movwf	((c:_errno+1)),c
	movlw	low(021h)
	movwf	((c:_errno)),c
	line	13
	
l1023:; BSR set to: 0

	line	14
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_pow))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_pow+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_pow+2))&0ffh

	goto	l1024
	
l4620:; BSR set to: 0

	goto	l1024
	line	15
	
l1022:; BSR set to: 0

	line	16
	
l4622:; BSR set to: 0

	movlb	0	; () banked
	movf	((pow@y))&0ffh,w
	movlb	0	; () banked
iorwf	((pow@y+1))&0ffh,w
	movlb	0	; () banked
iorwf	((pow@y+2))&0ffh,w
	btfss	status,2
	goto	u5781
	goto	u5780

u5781:
	goto	l4628
u5780:
	line	17
	
l4624:; BSR set to: 0

	movlw	low(float24(1.0000000000000000))
	movlb	0	; () banked
	movwf	((?_pow))&0ffh
	movlw	high(float24(1.0000000000000000))
	movlb	0	; () banked
	movwf	((?_pow+1))&0ffh
	movlw	low highword(float24(1.0000000000000000))
	movlb	0	; () banked
	movwf	((?_pow+2))&0ffh

	goto	l1024
	
l4626:; BSR set to: 0

	goto	l1024
	
l1025:; BSR set to: 0

	line	18
	
l4628:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((pow@x+2))&0ffh,7
	goto	u5790
	goto	u5791

u5791:
	goto	l4640
u5790:
	line	19
	
l4630:; BSR set to: 0

	movff	(pow@y),(c:___fttol@f1)
	movff	(pow@y+1),(c:___fttol@f1+1)
	movff	(pow@y+2),(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(pow@yi)
	movff	1+?___fttol,(pow@yi+1)
	movff	2+?___fttol,(pow@yi+2)
	movff	3+?___fttol,(pow@yi+3)
	
	line	20
	movff	(pow@yi),(c:___lltoft@c)
	movff	(pow@yi+1),(c:___lltoft@c+1)
	movff	(pow@yi+2),(c:___lltoft@c+2)
	movff	(pow@yi+3),(c:___lltoft@c+3)
	call	___lltoft	;wreg free
	movlb	0	; () banked
	movf	((pow@y))&0ffh,w
xorwf	(0+?___lltoft),c,w
	bnz	u5800
	movlb	0	; () banked
movf	((pow@y+1))&0ffh,w
xorwf	(1+?___lltoft),c,w
	bnz	u5800
	movlb	0	; () banked
movf	((pow@y+2))&0ffh,w
xorwf	(2+?___lltoft),c,w
	btfsc	status,2
	goto	u5801
	goto	u5800

u5801:
	goto	l4636
u5800:
	line	21
	
l4632:; BSR set to: 0

	movlw	high(021h)
	movwf	((c:_errno+1)),c
	movlw	low(021h)
	movwf	((c:_errno)),c
	line	22
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_pow))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_pow+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_pow+2))&0ffh

	goto	l1024
	
l4634:; BSR set to: 0

	goto	l1024
	line	23
	
l1027:; BSR set to: 0

	line	24
	
l4636:; BSR set to: 0

	movlb	0	; () banked
	movf	((pow@yi))&0ffh,w
	andlw	low(01h)
	movlb	0	; () banked
	movwf	((pow@sign))&0ffh
	line	25
	
l4638:; BSR set to: 0

	movff	(pow@x),(c:___ftneg@f1)
	movff	(pow@x+1),(c:___ftneg@f1+1)
	movff	(pow@x+2),(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(pow@x)
	movff	1+?___ftneg,(pow@x+1)
	movff	2+?___ftneg,(pow@x+2)
	goto	l4640
	line	26
	
l1026:
	line	27
	
l4640:
	movff	(pow@x),(log@x)
	movff	(pow@x+1),(log@x+1)
	movff	(pow@x+2),(log@x+2)
	call	_log	;wreg free
	movff	0+?_log,(_pow$1203)
	movff	1+?_log,(_pow$1203+1)
	movff	2+?_log,(_pow$1203+2)
	
l4642:
	movff	(_pow$1203),(___ftmul@f1)
	movff	(_pow$1203+1),(___ftmul@f1+1)
	movff	(_pow$1203+2),(___ftmul@f1+2)
	movff	(pow@y),(___ftmul@f2)
	movff	(pow@y+1),(___ftmul@f2+1)
	movff	(pow@y+2),(___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(_pow$1204)
	movff	1+?___ftmul,(_pow$1204+1)
	movff	2+?___ftmul,(_pow$1204+2)
	
l4644:
	movff	(_pow$1204),(exp@x)
	movff	(_pow$1204+1),(exp@x+1)
	movff	(_pow$1204+2),(exp@x+2)
	call	_exp	;wreg free
	movff	0+?_exp,(pow@x)
	movff	1+?_exp,(pow@x+1)
	movff	2+?_exp,(pow@x+2)
	line	28
	
l4646:
	movlb	0	; () banked
	movf	((pow@sign))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u5811
	goto	u5810
u5811:
	goto	l1028
u5810:
	line	29
	
l4648:; BSR set to: 0

	movff	(pow@x),(c:___ftneg@f1)
	movff	(pow@x+1),(c:___ftneg@f1+1)
	movff	(pow@x+2),(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(?_pow)
	movff	1+?___ftneg,(?_pow+1)
	movff	2+?___ftneg,(?_pow+2)
	goto	l1024
	
l4650:
	goto	l1024
	
l1028:; BSR set to: 0

	line	30
	movff	(pow@x),(?_pow)
	movff	(pow@x+1),(?_pow+1)
	movff	(pow@x+2),(?_pow+2)
	line	31
	
l1024:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_pow
	__end_of_pow:
	signat	_pow,8315
	global	_log

;; *************** function _log *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\log.c"
;; Parameters:    Size  Location     Type
;;  x               3   24[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exponent        2   27[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   24[BANK0 ] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       3       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___awtoft
;;		___ftadd
;;		___ftmul
;;		_eval_poly
;;		_frexp
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\log.c"
	line	5
global __ptext9
__ptext9:
psect	text9
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\log.c"
	line	5
	global	__size_of_log
	__size_of_log	equ	__end_of_log-_log
	
_log:
;incstack = 0
	opt	stack 23
	line	24
	
l4418:
	movlb	0	; () banked
	btfsc	((log@x+2))&0ffh,7
	goto	u5320
	goto	u5321

u5321:
	goto	l4424
u5320:
	line	25
	
l4420:; BSR set to: 0

	movlw	high(021h)
	movwf	((c:_errno+1)),c
	movlw	low(021h)
	movwf	((c:_errno)),c
	line	26
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_log))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_log+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_log+2))&0ffh

	goto	l1244
	
l4422:; BSR set to: 0

	goto	l1244
	line	27
	
l1243:; BSR set to: 0

	line	28
	
l4424:; BSR set to: 0

	movlb	0	; () banked
	movf	((log@x))&0ffh,w
	movlb	0	; () banked
iorwf	((log@x+1))&0ffh,w
	movlb	0	; () banked
iorwf	((log@x+2))&0ffh,w
	btfss	status,2
	goto	u5331
	goto	u5330

u5331:
	goto	l4430
u5330:
	line	29
	
l4426:; BSR set to: 0

	movlw	high(022h)
	movwf	((c:_errno+1)),c
	movlw	low(022h)
	movwf	((c:_errno)),c
	line	30
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_log))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_log+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_log+2))&0ffh

	goto	l1244
	
l4428:; BSR set to: 0

	goto	l1244
	line	31
	
l1245:; BSR set to: 0

	line	32
	
l4430:; BSR set to: 0

	movlw	low(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(2.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

		movlw	low(log@exponent)
	movwf	((c:frexp@eptr)),c
	movlw	high(log@exponent)
	movwf	((c:frexp@eptr+1)),c

	movff	(log@x),(c:frexp@value)
	movff	(log@x+1),(c:frexp@value+1)
	movff	(log@x+2),(c:frexp@value+2)
	call	_frexp	;wreg free
	movff	0+?_frexp,(___ftmul@f1)
	movff	1+?_frexp,(___ftmul@f1+1)
	movff	2+?_frexp,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f1)
	movff	1+?___ftmul,(c:___ftadd@f1+1)
	movff	2+?___ftmul,(c:___ftadd@f1+2)
	movlw	low(float24(-1.0000000000000000))
	movwf	((c:___ftadd@f2)),c
	movlw	high(float24(-1.0000000000000000))
	movwf	((c:___ftadd@f2+1)),c
	movlw	low highword(float24(-1.0000000000000000))
	movwf	((c:___ftadd@f2+2)),c

	call	___ftadd	;wreg free
	movff	0+?___ftadd,(log@x)
	movff	1+?___ftadd,(log@x+1)
	movff	2+?___ftadd,(log@x+2)
	line	33
	
l4432:
	movlb	0	; () banked
	decf	((log@exponent))&0ffh
	btfss	status,0
	decf	((log@exponent+1))&0ffh
	line	34
	
l4434:; BSR set to: 0

	movff	(log@x),(eval_poly@x)
	movff	(log@x+1),(eval_poly@x+1)
	movff	(log@x+2),(eval_poly@x+2)
		movlw	low(log@coeff)
	movlb	0	; () banked
	movwf	((eval_poly@d))&0ffh
	movlw	high(log@coeff)
	movlb	0	; () banked
	movwf	((eval_poly@d+1))&0ffh

	movlw	high(08h)
	movlb	0	; () banked
	movwf	((eval_poly@n+1))&0ffh
	movlw	low(08h)
	movwf	((eval_poly@n))&0ffh
	call	_eval_poly	;wreg free
	movff	0+?_eval_poly,(log@x)
	movff	1+?_eval_poly,(log@x+1)
	movff	2+?_eval_poly,(log@x+2)
	line	35
	
l4436:
	movlw	low(float24(0.69314718055994995))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(0.69314718055994995))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(0.69314718055994995))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	movff	(log@exponent),(c:___awtoft@c)
	movff	(log@exponent+1),(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftmul@f1)
	movff	1+?___awtoft,(___ftmul@f1+1)
	movff	2+?___awtoft,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f1)
	movff	1+?___ftmul,(c:___ftadd@f1+1)
	movff	2+?___ftmul,(c:___ftadd@f1+2)
	movff	(log@x),(c:___ftadd@f2)
	movff	(log@x+1),(c:___ftadd@f2+1)
	movff	(log@x+2),(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(?_log)
	movff	1+?___ftadd,(?_log+1)
	movff	2+?___ftadd,(?_log+2)
	goto	l1244
	
l4438:
	line	36
	
l1244:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_log
	__end_of_log:
	signat	_log,4219
	global	_exp

;; *************** function _exp *****************
;; Defined at:
;;		line 12 in file "C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\exp.c"
;; Parameters:    Size  Location     Type
;;  x               3   36[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  exponent        2   42[BANK0 ] int 
;;  sign            1   44[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   36[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       3       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       9       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___awtoft
;;		___ftdiv
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___ftsub
;;		___fttol
;;		_eval_poly
;;		_floor
;;		_ldexp
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\exp.c"
	line	12
global __ptext10
__ptext10:
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\exp.c"
	line	12
	global	__size_of_exp
	__size_of_exp	equ	__end_of_exp-_exp
	
_exp:
;incstack = 0
	opt	stack 23
	line	31
	
l4440:
	movlb	0	; () banked
	movf	((exp@x))&0ffh,w
	movlb	0	; () banked
iorwf	((exp@x+1))&0ffh,w
	movlb	0	; () banked
iorwf	((exp@x+2))&0ffh,w
	btfss	status,2
	goto	u5341
	goto	u5340

u5341:
	goto	l4446
u5340:
	line	32
	
l4442:; BSR set to: 0

	movlw	low(float24(1.0000000000000000))
	movlb	0	; () banked
	movwf	((?_exp))&0ffh
	movlw	high(float24(1.0000000000000000))
	movlb	0	; () banked
	movwf	((?_exp+1))&0ffh
	movlw	low highword(float24(1.0000000000000000))
	movlb	0	; () banked
	movwf	((?_exp+2))&0ffh

	goto	l1202
	
l4444:; BSR set to: 0

	goto	l1202
	
l1201:; BSR set to: 0

	line	34
	
l4446:; BSR set to: 0

	movlw	low(float24(709.78271289338397))
	movlb	0	; () banked
	movwf	((___ftge@ff1))&0ffh
	movlw	high(float24(709.78271289338397))
	movlb	0	; () banked
	movwf	((___ftge@ff1+1))&0ffh
	movlw	low highword(float24(709.78271289338397))
	movlb	0	; () banked
	movwf	((___ftge@ff1+2))&0ffh

	movff	(exp@x),(___ftge@ff2)
	movff	(exp@x+1),(___ftge@ff2+1)
	movff	(exp@x+2),(___ftge@ff2+2)
	call	___ftge	;wreg free
	movlb	0	; () banked
	btfsc	status,0
	goto	u5351
	goto	u5350
u5351:
	goto	l4452
u5350:
	line	35
	
l4448:; BSR set to: 0

	movlw	high(022h)
	movwf	((c:_errno+1)),c
	movlw	low(022h)
	movwf	((c:_errno)),c
	line	36
	movlw	low(float24(3.4027699999999999e+038))
	movlb	0	; () banked
	movwf	((?_exp))&0ffh
	movlw	high(float24(3.4027699999999999e+038))
	movlb	0	; () banked
	movwf	((?_exp+1))&0ffh
	movlw	low highword(float24(3.4027699999999999e+038))
	movlb	0	; () banked
	movwf	((?_exp+2))&0ffh

	goto	l1202
	
l4450:; BSR set to: 0

	goto	l1202
	line	37
	
l1203:; BSR set to: 0

	line	38
	
l4452:; BSR set to: 0

	movff	(exp@x),(___ftge@ff1)
	movff	(exp@x+1),(___ftge@ff1+1)
	movff	(exp@x+2),(___ftge@ff1+2)
	movlw	low(float24(-745.13321910194111))
	movlb	0	; () banked
	movwf	((___ftge@ff2))&0ffh
	movlw	high(float24(-745.13321910194111))
	movlb	0	; () banked
	movwf	((___ftge@ff2+1))&0ffh
	movlw	low highword(float24(-745.13321910194111))
	movlb	0	; () banked
	movwf	((___ftge@ff2+2))&0ffh

	call	___ftge	;wreg free
	movlb	0	; () banked
	btfsc	status,0
	goto	u5361
	goto	u5360
u5361:
	goto	l4458
u5360:
	line	39
	
l4454:; BSR set to: 0

	movlw	high(022h)
	movwf	((c:_errno+1)),c
	movlw	low(022h)
	movwf	((c:_errno)),c
	line	40
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_exp))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_exp+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_exp+2))&0ffh

	goto	l1202
	
l4456:; BSR set to: 0

	goto	l1202
	line	41
	
l1204:; BSR set to: 0

	line	43
	
l4458:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((exp@x+2))&0ffh,7
	goto	u5371
	goto	u5370

u5371:
	movlw	1
	goto	u5380
u5370:
	movlw	0
u5380:
	movlb	0	; () banked
	movwf	((exp@sign))&0ffh
	line	44
	
l4460:; BSR set to: 0

	movlb	0	; () banked
	movf	((exp@sign))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u5391
	goto	u5390
u5391:
	goto	l1205
u5390:
	line	45
	
l4462:; BSR set to: 0

	movff	(exp@x),(c:___ftneg@f1)
	movff	(exp@x+1),(c:___ftneg@f1+1)
	movff	(exp@x+2),(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(exp@x)
	movff	1+?___ftneg,(exp@x+1)
	movff	2+?___ftneg,(exp@x+2)
	
l1205:
	line	46
	movff	(exp@x),(___ftmul@f1)
	movff	(exp@x+1),(___ftmul@f1+1)
	movff	(exp@x+2),(___ftmul@f1+2)
	movlw	low(float24(1.4426950408999999))
	movlb	0	; () banked
	movwf	((___ftmul@f2))&0ffh
	movlw	high(float24(1.4426950408999999))
	movlb	0	; () banked
	movwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(float24(1.4426950408999999))
	movlb	0	; () banked
	movwf	((___ftmul@f2+2))&0ffh

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(exp@x)
	movff	1+?___ftmul,(exp@x+1)
	movff	2+?___ftmul,(exp@x+2)
	line	47
	
l4464:
	movff	(exp@x),(floor@x)
	movff	(exp@x+1),(floor@x+1)
	movff	(exp@x+2),(floor@x+2)
	call	_floor	;wreg free
	movff	0+?_floor,(_exp$1205)
	movff	1+?_floor,(_exp$1205+1)
	movff	2+?_floor,(_exp$1205+2)
	
l4466:
	movff	(_exp$1205),(c:___fttol@f1)
	movff	(_exp$1205+1),(c:___fttol@f1+1)
	movff	(_exp$1205+2),(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(exp@exponent)
	movff	1+?___fttol,(exp@exponent+1)
	line	48
	
l4468:
	movff	(exp@x),(___ftsub@f1)
	movff	(exp@x+1),(___ftsub@f1+1)
	movff	(exp@x+2),(___ftsub@f1+2)
	movff	(exp@exponent),(c:___awtoft@c)
	movff	(exp@exponent+1),(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(___ftsub@f2)
	movff	1+?___awtoft,(___ftsub@f2+1)
	movff	2+?___awtoft,(___ftsub@f2+2)
	call	___ftsub	;wreg free
	movff	0+?___ftsub,(exp@x)
	movff	1+?___ftsub,(exp@x+1)
	movff	2+?___ftsub,(exp@x+2)
	line	49
	
l4470:
	movff	(exp@x),(eval_poly@x)
	movff	(exp@x+1),(eval_poly@x+1)
	movff	(exp@x+2),(eval_poly@x+2)
		movlw	low(exp@coeff)
	movlb	0	; () banked
	movwf	((eval_poly@d))&0ffh
	movlw	high(exp@coeff)
	movlb	0	; () banked
	movwf	((eval_poly@d+1))&0ffh

	movlw	high(09h)
	movlb	0	; () banked
	movwf	((eval_poly@n+1))&0ffh
	movlw	low(09h)
	movwf	((eval_poly@n))&0ffh
	call	_eval_poly	;wreg free
	movff	0+?_eval_poly,(ldexp@value)
	movff	1+?_eval_poly,(ldexp@value+1)
	movff	2+?_eval_poly,(ldexp@value+2)
	movff	(exp@exponent),(ldexp@newexp)
	movff	(exp@exponent+1),(ldexp@newexp+1)
	call	_ldexp	;wreg free
	movff	0+?_ldexp,(exp@x)
	movff	1+?_ldexp,(exp@x+1)
	movff	2+?_ldexp,(exp@x+2)
	line	50
	
l4472:
	movlb	0	; () banked
	movf	((exp@sign))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u5401
	goto	u5400
u5401:
	goto	l1206
u5400:
	line	52
	
l4474:; BSR set to: 0

	movlb	0	; () banked
		incf	((exp@x))&0ffh,w
	bnz	u5411
	movlw	127
	movlb	0	; () banked
	xorwf	((exp@x+1))&0ffh,w
	bnz	u5411
	movlw	127
	movlb	0	; () banked
	xorwf	((exp@x+2))&0ffh,w
	btfss	status,2
	goto	u5411
	goto	u5410

u5411:
	goto	l4480
u5410:
	line	53
	
l4476:; BSR set to: 0

	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_exp))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_exp+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_exp+2))&0ffh

	goto	l1202
	
l4478:; BSR set to: 0

	goto	l1202
	
l1207:; BSR set to: 0

	line	54
	
l4480:; BSR set to: 0

	movlw	low(float24(1.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f1))&0ffh
	movlw	high(float24(1.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f1+1))&0ffh
	movlw	low highword(float24(1.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f1+2))&0ffh

	movff	(exp@x),(___ftdiv@f2)
	movff	(exp@x+1),(___ftdiv@f2+1)
	movff	(exp@x+2),(___ftdiv@f2+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(?_exp)
	movff	1+?___ftdiv,(?_exp+1)
	movff	2+?___ftdiv,(?_exp+2)
	goto	l1202
	
l4482:
	goto	l1202
	line	55
	
l1206:; BSR set to: 0

	line	56
	movff	(exp@x),(?_exp)
	movff	(exp@x+1),(?_exp+1)
	movff	(exp@x+2),(?_exp+2)
	line	57
	
l1202:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_exp
	__end_of_exp:
	signat	_exp,4219
	global	_ldexp

;; *************** function _ldexp *****************
;; Defined at:
;;		line 277 in file "C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           3   24[BANK0 ] unsigned char 
;;  newexp          2   27[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   24[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       5       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0
;;      Totals:         0       7       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\frexp.c"
	line	277
global __ptext11
__ptext11:
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\frexp.c"
	line	277
	global	__size_of_ldexp
	__size_of_ldexp	equ	__end_of_ldexp-_ldexp
	
_ldexp:
;incstack = 0
	opt	stack 25
	line	279
	
l4338:
	movlb	0	; () banked
	movf	((ldexp@value))&0ffh,w
	movlb	0	; () banked
iorwf	((ldexp@value+1))&0ffh,w
	movlb	0	; () banked
iorwf	((ldexp@value+2))&0ffh,w
	btfss	status,2
	goto	u5181
	goto	u5180

u5181:
	goto	l4344
u5180:
	line	280
	
l4340:; BSR set to: 0

	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_ldexp))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_ldexp+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_ldexp+2))&0ffh

	goto	l1226
	
l4342:; BSR set to: 0

	goto	l1226
	
l1225:; BSR set to: 0

	line	282
	
l4344:; BSR set to: 0

	movlb	0	; () banked
	movf	(0+(ldexp@value+02h))&0ffh,w
	andlw	(1<<7)-1
	movlb	0	; () banked
	movwf	(??_ldexp+0+0)&0ffh
	clrf	(??_ldexp+0+0+1)&0ffh

	bcf	status,0
	movlb	0	; () banked
	rlcf	(??_ldexp+0+0)&0ffh,f
	rlcf	(??_ldexp+0+1)&0ffh,f
	movlb	0	; () banked
	movf	(??_ldexp+0+0)&0ffh,w
	movlb	0	; () banked
	addwf	((ldexp@newexp))&0ffh
	movlb	0	; () banked
	movf	(??_ldexp+0+1)&0ffh,w
	movlb	0	; () banked
	addwfc	((ldexp@newexp+1))&0ffh

	line	283
	movlb	0	; () banked
	btfsc	(0+(ldexp@value+01h))&0ffh,7
	goto	u5191
	goto	u5190
u5191:
	movlb	0	; () banked
	clrf	(??_ldexp+0+0)&0ffh
	incf	(??_ldexp+0+0)&0ffh
	goto	u5198
u5190:
	movlb	0	; () banked
	clrf	(??_ldexp+0+0)&0ffh
u5198:
	movlb	0	; () banked
	movf	(??_ldexp+0+0)&0ffh,w
	movlb	0	; () banked
	addwf	((ldexp@newexp))&0ffh
	movlw	0
	addwfc	((ldexp@newexp+1))&0ffh
	line	287
	movlb	0	; () banked
	btfsc	((ldexp@newexp+1))&0ffh,7
	goto	u5200
	goto	u5201

u5201:
	goto	l4352
u5200:
	line	288
	
l4346:; BSR set to: 0

	movlw	high(022h)
	movwf	((c:_errno+1)),c
	movlw	low(022h)
	movwf	((c:_errno)),c
	line	289
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_ldexp))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_ldexp+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_ldexp+2))&0ffh

	goto	l1226
	
l4348:; BSR set to: 0

	goto	l1226
	line	290
	
l4350:; BSR set to: 0

	goto	l4370
	line	291
	
l1227:; BSR set to: 0

	
l4352:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((ldexp@newexp+1))&0ffh,7
	goto	u5211
	movlb	0	; () banked
	decf	((ldexp@newexp+1))&0ffh,w
	btfss	status,0
	goto	u5211
	goto	u5210

u5211:
	goto	l4368
u5210:
	line	292
	
l4354:; BSR set to: 0

	movlw	high(022h)
	movwf	((c:_errno+1)),c
	movlw	low(022h)
	movwf	((c:_errno)),c
	line	293
	
l4356:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((ldexp@value+2))&0ffh,7
	goto	u5220
	goto	u5221

u5221:
	goto	l4364
u5220:
	line	294
	
l4358:; BSR set to: 0

	movlw	low(float24(-3.4027699999999999e+038))
	movlb	0	; () banked
	movwf	((?_ldexp))&0ffh
	movlw	high(float24(-3.4027699999999999e+038))
	movlb	0	; () banked
	movwf	((?_ldexp+1))&0ffh
	movlw	low highword(float24(-3.4027699999999999e+038))
	movlb	0	; () banked
	movwf	((?_ldexp+2))&0ffh

	goto	l1226
	
l4360:; BSR set to: 0

	goto	l1226
	
l4362:; BSR set to: 0

	goto	l4370
	line	295
	
l1230:; BSR set to: 0

	line	296
	
l4364:; BSR set to: 0

	movlw	low(float24(3.4027699999999999e+038))
	movlb	0	; () banked
	movwf	((?_ldexp))&0ffh
	movlw	high(float24(3.4027699999999999e+038))
	movlb	0	; () banked
	movwf	((?_ldexp+1))&0ffh
	movlw	low highword(float24(3.4027699999999999e+038))
	movlb	0	; () banked
	movwf	((?_ldexp+2))&0ffh

	goto	l1226
	
l4366:; BSR set to: 0

	goto	l1226
	
l1231:; BSR set to: 0

	line	297
	goto	l4370
	line	298
	
l1229:; BSR set to: 0

	line	300
	
l4368:; BSR set to: 0

	movlb	0	; () banked
	rlcf	((ldexp@newexp+1))&0ffh,w
	rrcf	((ldexp@newexp+1))&0ffh,w
	movlb	0	; () banked
	movwf	(??_ldexp+0+0+1)&0ffh
	movlb	0	; () banked
	rrcf	((ldexp@newexp))&0ffh,w
	movlb	0	; () banked
	movwf	(??_ldexp+0+0)&0ffh
	movlb	0	; () banked
	movf	(0+(ldexp@value+02h))&0ffh,w
	movlb	0	; () banked
	xorwf	(??_ldexp+0+0)&0ffh,w
	andlw	not ((1<<7)-1)
	xorwf	(??_ldexp+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	(0+(ldexp@value+02h))&0ffh
	line	301
	movff	(ldexp@newexp),??_ldexp+0+0
	movlw	01h
	movlb	0	; () banked
	andwf	(??_ldexp+0+0)&0ffh
	movlb	0	; () banked
	rrcf	(??_ldexp+0+0)&0ffh
	rrcf	(??_ldexp+0+0)&0ffh
	movlb	0	; () banked
	movf	(0+(ldexp@value+01h))&0ffh,w
	movlb	0	; () banked
	xorwf	(??_ldexp+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<7)
	xorwf	(??_ldexp+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	(0+(ldexp@value+01h))&0ffh
	goto	l4370
	line	305
	
l1232:; BSR set to: 0

	goto	l4370
	
l1228:; BSR set to: 0

	line	306
	
l4370:; BSR set to: 0

	movff	(ldexp@value),(?_ldexp)
	movff	(ldexp@value+1),(?_ldexp+1)
	movff	(ldexp@value+2),(?_ldexp+2)
	goto	l1226
	
l4372:; BSR set to: 0

	line	307
	
l1226:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_ldexp
	__end_of_ldexp:
	signat	_ldexp,8315
	global	_floor

;; *************** function _floor *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\floor.c"
;; Parameters:    Size  Location     Type
;;  x               3   21[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               3   24[BANK0 ] int 
;;  expon           2   27[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   21[BANK0 ] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       3       0       0       0       0       0
;;      Locals:         0       5       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___altoft
;;		___ftadd
;;		___ftge
;;		___fttol
;;		_frexp
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\floor.c"
	line	13
global __ptext12
__ptext12:
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\floor.c"
	line	13
	global	__size_of_floor
	__size_of_floor	equ	__end_of_floor-_floor
	
_floor:; BSR set to: 0

;incstack = 0
	opt	stack 23
	line	18
	
l4314:
	movff	(floor@x),(c:frexp@value)
	movff	(floor@x+1),(c:frexp@value+1)
	movff	(floor@x+2),(c:frexp@value+2)
		movlw	low(floor@expon)
	movwf	((c:frexp@eptr)),c
	movlw	high(floor@expon)
	movwf	((c:frexp@eptr+1)),c

	call	_frexp	;wreg free
	line	19
	
l4316:
	movlb	0	; () banked
	btfsc	((floor@expon+1))&0ffh,7
	goto	u5140
	goto	u5141

u5141:
	goto	l4328
u5140:
	line	20
	
l4318:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((floor@x+2))&0ffh,7
	goto	u5150
	goto	u5151

u5151:
	goto	l4324
u5150:
	line	21
	
l4320:; BSR set to: 0

	movlw	low(float24(-1.0000000000000000))
	movlb	0	; () banked
	movwf	((?_floor))&0ffh
	movlw	high(float24(-1.0000000000000000))
	movlb	0	; () banked
	movwf	((?_floor+1))&0ffh
	movlw	low highword(float24(-1.0000000000000000))
	movlb	0	; () banked
	movwf	((?_floor+2))&0ffh

	goto	l1214
	
l4322:; BSR set to: 0

	goto	l1214
	
l1213:; BSR set to: 0

	line	22
	
l4324:; BSR set to: 0

	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_floor))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_floor+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_floor+2))&0ffh

	goto	l1214
	
l4326:; BSR set to: 0

	goto	l1214
	line	23
	
l1212:; BSR set to: 0

	line	24
	
l4328:; BSR set to: 0

	movlb	0	; () banked
		movf	((floor@expon+1))&0ffh,w
	bnz	u5160
	movlw	21
	movlb	0	; () banked
	subwf	 ((floor@expon))&0ffh,w
	btfss	status,0
	goto	u5161
	goto	u5160

u5161:
	goto	l4332
u5160:
	line	25
	
l4330:; BSR set to: 0

	movff	(floor@x),(?_floor)
	movff	(floor@x+1),(?_floor+1)
	movff	(floor@x+2),(?_floor+2)
	goto	l1214
	
l1215:; BSR set to: 0

	line	26
	
l4332:; BSR set to: 0

	movff	(floor@x),(c:___fttol@f1)
	movff	(floor@x+1),(c:___fttol@f1+1)
	movff	(floor@x+2),(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(c:___altoft@c)
	movff	1+?___fttol,(c:___altoft@c+1)
	movff	2+?___fttol,(c:___altoft@c+2)
	movff	3+?___fttol,(c:___altoft@c+3)
	
	call	___altoft	;wreg free
	movff	0+?___altoft,(floor@i)
	movff	1+?___altoft,(floor@i+1)
	movff	2+?___altoft,(floor@i+2)
	line	27
	movff	(floor@x),(___ftge@ff1)
	movff	(floor@x+1),(___ftge@ff1+1)
	movff	(floor@x+2),(___ftge@ff1+2)
	movff	(floor@i),(___ftge@ff2)
	movff	(floor@i+1),(___ftge@ff2+1)
	movff	(floor@i+2),(___ftge@ff2+2)
	call	___ftge	;wreg free
	movlb	0	; () banked
	btfsc	status,0
	goto	u5171
	goto	u5170
u5171:
	goto	l1216
u5170:
	line	28
	
l4334:; BSR set to: 0

	movff	(floor@i),(c:___ftadd@f1)
	movff	(floor@i+1),(c:___ftadd@f1+1)
	movff	(floor@i+2),(c:___ftadd@f1+2)
	movlw	low(float24(-1.0000000000000000))
	movwf	((c:___ftadd@f2)),c
	movlw	high(float24(-1.0000000000000000))
	movwf	((c:___ftadd@f2+1)),c
	movlw	low highword(float24(-1.0000000000000000))
	movwf	((c:___ftadd@f2+2)),c

	call	___ftadd	;wreg free
	movff	0+?___ftadd,(?_floor)
	movff	1+?___ftadd,(?_floor+1)
	movff	2+?___ftadd,(?_floor+2)
	goto	l1214
	
l4336:
	goto	l1214
	
l1216:; BSR set to: 0

	line	29
	movff	(floor@i),(?_floor)
	movff	(floor@i+1),(?_floor+1)
	movff	(floor@i+2),(?_floor+2)
	line	30
	
l1214:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_floor
	__end_of_floor:
	signat	_floor,4219
	global	_frexp

;; *************** function _frexp *****************
;; Defined at:
;;		line 254 in file "C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           3   23[COMRAM] int 
;;  eptr            2   26[COMRAM] PTR int 
;;		 -> log@exponent(2), floor@expon(2), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   23[COMRAM] PTR int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         5       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_floor
;;		_log
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\frexp.c"
	line	254
global __ptext13
__ptext13:
psect	text13
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\frexp.c"
	line	254
	global	__size_of_frexp
	__size_of_frexp	equ	__end_of_frexp-_frexp
	
_frexp:
;incstack = 0
	opt	stack 25
	line	256
	
l4212:
	movf	((c:frexp@value)),c,w
iorwf	((c:frexp@value+1)),c,w
iorwf	((c:frexp@value+2)),c,w
	btfss	status,2
	goto	u5011
	goto	u5010

u5011:
	goto	l4220
u5010:
	line	257
	
l4214:
	movff	(c:frexp@eptr),fsr2l
	movff	(c:frexp@eptr+1),fsr2h
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	258
	
l4216:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?_frexp)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?_frexp+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?_frexp+2)),c

	goto	l1222
	
l4218:
	goto	l1222
	line	259
	
l1221:
	line	261
	
l4220:
	movf	(0+((c:frexp@value)+02h)),c,w
	andlw	(1<<7)-1
	movwf	(??_frexp+0+0)&0ffh,c
	clrf	(??_frexp+0+0+1)&0ffh,c

	bcf	status,0
	rlcf	(??_frexp+0+0),c,f
	rlcf	(??_frexp+0+1),c,f
	movff	(c:frexp@eptr),fsr2l
	movff	(c:frexp@eptr+1),fsr2h
	movff	??_frexp+0+0,postinc2
	movff	??_frexp+0+1,postdec2

	line	262
	btfsc	(0+((c:frexp@value)+01h)),c,7
	goto	u5021
	goto	u5020
u5021:
	clrf	(??_frexp+0+0)&0ffh,c
	incf	(??_frexp+0+0)&0ffh,c
	goto	u5028
u5020:
	clrf	(??_frexp+0+0)&0ffh,c
u5028:
	movf	(??_frexp+0+0),c,w
	movff	(c:frexp@eptr),fsr2l
	movff	(c:frexp@eptr+1),fsr2h
	iorwf	postinc2
	movlw	0
	iorwf	postdec2
	line	263
	
l4222:
	movff	(c:frexp@eptr),fsr2l
	movff	(c:frexp@eptr+1),fsr2h
	movlw	low(-126)
	addwf	postinc2
	movlw	high(-126)
	addwfc	postdec2
	line	268
	
l4224:
		
	bsf	(0+((c:frexp@value)+02h)),c, 0+0
	bsf	(0+((c:frexp@value)+02h)),c, 0+1
	bsf	(0+((c:frexp@value)+02h)),c, 0+2
	bsf	(0+((c:frexp@value)+02h)),c, 0+3
	bsf	(0+((c:frexp@value)+02h)),c, 0+4
	bsf	(0+((c:frexp@value)+02h)),c, 0+5
	bcf	(0+((c:frexp@value)+02h)),c, 0+6

	line	269
	
l4226:
	bcf	(0+((c:frexp@value)+01h)),c,7
	line	273
	
l4228:
	movff	(c:frexp@value),(c:?_frexp)
	movff	(c:frexp@value+1),(c:?_frexp+1)
	movff	(c:frexp@value+2),(c:?_frexp+2)
	goto	l1222
	
l4230:
	line	274
	
l1222:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_frexp
	__end_of_frexp:
	signat	_frexp,8315
	global	___altoft

;; *************** function ___altoft *****************
;; Defined at:
;;		line 42 in file "C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\altoft.c"
;; Parameters:    Size  Location     Type
;;  c               4   38[COMRAM] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   47[COMRAM] unsigned char 
;;  exp             1   46[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   38[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:        10       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\altoft.c"
	line	42
global __ptext14
__ptext14:
psect	text14
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\altoft.c"
	line	42
	global	__size_of___altoft
	__size_of___altoft	equ	__end_of___altoft-___altoft
	
___altoft:
;incstack = 0
	opt	stack 23
	line	45
	
l4014:
	movlw	low(0)
	movwf	((c:___altoft@sign)),c
	line	46
	movlw	low(08Eh)
	movwf	((c:___altoft@exp)),c
	line	47
	
l4016:
	btfsc	((c:___altoft@c+3)),c,7
	goto	u4610
	goto	u4611

u4611:
	goto	l4024
u4610:
	line	48
	
l4018:
	comf	((c:___altoft@c+3)),c
	comf	((c:___altoft@c+2)),c
	comf	((c:___altoft@c+1)),c
	negf	((c:___altoft@c)),c
	movlw	0
	addwfc	((c:___altoft@c+1)),c
	addwfc	((c:___altoft@c+2)),c
	addwfc	((c:___altoft@c+3)),c
	line	49
	
l4020:
	movlw	low(01h)
	movwf	((c:___altoft@sign)),c
	goto	l4024
	line	50
	
l605:
	line	52
	goto	l4024
	
l607:
	line	53
	
l4022:
	bcf	status,0
	rrcf	((c:___altoft@c+3)),c
	rrcf	((c:___altoft@c+2)),c
	rrcf	((c:___altoft@c+1)),c
	rrcf	((c:___altoft@c)),c
	line	54
	incf	((c:___altoft@exp)),c
	goto	l4024
	line	55
	
l606:
	line	52
	
l4024:
	movlw	0
	andwf	((c:___altoft@c)),c,w
	movwf	(??___altoft+0+0)&0ffh,c
	movlw	0
	andwf	((c:___altoft@c+1)),c,w
	movwf	1+(??___altoft+0+0)&0ffh,c
	
	movlw	0
	andwf	((c:___altoft@c+2)),c,w
	movwf	2+(??___altoft+0+0)&0ffh,c
	
	movlw	0FFh
	andwf	((c:___altoft@c+3)),c,w
	movwf	3+(??___altoft+0+0)&0ffh,c
	movf	(??___altoft+0+0),c,w
iorwf	(??___altoft+0+1),c,w
iorwf	(??___altoft+0+2),c,w
iorwf	(??___altoft+0+3),c,w
	btfss	status,2
	goto	u4621
	goto	u4620

u4621:
	goto	l4022
u4620:
	goto	l4026
	
l608:
	line	56
	
l4026:
	movff	(c:___altoft@c),(c:___ftpack@arg)
	movff	(c:___altoft@c+1),(c:___ftpack@arg+1)
	movff	(c:___altoft@c+2),(c:___ftpack@arg+2)
	movff	(c:___altoft@exp),(c:___ftpack@exp)
	movff	(c:___altoft@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___altoft)
	movff	1+?___ftpack,(c:?___altoft+1)
	movff	2+?___ftpack,(c:?___altoft+2)
	goto	l609
	
l4028:
	line	57
	
l609:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___altoft
	__end_of___altoft:
	signat	___altoft,4219
	global	___ftsub

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 20 in file "C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[BANK0 ] float 
;;  f2              3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       6       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_sqrt
;;		_exp
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\ftsub.c"
	line	20
global __ptext15
__ptext15:
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\ftsub.c"
	line	20
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:
;incstack = 0
	opt	stack 24
	line	23
	
l4284:
	movlb	0	; () banked
	movf	((___ftsub@f2))&0ffh,w
	movlb	0	; () banked
iorwf	((___ftsub@f2+1))&0ffh,w
	movlb	0	; () banked
iorwf	((___ftsub@f2+2))&0ffh,w
	btfsc	status,2
	goto	u5101
	goto	u5100

u5101:
	goto	l4288
u5100:
	line	24
	
l4286:; BSR set to: 0

	movlw	low(0800000h)
	movlb	0	; () banked
	xorwf	((___ftsub@f2))&0ffh
	movlw	high(0800000h)
	movlb	0	; () banked
	xorwf	((___ftsub@f2+1))&0ffh
	movlw	low highword(0800000h)
	movlb	0	; () banked
	xorwf	((___ftsub@f2+2))&0ffh

	goto	l4288
	line	25
	
l894:; BSR set to: 0

	line	26
	
l4288:; BSR set to: 0

	movff	(___ftsub@f1),(c:___ftadd@f1)
	movff	(___ftsub@f1+1),(c:___ftadd@f1+1)
	movff	(___ftsub@f1+2),(c:___ftadd@f1+2)
	movff	(___ftsub@f2),(c:___ftadd@f2)
	movff	(___ftsub@f2+1),(c:___ftadd@f2+1)
	movff	(___ftsub@f2+2),(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(?___ftsub)
	movff	1+?___ftadd,(?___ftsub+1)
	movff	2+?___ftadd,(?___ftsub+2)
	goto	l895
	
l4290:
	line	27
	
l895:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
	signat	___ftsub,8315
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 32 in file "C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   31[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   34[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   31[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_computeAngle
;;		_exp
;;		_log
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\awtoft.c"
	line	32
global __ptext16
__ptext16:
psect	text16
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:
;incstack = 0
	opt	stack 24
	line	36
	
l4298:
	movlw	low(0)
	movwf	((c:___awtoft@sign)),c
	line	37
	
l4300:
	btfsc	((c:___awtoft@c+1)),c,7
	goto	u5120
	goto	u5121

u5121:
	goto	l4306
u5120:
	line	38
	
l4302:
	negf	((c:___awtoft@c)),c
	comf	((c:___awtoft@c+1)),c
	btfsc	status,0
	incf	((c:___awtoft@c+1)),c
	line	39
	
l4304:
	movlw	low(01h)
	movwf	((c:___awtoft@sign)),c
	goto	l4306
	line	40
	
l735:
	line	41
	
l4306:
	movff	(c:___awtoft@c),(c:___ftpack@arg)
	movff	(c:___awtoft@c+1),(c:___ftpack@arg+1)
	clrf	((c:___ftpack@arg+2)),c
	movlw	low(08Eh)
	movwf	((c:___ftpack@exp)),c
	movff	(c:___awtoft@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___awtoft)
	movff	1+?___ftpack,(c:?___awtoft+1)
	movff	2+?___ftpack,(c:?___awtoft+2)
	goto	l736
	
l4308:
	line	42
	
l736:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
	global	___lltoft

;; *************** function ___lltoft *****************
;; Defined at:
;;		line 35 in file "C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\lltoft.c"
;; Parameters:    Size  Location     Type
;;  c               4   31[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1   39[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   31[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_computeAngle
;;		_pow
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\lltoft.c"
	line	35
global __ptext17
__ptext17:
psect	text17
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\lltoft.c"
	line	35
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:
;incstack = 0
	opt	stack 25
	line	38
	
l4408:
	movlw	low(08Eh)
	movwf	((c:___lltoft@exp)),c
	line	41
	goto	l4412
	
l961:
	line	42
	
l4410:
	bcf	status,0
	rrcf	((c:___lltoft@c+3)),c
	rrcf	((c:___lltoft@c+2)),c
	rrcf	((c:___lltoft@c+1)),c
	rrcf	((c:___lltoft@c)),c
	line	43
	incf	((c:___lltoft@exp)),c
	goto	l4412
	line	44
	
l960:
	line	41
	
l4412:
	movlw	0
	andwf	((c:___lltoft@c)),c,w
	movwf	(??___lltoft+0+0)&0ffh,c
	movlw	0
	andwf	((c:___lltoft@c+1)),c,w
	movwf	1+(??___lltoft+0+0)&0ffh,c
	
	movlw	0
	andwf	((c:___lltoft@c+2)),c,w
	movwf	2+(??___lltoft+0+0)&0ffh,c
	
	movlw	0FFh
	andwf	((c:___lltoft@c+3)),c,w
	movwf	3+(??___lltoft+0+0)&0ffh,c
	movf	(??___lltoft+0+0),c,w
iorwf	(??___lltoft+0+1),c,w
iorwf	(??___lltoft+0+2),c,w
iorwf	(??___lltoft+0+3),c,w
	btfss	status,2
	goto	u5311
	goto	u5310

u5311:
	goto	l4410
u5310:
	goto	l4414
	
l962:
	line	45
	
l4414:
	movff	(c:___lltoft@c),(c:___ftpack@arg)
	movff	(c:___lltoft@c+1),(c:___ftpack@arg+1)
	movff	(c:___lltoft@c+2),(c:___ftpack@arg+2)
	movff	(c:___lltoft@exp),(c:___ftpack@exp)
	movlw	low(0)
	movwf	((c:___ftpack@sign)),c
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___lltoft)
	movff	1+?___ftpack,(c:?___lltoft+1)
	movff	2+?___ftpack,(c:?___lltoft+2)
	goto	l963
	
l4416:
	line	46
	
l963:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
	signat	___lltoft,4219
	global	_getGyroY

;; *************** function _getGyroY *****************
;; Defined at:
;;		line 76 in file "D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\MPU-6050.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data            2   33[COMRAM] int 
;;  dataL           2   31[COMRAM] int 
;;  dataH           2   29[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  2   25[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:        10       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_ReadI2C
;;		_WriteI2C
;; This function is called by:
;;		_computeAngle
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\MPU-6050.c"
	line	76
global __ptext18
__ptext18:
psect	text18
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\MPU-6050.c"
	line	76
	global	__size_of_getGyroY
	__size_of_getGyroY	equ	__end_of_getGyroY-_getGyroY
	
_getGyroY:
;incstack = 0
	opt	stack 25
	line	79
	
l4500:
;MPU-6050.c: 77: signed int dataH,dataL;
;MPU-6050.c: 78: signed int data;
;MPU-6050.c: 79: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l213
	
l214:
	
l213:
	btfsc	((c:4037)),c,0	;volatile
	goto	u5441
	goto	u5440
u5441:
	goto	l213
u5440:
	goto	l4502
	
l215:
	line	80
	
l4502:
;MPU-6050.c: 80: WriteI2C(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_WriteI2C
	line	81
;MPU-6050.c: 81: WriteI2C(0x45);
	movlw	(045h)&0ffh
	
	call	_WriteI2C
	line	82
	
l4504:
;MPU-6050.c: 82: SSPCON2bits.RSEN=1;while(SSPCON2bits.RSEN);
	bsf	((c:4037)),c,1	;volatile
	goto	l216
	
l217:
	
l216:
	btfsc	((c:4037)),c,1	;volatile
	goto	u5451
	goto	u5450
u5451:
	goto	l216
u5450:
	goto	l4506
	
l218:
	line	83
	
l4506:
;MPU-6050.c: 83: WriteI2C(0xD0+1);
	movlw	(0D1h)&0ffh
	
	call	_WriteI2C
	line	84
;MPU-6050.c: 84: dataH=ReadI2C();
	call	_ReadI2C	;wreg free
	movwf	(??_getGyroY+0+0)&0ffh,c
	movf	((??_getGyroY+0+0)),c,w
	movwf	((c:getGyroY@dataH)),c
	clrf	((c:getGyroY@dataH+1)),c
	line	85
	
l4508:
;MPU-6050.c: 85: SSPCON2bits.ACKDT=1;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bsf	((c:4037)),c,5	;volatile
	
l4510:
	bsf	((c:4037)),c,4	;volatile
	goto	l219
	
l220:
	
l219:
	btfsc	((c:4037)),c,4	;volatile
	goto	u5461
	goto	u5460
u5461:
	goto	l219
u5460:
	
l221:
	line	86
;MPU-6050.c: 86: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l222
	
l223:
	
l222:
	btfsc	((c:4037)),c,2	;volatile
	goto	u5471
	goto	u5470
u5471:
	goto	l222
u5470:
	
l224:
	line	88
;MPU-6050.c: 88: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l225
	
l226:
	
l225:
	btfsc	((c:4037)),c,0	;volatile
	goto	u5481
	goto	u5480
u5481:
	goto	l225
u5480:
	goto	l4512
	
l227:
	line	89
	
l4512:
;MPU-6050.c: 89: WriteI2C(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_WriteI2C
	line	90
;MPU-6050.c: 90: WriteI2C(0x46);
	movlw	(046h)&0ffh
	
	call	_WriteI2C
	line	91
	
l4514:
;MPU-6050.c: 91: SSPCON2bits.RSEN=1;while(SSPCON2bits.RSEN);
	bsf	((c:4037)),c,1	;volatile
	goto	l228
	
l229:
	
l228:
	btfsc	((c:4037)),c,1	;volatile
	goto	u5491
	goto	u5490
u5491:
	goto	l228
u5490:
	goto	l4516
	
l230:
	line	92
	
l4516:
;MPU-6050.c: 92: WriteI2C(0xD0+1);
	movlw	(0D1h)&0ffh
	
	call	_WriteI2C
	line	93
;MPU-6050.c: 93: dataL=ReadI2C();
	call	_ReadI2C	;wreg free
	movwf	(??_getGyroY+0+0)&0ffh,c
	movf	((??_getGyroY+0+0)),c,w
	movwf	((c:getGyroY@dataL)),c
	clrf	((c:getGyroY@dataL+1)),c
	line	94
	
l4518:
;MPU-6050.c: 94: SSPCON2bits.ACKDT=1;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bsf	((c:4037)),c,5	;volatile
	
l4520:
	bsf	((c:4037)),c,4	;volatile
	goto	l231
	
l232:
	
l231:
	btfsc	((c:4037)),c,4	;volatile
	goto	u5501
	goto	u5500
u5501:
	goto	l231
u5500:
	
l233:
	line	95
;MPU-6050.c: 95: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l234
	
l235:
	
l234:
	btfsc	((c:4037)),c,2	;volatile
	goto	u5511
	goto	u5510
u5511:
	goto	l234
u5510:
	goto	l4522
	
l236:
	line	96
	
l4522:
;MPU-6050.c: 96: data=(dataH<<8)|dataL;
	movf	((c:getGyroY@dataH)),c,w
	movwf	(??_getGyroY+0+0+1)&0ffh,c
	clrf	(??_getGyroY+0+0)&0ffh,c
	movf	((c:getGyroY@dataL)),c,w
	iorwf	(??_getGyroY+0+0),c,w
	movwf	((c:getGyroY@data)),c
	movf	((c:getGyroY@dataL+1)),c,w
	iorwf	(??_getGyroY+0+1),c,w
	movwf	1+((c:getGyroY@data)),c
	line	97
	
l4524:
;MPU-6050.c: 97: return data;
	movff	(c:getGyroY@data),(c:?_getGyroY)
	movff	(c:getGyroY@data+1),(c:?_getGyroY+1)
	goto	l237
	
l4526:
	line	98
	
l237:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_getGyroY
	__end_of_getGyroY:
	signat	_getGyroY,90
	global	_getAccelZ

;; *************** function _getAccelZ *****************
;; Defined at:
;;		line 148 in file "D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\MPU-6050.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data            2   33[COMRAM] int 
;;  dataL           2   31[COMRAM] int 
;;  dataH           2   29[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  2   25[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:        10       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_ReadI2C
;;		_WriteI2C
;; This function is called by:
;;		_computeAngle
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2
	line	148
global __ptext19
__ptext19:
psect	text19
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\MPU-6050.c"
	line	148
	global	__size_of_getAccelZ
	__size_of_getAccelZ	equ	__end_of_getAccelZ-_getAccelZ
	
_getAccelZ:
;incstack = 0
	opt	stack 25
	line	151
	
l4584:
;MPU-6050.c: 149: signed int dataH,dataL;
;MPU-6050.c: 150: signed int data;
;MPU-6050.c: 151: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l294
	
l295:
	
l294:
	btfsc	((c:4037)),c,0	;volatile
	goto	u5681
	goto	u5680
u5681:
	goto	l294
u5680:
	goto	l4586
	
l296:
	line	152
	
l4586:
;MPU-6050.c: 152: WriteI2C(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_WriteI2C
	line	153
;MPU-6050.c: 153: WriteI2C(0x3F);
	movlw	(03Fh)&0ffh
	
	call	_WriteI2C
	line	154
	
l4588:
;MPU-6050.c: 154: SSPCON2bits.RSEN=1;while(SSPCON2bits.RSEN);
	bsf	((c:4037)),c,1	;volatile
	goto	l297
	
l298:
	
l297:
	btfsc	((c:4037)),c,1	;volatile
	goto	u5691
	goto	u5690
u5691:
	goto	l297
u5690:
	goto	l4590
	
l299:
	line	155
	
l4590:
;MPU-6050.c: 155: WriteI2C(0xD0+1);
	movlw	(0D1h)&0ffh
	
	call	_WriteI2C
	line	156
;MPU-6050.c: 156: dataH=ReadI2C();
	call	_ReadI2C	;wreg free
	movwf	(??_getAccelZ+0+0)&0ffh,c
	movf	((??_getAccelZ+0+0)),c,w
	movwf	((c:getAccelZ@dataH)),c
	clrf	((c:getAccelZ@dataH+1)),c
	line	157
	
l4592:
;MPU-6050.c: 157: SSPCON2bits.ACKDT=1;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bsf	((c:4037)),c,5	;volatile
	
l4594:
	bsf	((c:4037)),c,4	;volatile
	goto	l300
	
l301:
	
l300:
	btfsc	((c:4037)),c,4	;volatile
	goto	u5701
	goto	u5700
u5701:
	goto	l300
u5700:
	
l302:
	line	158
;MPU-6050.c: 158: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l303
	
l304:
	
l303:
	btfsc	((c:4037)),c,2	;volatile
	goto	u5711
	goto	u5710
u5711:
	goto	l303
u5710:
	
l305:
	line	160
;MPU-6050.c: 160: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l306
	
l307:
	
l306:
	btfsc	((c:4037)),c,0	;volatile
	goto	u5721
	goto	u5720
u5721:
	goto	l306
u5720:
	goto	l4596
	
l308:
	line	161
	
l4596:
;MPU-6050.c: 161: WriteI2C(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_WriteI2C
	line	162
;MPU-6050.c: 162: WriteI2C(0x40);
	movlw	(040h)&0ffh
	
	call	_WriteI2C
	line	163
	
l4598:
;MPU-6050.c: 163: SSPCON2bits.RSEN=1;while(SSPCON2bits.RSEN);
	bsf	((c:4037)),c,1	;volatile
	goto	l309
	
l310:
	
l309:
	btfsc	((c:4037)),c,1	;volatile
	goto	u5731
	goto	u5730
u5731:
	goto	l309
u5730:
	goto	l4600
	
l311:
	line	164
	
l4600:
;MPU-6050.c: 164: WriteI2C(0xD0+1);
	movlw	(0D1h)&0ffh
	
	call	_WriteI2C
	line	165
;MPU-6050.c: 165: dataL=ReadI2C();
	call	_ReadI2C	;wreg free
	movwf	(??_getAccelZ+0+0)&0ffh,c
	movf	((??_getAccelZ+0+0)),c,w
	movwf	((c:getAccelZ@dataL)),c
	clrf	((c:getAccelZ@dataL+1)),c
	line	166
	
l4602:
;MPU-6050.c: 166: SSPCON2bits.ACKDT=1;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bsf	((c:4037)),c,5	;volatile
	
l4604:
	bsf	((c:4037)),c,4	;volatile
	goto	l312
	
l313:
	
l312:
	btfsc	((c:4037)),c,4	;volatile
	goto	u5741
	goto	u5740
u5741:
	goto	l312
u5740:
	
l314:
	line	167
;MPU-6050.c: 167: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l315
	
l316:
	
l315:
	btfsc	((c:4037)),c,2	;volatile
	goto	u5751
	goto	u5750
u5751:
	goto	l315
u5750:
	goto	l4606
	
l317:
	line	168
	
l4606:
;MPU-6050.c: 168: data=(dataH<<8)|dataL;
	movf	((c:getAccelZ@dataH)),c,w
	movwf	(??_getAccelZ+0+0+1)&0ffh,c
	clrf	(??_getAccelZ+0+0)&0ffh,c
	movf	((c:getAccelZ@dataL)),c,w
	iorwf	(??_getAccelZ+0+0),c,w
	movwf	((c:getAccelZ@data)),c
	movf	((c:getAccelZ@dataL+1)),c,w
	iorwf	(??_getAccelZ+0+1),c,w
	movwf	1+((c:getAccelZ@data)),c
	line	169
	
l4608:
;MPU-6050.c: 169: return data;
	movff	(c:getAccelZ@data),(c:?_getAccelZ)
	movff	(c:getAccelZ@data+1),(c:?_getAccelZ+1)
	goto	l318
	
l4610:
	line	170
	
l318:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_getAccelZ
	__end_of_getAccelZ:
	signat	_getAccelZ,90
	global	_getAccelY

;; *************** function _getAccelY *****************
;; Defined at:
;;		line 124 in file "D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\MPU-6050.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data            2   33[COMRAM] int 
;;  dataL           2   31[COMRAM] int 
;;  dataH           2   29[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  2   25[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:        10       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_ReadI2C
;;		_WriteI2C
;; This function is called by:
;;		_computeAngle
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2
	line	124
global __ptext20
__ptext20:
psect	text20
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\MPU-6050.c"
	line	124
	global	__size_of_getAccelY
	__size_of_getAccelY	equ	__end_of_getAccelY-_getAccelY
	
_getAccelY:
;incstack = 0
	opt	stack 25
	line	127
	
l4556:
;MPU-6050.c: 125: signed int dataH,dataL;
;MPU-6050.c: 126: signed int data;
;MPU-6050.c: 127: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l267
	
l268:
	
l267:
	btfsc	((c:4037)),c,0	;volatile
	goto	u5601
	goto	u5600
u5601:
	goto	l267
u5600:
	goto	l4558
	
l269:
	line	128
	
l4558:
;MPU-6050.c: 128: WriteI2C(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_WriteI2C
	line	129
;MPU-6050.c: 129: WriteI2C(0x3D);
	movlw	(03Dh)&0ffh
	
	call	_WriteI2C
	line	130
	
l4560:
;MPU-6050.c: 130: SSPCON2bits.RSEN=1;while(SSPCON2bits.RSEN);
	bsf	((c:4037)),c,1	;volatile
	goto	l270
	
l271:
	
l270:
	btfsc	((c:4037)),c,1	;volatile
	goto	u5611
	goto	u5610
u5611:
	goto	l270
u5610:
	goto	l4562
	
l272:
	line	131
	
l4562:
;MPU-6050.c: 131: WriteI2C(0xD0+1);
	movlw	(0D1h)&0ffh
	
	call	_WriteI2C
	line	132
;MPU-6050.c: 132: dataH=ReadI2C();
	call	_ReadI2C	;wreg free
	movwf	(??_getAccelY+0+0)&0ffh,c
	movf	((??_getAccelY+0+0)),c,w
	movwf	((c:getAccelY@dataH)),c
	clrf	((c:getAccelY@dataH+1)),c
	line	133
	
l4564:
;MPU-6050.c: 133: SSPCON2bits.ACKDT=1;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bsf	((c:4037)),c,5	;volatile
	
l4566:
	bsf	((c:4037)),c,4	;volatile
	goto	l273
	
l274:
	
l273:
	btfsc	((c:4037)),c,4	;volatile
	goto	u5621
	goto	u5620
u5621:
	goto	l273
u5620:
	
l275:
	line	134
;MPU-6050.c: 134: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l276
	
l277:
	
l276:
	btfsc	((c:4037)),c,2	;volatile
	goto	u5631
	goto	u5630
u5631:
	goto	l276
u5630:
	
l278:
	line	136
;MPU-6050.c: 136: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l279
	
l280:
	
l279:
	btfsc	((c:4037)),c,0	;volatile
	goto	u5641
	goto	u5640
u5641:
	goto	l279
u5640:
	goto	l4568
	
l281:
	line	137
	
l4568:
;MPU-6050.c: 137: WriteI2C(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_WriteI2C
	line	138
;MPU-6050.c: 138: WriteI2C(0x3E);
	movlw	(03Eh)&0ffh
	
	call	_WriteI2C
	line	139
	
l4570:
;MPU-6050.c: 139: SSPCON2bits.RSEN=1;while(SSPCON2bits.RSEN);
	bsf	((c:4037)),c,1	;volatile
	goto	l282
	
l283:
	
l282:
	btfsc	((c:4037)),c,1	;volatile
	goto	u5651
	goto	u5650
u5651:
	goto	l282
u5650:
	goto	l4572
	
l284:
	line	140
	
l4572:
;MPU-6050.c: 140: WriteI2C(0xD0+1);
	movlw	(0D1h)&0ffh
	
	call	_WriteI2C
	line	141
;MPU-6050.c: 141: dataL=ReadI2C();
	call	_ReadI2C	;wreg free
	movwf	(??_getAccelY+0+0)&0ffh,c
	movf	((??_getAccelY+0+0)),c,w
	movwf	((c:getAccelY@dataL)),c
	clrf	((c:getAccelY@dataL+1)),c
	line	142
	
l4574:
;MPU-6050.c: 142: SSPCON2bits.ACKDT=1;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bsf	((c:4037)),c,5	;volatile
	
l4576:
	bsf	((c:4037)),c,4	;volatile
	goto	l285
	
l286:
	
l285:
	btfsc	((c:4037)),c,4	;volatile
	goto	u5661
	goto	u5660
u5661:
	goto	l285
u5660:
	
l287:
	line	143
;MPU-6050.c: 143: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l288
	
l289:
	
l288:
	btfsc	((c:4037)),c,2	;volatile
	goto	u5671
	goto	u5670
u5671:
	goto	l288
u5670:
	goto	l4578
	
l290:
	line	144
	
l4578:
;MPU-6050.c: 144: data=(dataH<<8)|dataL;
	movf	((c:getAccelY@dataH)),c,w
	movwf	(??_getAccelY+0+0+1)&0ffh,c
	clrf	(??_getAccelY+0+0)&0ffh,c
	movf	((c:getAccelY@dataL)),c,w
	iorwf	(??_getAccelY+0+0),c,w
	movwf	((c:getAccelY@data)),c
	movf	((c:getAccelY@dataL+1)),c,w
	iorwf	(??_getAccelY+0+1),c,w
	movwf	1+((c:getAccelY@data)),c
	line	145
	
l4580:
;MPU-6050.c: 145: return data;
	movff	(c:getAccelY@data),(c:?_getAccelY)
	movff	(c:getAccelY@data+1),(c:?_getAccelY+1)
	goto	l291
	
l4582:
	line	146
	
l291:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_getAccelY
	__end_of_getAccelY:
	signat	_getAccelY,90
	global	_getAccelX

;; *************** function _getAccelX *****************
;; Defined at:
;;		line 100 in file "D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\MPU-6050.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data            2   33[COMRAM] int 
;;  dataL           2   31[COMRAM] int 
;;  dataH           2   29[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  2   25[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:        10       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_ReadI2C
;;		_WriteI2C
;; This function is called by:
;;		_computeAngle
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2
	line	100
global __ptext21
__ptext21:
psect	text21
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\MPU-6050.c"
	line	100
	global	__size_of_getAccelX
	__size_of_getAccelX	equ	__end_of_getAccelX-_getAccelX
	
_getAccelX:
;incstack = 0
	opt	stack 25
	line	103
	
l4528:
;MPU-6050.c: 101: signed int dataH,dataL;
;MPU-6050.c: 102: signed int data;
;MPU-6050.c: 103: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l240
	
l241:
	
l240:
	btfsc	((c:4037)),c,0	;volatile
	goto	u5521
	goto	u5520
u5521:
	goto	l240
u5520:
	goto	l4530
	
l242:
	line	104
	
l4530:
;MPU-6050.c: 104: WriteI2C(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_WriteI2C
	line	105
;MPU-6050.c: 105: WriteI2C(0x3B);
	movlw	(03Bh)&0ffh
	
	call	_WriteI2C
	line	106
	
l4532:
;MPU-6050.c: 106: SSPCON2bits.RSEN=1;while(SSPCON2bits.RSEN);
	bsf	((c:4037)),c,1	;volatile
	goto	l243
	
l244:
	
l243:
	btfsc	((c:4037)),c,1	;volatile
	goto	u5531
	goto	u5530
u5531:
	goto	l243
u5530:
	goto	l4534
	
l245:
	line	107
	
l4534:
;MPU-6050.c: 107: WriteI2C(0xD0+1);
	movlw	(0D1h)&0ffh
	
	call	_WriteI2C
	line	108
;MPU-6050.c: 108: dataH=ReadI2C();
	call	_ReadI2C	;wreg free
	movwf	(??_getAccelX+0+0)&0ffh,c
	movf	((??_getAccelX+0+0)),c,w
	movwf	((c:getAccelX@dataH)),c
	clrf	((c:getAccelX@dataH+1)),c
	line	109
	
l4536:
;MPU-6050.c: 109: SSPCON2bits.ACKDT=1;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bsf	((c:4037)),c,5	;volatile
	
l4538:
	bsf	((c:4037)),c,4	;volatile
	goto	l246
	
l247:
	
l246:
	btfsc	((c:4037)),c,4	;volatile
	goto	u5541
	goto	u5540
u5541:
	goto	l246
u5540:
	
l248:
	line	110
;MPU-6050.c: 110: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l249
	
l250:
	
l249:
	btfsc	((c:4037)),c,2	;volatile
	goto	u5551
	goto	u5550
u5551:
	goto	l249
u5550:
	
l251:
	line	112
;MPU-6050.c: 112: SSPCON2bits.SEN=1;while(SSPCON2bits.SEN);
	bsf	((c:4037)),c,0	;volatile
	goto	l252
	
l253:
	
l252:
	btfsc	((c:4037)),c,0	;volatile
	goto	u5561
	goto	u5560
u5561:
	goto	l252
u5560:
	goto	l4540
	
l254:
	line	113
	
l4540:
;MPU-6050.c: 113: WriteI2C(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_WriteI2C
	line	114
;MPU-6050.c: 114: WriteI2C(0x3C);
	movlw	(03Ch)&0ffh
	
	call	_WriteI2C
	line	115
	
l4542:
;MPU-6050.c: 115: SSPCON2bits.RSEN=1;while(SSPCON2bits.RSEN);
	bsf	((c:4037)),c,1	;volatile
	goto	l255
	
l256:
	
l255:
	btfsc	((c:4037)),c,1	;volatile
	goto	u5571
	goto	u5570
u5571:
	goto	l255
u5570:
	goto	l4544
	
l257:
	line	116
	
l4544:
;MPU-6050.c: 116: WriteI2C(0xD0+1);
	movlw	(0D1h)&0ffh
	
	call	_WriteI2C
	line	117
;MPU-6050.c: 117: dataL=ReadI2C();
	call	_ReadI2C	;wreg free
	movwf	(??_getAccelX+0+0)&0ffh,c
	movf	((??_getAccelX+0+0)),c,w
	movwf	((c:getAccelX@dataL)),c
	clrf	((c:getAccelX@dataL+1)),c
	line	118
	
l4546:
;MPU-6050.c: 118: SSPCON2bits.ACKDT=1;SSPCON2bits.ACKEN=1;while(SSPCON2bits.ACKEN);
	bsf	((c:4037)),c,5	;volatile
	
l4548:
	bsf	((c:4037)),c,4	;volatile
	goto	l258
	
l259:
	
l258:
	btfsc	((c:4037)),c,4	;volatile
	goto	u5581
	goto	u5580
u5581:
	goto	l258
u5580:
	
l260:
	line	119
;MPU-6050.c: 119: SSPCON2bits.PEN=1;while(SSPCON2bits.PEN);
	bsf	((c:4037)),c,2	;volatile
	goto	l261
	
l262:
	
l261:
	btfsc	((c:4037)),c,2	;volatile
	goto	u5591
	goto	u5590
u5591:
	goto	l261
u5590:
	goto	l4550
	
l263:
	line	120
	
l4550:
;MPU-6050.c: 120: data=(dataH<<8)|dataL;
	movf	((c:getAccelX@dataH)),c,w
	movwf	(??_getAccelX+0+0+1)&0ffh,c
	clrf	(??_getAccelX+0+0)&0ffh,c
	movf	((c:getAccelX@dataL)),c,w
	iorwf	(??_getAccelX+0+0),c,w
	movwf	((c:getAccelX@data)),c
	movf	((c:getAccelX@dataL+1)),c,w
	iorwf	(??_getAccelX+0+1),c,w
	movwf	1+((c:getAccelX@data)),c
	line	121
	
l4552:
;MPU-6050.c: 121: return data;
	movff	(c:getAccelX@data),(c:?_getAccelX)
	movff	(c:getAccelX@data+1),(c:?_getAccelX+1)
	goto	l264
	
l4554:
	line	122
	
l264:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_getAccelX
	__end_of_getAccelX:
	signat	_getAccelX,90
	global	_WriteI2C

;; *************** function _WriteI2C *****************
;; Defined at:
;;		line 75 in file "D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\i2c.c"
;; Parameters:    Size  Location     Type
;;  data_out        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data_out        1   24[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_IdleI2C
;; This function is called by:
;;		_sensorSetup
;;		_getGyroY
;;		_getAccelX
;;		_getAccelY
;;		_getAccelZ
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\i2c.c"
	line	75
global __ptext22
__ptext22:
psect	text22
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\i2c.c"
	line	75
	global	__size_of_WriteI2C
	__size_of_WriteI2C	equ	__end_of_WriteI2C-_WriteI2C
	
_WriteI2C:
;incstack = 0
	opt	stack 26
;WriteI2C@data_out stored from wreg
	movwf	((c:WriteI2C@data_out)),c
	line	77
	
l4382:
;i2c.c: 77: SSPBUF = data_out;
	movff	(c:WriteI2C@data_out),(c:4041)	;volatile
	line	78
	
l4384:
;i2c.c: 78: if ( SSPCON1bits.WCOL )
	btfss	((c:4038)),c,7	;volatile
	goto	u5261
	goto	u5260
u5261:
	goto	l4390
u5260:
	goto	l168
	line	79
	
l4386:
;i2c.c: 79: return ( -1 );
;	Return value of _WriteI2C is never used
	goto	l168
	
l4388:
	goto	l168
	line	80
	
l167:
	line	82
	
l4390:
;i2c.c: 80: else
;i2c.c: 81: {
;i2c.c: 82: if( ((SSPCON1&0x0F)==0x08) || ((SSPCON1&0x0F)==0x0B) )
	movf	((c:4038)),c,w	;volatile
	andlw	low(0Fh)
	xorlw	08h
	btfsc	status,2
	goto	u5271
	goto	u5270
u5271:
	goto	l173
u5270:
	
l4392:
	movf	((c:4038)),c,w	;volatile
	andlw	low(0Fh)
	xorlw	0Bh
	btfss	status,2
	goto	u5281
	goto	u5280
u5281:
	goto	l168
u5280:
	goto	l173
	
l172:
	line	84
;i2c.c: 83: {
;i2c.c: 84: while( SSPSTATbits.BF );
	goto	l173
	
l174:
	
l173:
	btfsc	((c:4039)),c,0	;volatile
	goto	u5291
	goto	u5290
u5291:
	goto	l173
u5290:
	goto	l4394
	
l175:
	line	85
	
l4394:
;i2c.c: 85: IdleI2C();
	call	_IdleI2C	;wreg free
	line	86
	
l4396:
;i2c.c: 86: if ( SSPCON2bits.ACKSTAT )
	movf	((c:4037)),c,w	;volatile
	goto	l168
	line	87
	
l4398:
;i2c.c: 87: return ( -2 );
;	Return value of _WriteI2C is never used
	goto	l168
	
l4400:
	goto	l168
	line	88
	
l176:
;i2c.c: 88: else return ( 0 );
;	Return value of _WriteI2C is never used
	goto	l168
	
l177:
	goto	l168
	line	89
	
l170:
	goto	l168
	line	91
	
l169:
	line	92
	
l168:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_WriteI2C
	__end_of_WriteI2C:
	signat	_WriteI2C,4217
	global	_IdleI2C

;; *************** function _IdleI2C *****************
;; Defined at:
;;		line 48 in file "D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_WriteI2C
;;		_sensorSetup
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2
	line	48
global __ptext23
__ptext23:
psect	text23
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\i2c.c"
	line	48
	global	__size_of_IdleI2C
	__size_of_IdleI2C	equ	__end_of_IdleI2C-_IdleI2C
	
_IdleI2C:
;incstack = 0
	opt	stack 26
	line	50
	
l4232:
;i2c.c: 50: while ( ( SSPCON2 & 0x1F ) || ( SSPSTATbits.R_W ) )
	goto	l4234
	
l147:
	line	51
;i2c.c: 51: continue;
	goto	l4234
	
l146:
	line	50
	
l4234:
	movff	(c:4037),??_IdleI2C+0+0	;volatile
	movlw	01Fh
	andwf	(??_IdleI2C+0+0),c
	btfss	status,2
	goto	u5031
	goto	u5030
u5031:
	goto	l4234
u5030:
	
l4236:
	btfsc	((c:4039)),c,2	;volatile
	goto	u5041
	goto	u5040
u5041:
	goto	l4234
u5040:
	goto	l149
	
l148:
	line	52
	
l149:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_IdleI2C
	__end_of_IdleI2C:
	signat	_IdleI2C,89
	global	_ReadI2C

;; *************** function _ReadI2C *****************
;; Defined at:
;;		line 67 in file "D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_getGyroY
;;		_getAccelX
;;		_getAccelY
;;		_getAccelZ
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2
	line	67
global __ptext24
__ptext24:
psect	text24
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\i2c.c"
	line	67
	global	__size_of_ReadI2C
	__size_of_ReadI2C	equ	__end_of_ReadI2C-_ReadI2C
	
_ReadI2C:
;incstack = 0
	opt	stack 26
	line	69
	
l4374:
;i2c.c: 69: if( ((SSPCON1&0x0F)==0x08) || ((SSPCON1&0x0F)==0x0B) )
	movf	((c:4038)),c,w	;volatile
	andlw	low(0Fh)
	xorlw	08h
	btfsc	status,2
	goto	u5231
	goto	u5230
u5231:
	goto	l160
u5230:
	
l4376:
	movf	((c:4038)),c,w	;volatile
	andlw	low(0Fh)
	xorlw	0Bh
	btfss	status,2
	goto	u5241
	goto	u5240
u5241:
	goto	l161
u5240:
	
l160:
	line	70
;i2c.c: 70: SSPCON2bits.RCEN = 1;
	bsf	((c:4037)),c,3	;volatile
	goto	l161
	
l158:
	line	71
;i2c.c: 71: while ( !SSPSTATbits.BF );
	goto	l161
	
l162:
	
l161:
	btfss	((c:4039)),c,0	;volatile
	goto	u5251
	goto	u5250
u5251:
	goto	l161
u5250:
	goto	l4378
	
l163:
	line	72
	
l4378:
;i2c.c: 72: return ( SSPBUF );
	movf	((c:4041)),c,w	;volatile
	goto	l164
	
l4380:
	line	73
	
l164:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_ReadI2C
	__end_of_ReadI2C:
	signat	_ReadI2C,89
	global	_atan

;; *************** function _atan *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\atan.c"
;; Parameters:    Size  Location     Type
;;  f               3   81[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  val             3   94[BANK0 ] unsigned char 
;;  val_squared     3   91[BANK0 ] unsigned char 
;;  x               3   87[BANK0 ] unsigned char 
;;  y               3   84[BANK0 ] unsigned char 
;;  recip           1   90[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   81[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       3       0       0       0       0       0
;;      Locals:         0      13       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0      16       0       0       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftadd
;;		___ftdiv
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		_eval_poly
;;		_fabs
;; This function is called by:
;;		_computeAngle
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\atan.c"
	line	8
global __ptext25
__ptext25:
psect	text25
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\atan.c"
	line	8
	global	__size_of_atan
	__size_of_atan	equ	__end_of_atan-_atan
	
_atan:
;incstack = 0
	opt	stack 24
	line	30
	
l4686:
	movff	(atan@f),(c:fabs@d)
	movff	(atan@f+1),(c:fabs@d+1)
	movff	(atan@f+2),(c:fabs@d+2)
	call	_fabs	;wreg free
	movff	0+?_fabs,(atan@val)
	movff	1+?_fabs,(atan@val+1)
	movff	2+?_fabs,(atan@val+2)
	movlb	0	; () banked
	movf	((atan@val))&0ffh,w
	movlb	0	; () banked
iorwf	((atan@val+1))&0ffh,w
	movlb	0	; () banked
iorwf	((atan@val+2))&0ffh,w
	btfss	status,2
	goto	u5841
	goto	u5840

u5841:
	goto	l4692
u5840:
	line	31
	
l4688:; BSR set to: 0

	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_atan))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_atan+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?_atan+2))&0ffh

	goto	l666
	
l4690:; BSR set to: 0

	goto	l666
	
l665:; BSR set to: 0

	line	32
	
l4692:; BSR set to: 0

	movlw	low(float24(1.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1))&0ffh
	movlw	high(float24(1.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+1))&0ffh
	movlw	low highword(float24(1.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+2))&0ffh

	movff	(atan@val),(___ftge@ff2)
	movff	(atan@val+1),(___ftge@ff2+1)
	movff	(atan@val+2),(___ftge@ff2+2)
	call	___ftge	;wreg free
	movlb	0	; () banked
	btfss	status,0
	goto	u5851
	goto	u5850
u5851:
	movlw	1
	goto	u5860
u5850:
	movlw	0
u5860:
	movlb	0	; () banked
	movwf	((atan@recip))&0ffh
	movlb	0	; () banked
	movf	((atan@recip))&0ffh,w
	btfsc	status,2
	goto	u5871
	goto	u5870
u5871:
	goto	l667
u5870:
	line	33
	
l4694:; BSR set to: 0

	movlw	low(float24(1.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f1))&0ffh
	movlw	high(float24(1.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f1+1))&0ffh
	movlw	low highword(float24(1.0000000000000000))
	movlb	0	; () banked
	movwf	((___ftdiv@f1+2))&0ffh

	movff	(atan@val),(___ftdiv@f2)
	movff	(atan@val+1),(___ftdiv@f2+1)
	movff	(atan@val+2),(___ftdiv@f2+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(atan@val)
	movff	1+?___ftdiv,(atan@val+1)
	movff	2+?___ftdiv,(atan@val+2)
	
l667:
	line	34
	movff	(atan@val),(___ftmul@f1)
	movff	(atan@val+1),(___ftmul@f1+1)
	movff	(atan@val+2),(___ftmul@f1+2)
	movff	(atan@val),(___ftmul@f2)
	movff	(atan@val+1),(___ftmul@f2+1)
	movff	(atan@val+2),(___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(atan@val_squared)
	movff	1+?___ftmul,(atan@val_squared+1)
	movff	2+?___ftmul,(atan@val_squared+2)
	line	35
	
l4696:
	movff	(atan@val_squared),(eval_poly@x)
	movff	(atan@val_squared+1),(eval_poly@x+1)
	movff	(atan@val_squared+2),(eval_poly@x+2)
		movlw	low(atan@coeff_b)
	movlb	0	; () banked
	movwf	((eval_poly@d))&0ffh
	movlw	high(atan@coeff_b)
	movlb	0	; () banked
	movwf	((eval_poly@d+1))&0ffh

	movlw	high(04h)
	movlb	0	; () banked
	movwf	((eval_poly@n+1))&0ffh
	movlw	low(04h)
	movwf	((eval_poly@n))&0ffh
	call	_eval_poly	;wreg free
	movff	0+?_eval_poly,(atan@y)
	movff	1+?_eval_poly,(atan@y+1)
	movff	2+?_eval_poly,(atan@y+2)
	line	36
	
l4698:
	movff	(atan@val_squared),(eval_poly@x)
	movff	(atan@val_squared+1),(eval_poly@x+1)
	movff	(atan@val_squared+2),(eval_poly@x+2)
		movlw	low(atan@coeff_a)
	movlb	0	; () banked
	movwf	((eval_poly@d))&0ffh
	movlw	high(atan@coeff_a)
	movlb	0	; () banked
	movwf	((eval_poly@d+1))&0ffh

	movlw	high(05h)
	movlb	0	; () banked
	movwf	((eval_poly@n+1))&0ffh
	movlw	low(05h)
	movwf	((eval_poly@n))&0ffh
	call	_eval_poly	;wreg free
	movff	0+?_eval_poly,(atan@x)
	movff	1+?_eval_poly,(atan@x+1)
	movff	2+?_eval_poly,(atan@x+2)
	line	37
	movff	(atan@val),(___ftmul@f1)
	movff	(atan@val+1),(___ftmul@f1+1)
	movff	(atan@val+2),(___ftmul@f1+2)
	movff	(atan@y),(___ftdiv@f2)
	movff	(atan@y+1),(___ftdiv@f2+1)
	movff	(atan@y+2),(___ftdiv@f2+2)
	movff	(atan@x),(___ftdiv@f1)
	movff	(atan@x+1),(___ftdiv@f1+1)
	movff	(atan@x+2),(___ftdiv@f1+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(___ftmul@f2)
	movff	1+?___ftdiv,(___ftmul@f2+1)
	movff	2+?___ftdiv,(___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(atan@val)
	movff	1+?___ftmul,(atan@val+1)
	movff	2+?___ftmul,(atan@val+2)
	line	38
	
l4700:
	movlb	0	; () banked
	movf	((atan@recip))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u5881
	goto	u5880
u5881:
	goto	l4704
u5880:
	line	39
	
l4702:; BSR set to: 0

	movff	(atan@val),(c:___ftneg@f1)
	movff	(atan@val+1),(c:___ftneg@f1+1)
	movff	(atan@val+2),(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(c:___ftadd@f1)
	movff	1+?___ftneg,(c:___ftadd@f1+1)
	movff	2+?___ftneg,(c:___ftadd@f1+2)
	movlw	low(float24(1.5707963267948950))
	movwf	((c:___ftadd@f2)),c
	movlw	high(float24(1.5707963267948950))
	movwf	((c:___ftadd@f2+1)),c
	movlw	low highword(float24(1.5707963267948950))
	movwf	((c:___ftadd@f2+2)),c

	call	___ftadd	;wreg free
	movff	0+?___ftadd,(atan@val)
	movff	1+?___ftadd,(atan@val+1)
	movff	2+?___ftadd,(atan@val+2)
	goto	l4704
	
l668:
	line	40
	
l4704:
	movlb	0	; () banked
	btfsc	((atan@f+2))&0ffh,7
	goto	u5891
	goto	u5890

u5891:
	goto	l4708
u5890:
	
l4706:; BSR set to: 0

	movff	(atan@val),(?_atan)
	movff	(atan@val+1),(?_atan+1)
	movff	(atan@val+2),(?_atan+2)
	goto	l666
	
l670:; BSR set to: 0

	
l4708:; BSR set to: 0

	movff	(atan@val),(c:___ftneg@f1)
	movff	(atan@val+1),(c:___ftneg@f1+1)
	movff	(atan@val+2),(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(?_atan)
	movff	1+?___ftneg,(?_atan+1)
	movff	2+?___ftneg,(?_atan+2)
	goto	l666
	
l672:
	goto	l666
	
l4710:
	line	41
	
l666:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_atan
	__end_of_atan:
	signat	_atan,4219
	global	_fabs

;; *************** function _fabs *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\fabs.c"
;; Parameters:    Size  Location     Type
;;  d               3   34[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   34[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftneg
;; This function is called by:
;;		_atan
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\fabs.c"
	line	4
global __ptext26
__ptext26:
psect	text26
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\fabs.c"
	line	4
	global	__size_of_fabs
	__size_of_fabs	equ	__end_of_fabs-_fabs
	
_fabs:
;incstack = 0
	opt	stack 25
	line	6
	
l4402:
	btfsc	((c:fabs@d+2)),c,7
	goto	u5300
	goto	u5301

u5301:
	goto	l745
u5300:
	line	7
	
l4404:
	movff	(c:fabs@d),(c:___ftneg@f1)
	movff	(c:fabs@d+1),(c:___ftneg@f1+1)
	movff	(c:fabs@d+2),(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(c:?_fabs)
	movff	1+?___ftneg,(c:?_fabs+1)
	movff	2+?___ftneg,(c:?_fabs+2)
	goto	l746
	
l4406:
	goto	l746
	
l745:
	line	8
	movff	(c:fabs@d),(c:?_fabs)
	movff	(c:fabs@d+1),(c:?_fabs+1)
	movff	(c:fabs@d+2),(c:?_fabs+2)
	line	9
	
l746:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_fabs
	__end_of_fabs:
	signat	_fabs,4219
	global	_eval_poly

;; *************** function _eval_poly *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\evalpoly.c"
;; Parameters:    Size  Location     Type
;;  x               3   12[BANK0 ] unsigned char 
;;  d               2   15[BANK0 ] PTR const 
;;		 -> log@coeff(27), exp@coeff(30), atan@coeff_a(18), atan@coeff_b(15), 
;;  n               2   17[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  res             3   21[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   12[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       7       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0
;;      Totals:         0      12       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftadd
;;		___ftmul
;;		___wmul
;; This function is called by:
;;		_atan
;;		_exp
;;		_log
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\evalpoly.c"
	line	4
global __ptext27
__ptext27:
psect	text27
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\evalpoly.c"
	line	4
	global	__size_of_eval_poly
	__size_of_eval_poly	equ	__end_of_eval_poly-_eval_poly
	
_eval_poly:
;incstack = 0
	opt	stack 23
	line	8
	
l4292:
	movff	(eval_poly@n),(c:___wmul@multiplier)
	movff	(eval_poly@n+1),(c:___wmul@multiplier+1)
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	(eval_poly@d),??_eval_poly+0+0
	movff	(eval_poly@d+1),??_eval_poly+0+0+1
	movf	(0+?___wmul),c,w
	movlb	0	; () banked
	addwf	(??_eval_poly+0+0)&0ffh
	movf	(1+?___wmul),c,w
	movlb	0	; () banked
	addwfc	(??_eval_poly+0+1)&0ffh
	movff	??_eval_poly+0+0,tblptrl
	movff	??_eval_poly+0+1,tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(eval_poly@res)
	tblrd*+
	
	movff	tablat,(eval_poly@res+1)
	tblrd*-
	
	movff	tablat,(eval_poly@res+2)

	line	9
	goto	l4296
	
l740:; BSR set to: 0

	line	10
	
l4294:; BSR set to: 0

	movff	(eval_poly@res),(___ftmul@f2)
	movff	(eval_poly@res+1),(___ftmul@f2+1)
	movff	(eval_poly@res+2),(___ftmul@f2+2)
	movff	(eval_poly@x),(___ftmul@f1)
	movff	(eval_poly@x+1),(___ftmul@f1+1)
	movff	(eval_poly@x+2),(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f1)
	movff	1+?___ftmul,(c:___ftadd@f1+1)
	movff	2+?___ftmul,(c:___ftadd@f1+2)
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	movlb	0	; () banked
	decf	((eval_poly@n))&0ffh
	btfss	status,0
	decf	((eval_poly@n+1))&0ffh
	movff	(eval_poly@n),(c:___wmul@multiplier)
	movff	(eval_poly@n+1),(c:___wmul@multiplier+1)
	call	___wmul	;wreg free
	movff	(eval_poly@d),??_eval_poly+0+0
	movff	(eval_poly@d+1),??_eval_poly+0+0+1
	movf	(0+?___wmul),c,w
	movlb	0	; () banked
	addwf	(??_eval_poly+0+0)&0ffh
	movf	(1+?___wmul),c,w
	movlb	0	; () banked
	addwfc	(??_eval_poly+0+1)&0ffh
	movff	??_eval_poly+0+0,tblptrl
	movff	??_eval_poly+0+1,tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(c:___ftadd@f2)
	tblrd*+
	
	movff	tablat,(c:___ftadd@f2+1)
	tblrd*-
	
	movff	tablat,(c:___ftadd@f2+2)

	call	___ftadd	;wreg free
	movff	0+?___ftadd,(eval_poly@res)
	movff	1+?___ftadd,(eval_poly@res+1)
	movff	2+?___ftadd,(eval_poly@res+2)
	goto	l4296
	
l739:
	line	9
	
l4296:
	movlb	0	; () banked
	movf	((eval_poly@n))&0ffh,w
	movlb	0	; () banked
iorwf	((eval_poly@n+1))&0ffh,w
	btfss	status,2
	goto	u5111
	goto	u5110

u5111:
	goto	l4294
u5110:
	
l741:; BSR set to: 0

	line	11
	movff	(eval_poly@res),(?_eval_poly)
	movff	(eval_poly@res+1),(?_eval_poly+1)
	movff	(eval_poly@res+2),(?_eval_poly+2)
	line	12
	
l742:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_eval_poly
	__end_of_eval_poly:
	signat	_eval_poly,12411
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2   23[COMRAM] unsigned int 
;;  multiplicand    2   25[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2   27[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   23[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_eval_poly
;;		_sprintf
;;		_scale
;;		_fround
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\Umul16.c"
	line	15
global __ptext28
__ptext28:
psect	text28
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:; BSR set to: 0

;incstack = 0
	opt	stack 24
	line	37
	
l4008:
	movf	((c:___wmul@multiplier)),c,w
	mulwf	((c:___wmul@multiplicand)),c
	movff	prodl,(c:___wmul@product)
	movff	prodh,(c:___wmul@product+1)
	line	38
	movf	((c:___wmul@multiplier)),c,w
	mulwf	(0+((c:___wmul@multiplicand)+01h)),c
	movf	(prodl),c,w
	addwf	((c:___wmul@product+1)),c

	line	39
	movf	(0+((c:___wmul@multiplier)+01h)),c,w
	mulwf	((c:___wmul@multiplicand)),c
	movf	(prodl),c,w
	addwf	((c:___wmul@product+1)),c

	line	52
	
l4010:
	movff	(c:___wmul@product),(c:?___wmul)
	movff	(c:___wmul@product+1),(c:?___wmul+1)
	goto	l524
	
l4012:
	line	53
	
l524:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 54 in file "C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f1              3   21[BANK0 ] float 
;;  f2              3   24[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   31[BANK0 ] float 
;;  sign            1   35[BANK0 ] unsigned char 
;;  exp             1   34[BANK0 ] unsigned char 
;;  cntr            1   30[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   21[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       6       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0
;;      Totals:         0      15       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_computeAngle
;;		_atan
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\ftdiv.c"
	line	54
global __ptext29
__ptext29:
psect	text29
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\ftdiv.c"
	line	54
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:
;incstack = 0
	opt	stack 24
	line	63
	
l4238:
	movff	(___ftdiv@f1+2),??___ftdiv+0+0
	movlb	0	; () banked
	clrf	(??___ftdiv+0+0+1)&0ffh
	clrf	(??___ftdiv+0+0+2)&0ffh
	movlb	0	; () banked
	rlcf	((___ftdiv@f1+1))&0ffh,w
	movlb	0	; () banked
	rlcf	(??___ftdiv+0+0)&0ffh
	bnc	u5051
	bsf	(??___ftdiv+0+0+1)&0ffh,0
u5051:
	movlb	0	; () banked
	movf	(??___ftdiv+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((___ftdiv@exp))&0ffh
	movlb	0	; () banked
	movf	((___ftdiv@exp))&0ffh,w
	btfss	status,2
	goto	u5061
	goto	u5060
u5061:
	goto	l4244
u5060:
	line	64
	
l4240:; BSR set to: 0

	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?___ftdiv))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?___ftdiv+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?___ftdiv+2))&0ffh

	goto	l846
	
l4242:; BSR set to: 0

	goto	l846
	
l845:; BSR set to: 0

	line	65
	
l4244:; BSR set to: 0

	movff	(___ftdiv@f2+2),??___ftdiv+0+0
	movlb	0	; () banked
	clrf	(??___ftdiv+0+0+1)&0ffh
	clrf	(??___ftdiv+0+0+2)&0ffh
	movlb	0	; () banked
	rlcf	((___ftdiv@f2+1))&0ffh,w
	movlb	0	; () banked
	rlcf	(??___ftdiv+0+0)&0ffh
	bnc	u5071
	bsf	(??___ftdiv+0+0+1)&0ffh,0
u5071:
	movlb	0	; () banked
	movf	(??___ftdiv+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((___ftdiv@sign))&0ffh
	movlb	0	; () banked
	movf	((___ftdiv@sign))&0ffh,w
	btfss	status,2
	goto	u5081
	goto	u5080
u5081:
	goto	l4250
u5080:
	line	66
	
l4246:; BSR set to: 0

	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?___ftdiv))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?___ftdiv+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?___ftdiv+2))&0ffh

	goto	l846
	
l4248:; BSR set to: 0

	goto	l846
	
l847:; BSR set to: 0

	line	67
	
l4250:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((___ftdiv@f3))&0ffh
	movlw	high(0)
	movlb	0	; () banked
	movwf	((___ftdiv@f3+1))&0ffh
	movlw	low highword(0)
	movlb	0	; () banked
	movwf	((___ftdiv@f3+2))&0ffh

	line	68
	
l4252:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftdiv@sign))&0ffh,w
	addlw	low(089h)
	movlb	0	; () banked
	subwf	((___ftdiv@exp))&0ffh
	line	69
	
l4254:; BSR set to: 0

	movff	0+2+(___ftdiv@f1),(___ftdiv@sign)
	line	70
	
l4256:; BSR set to: 0

	movlb	0	; () banked
	movf	(0+2+(___ftdiv@f2))&0ffh,w
	movlb	0	; () banked
	xorwf	((___ftdiv@sign))&0ffh
	line	71
	
l4258:; BSR set to: 0

	movlw	(080h)&0ffh
	movlb	0	; () banked
	andwf	((___ftdiv@sign))&0ffh
	line	72
	
l4260:; BSR set to: 0

	movlb	0	; () banked
	bsf	(0+(15/8)+(___ftdiv@f1))&0ffh,(15)&7
	line	73
	
l4262:; BSR set to: 0

	movlw	low(0FFFFh)
	movlb	0	; () banked
	andwf	((___ftdiv@f1))&0ffh
	movlw	high(0FFFFh)
	movlb	0	; () banked
	andwf	((___ftdiv@f1+1))&0ffh
	movlw	low highword(0FFFFh)
	movlb	0	; () banked
	andwf	((___ftdiv@f1+2))&0ffh

	line	74
	
l4264:; BSR set to: 0

	movlb	0	; () banked
	bsf	(0+(15/8)+(___ftdiv@f2))&0ffh,(15)&7
	line	75
	
l4266:; BSR set to: 0

	movlw	low(0FFFFh)
	movlb	0	; () banked
	andwf	((___ftdiv@f2))&0ffh
	movlw	high(0FFFFh)
	movlb	0	; () banked
	andwf	((___ftdiv@f2+1))&0ffh
	movlw	low highword(0FFFFh)
	movlb	0	; () banked
	andwf	((___ftdiv@f2+2))&0ffh

	line	76
	
l4268:; BSR set to: 0

	movlw	low(018h)
	movlb	0	; () banked
	movwf	((___ftdiv@cntr))&0ffh
	goto	l4270
	line	77
	
l848:; BSR set to: 0

	line	78
	
l4270:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rlcf	((___ftdiv@f3))&0ffh
	rlcf	((___ftdiv@f3+1))&0ffh
	rlcf	((___ftdiv@f3+2))&0ffh
	line	79
	
l4272:; BSR set to: 0

	movlb	0	; () banked
		movf	((___ftdiv@f2))&0ffh,w
	movlb	0	; () banked
	subwf	((___ftdiv@f1))&0ffh,w
	movlb	0	; () banked
	movf	((___ftdiv@f2+1))&0ffh,w
	movlb	0	; () banked
	subwfb	((___ftdiv@f1+1))&0ffh,w
	movlb	0	; () banked
	movf	((___ftdiv@f2+2))&0ffh,w
	movlb	0	; () banked
	subwfb	((___ftdiv@f1+2))&0ffh,w
	btfss	status,0
	goto	u5091
	goto	u5090

u5091:
	goto	l849
u5090:
	line	80
	
l4274:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftdiv@f2))&0ffh,w
	movlb	0	; () banked
	subwf	((___ftdiv@f1))&0ffh
	movlb	0	; () banked
	movf	((___ftdiv@f2+1))&0ffh,w
	movlb	0	; () banked
	subwfb	((___ftdiv@f1+1))&0ffh
	movlb	0	; () banked
	movf	((___ftdiv@f2+2))&0ffh,w
	movlb	0	; () banked
	subwfb	((___ftdiv@f1+2))&0ffh

	line	81
	
l4276:; BSR set to: 0

	movlb	0	; () banked
	bsf	(0+(0/8)+(___ftdiv@f3))&0ffh,(0)&7
	line	82
	
l849:; BSR set to: 0

	line	83
	movlb	0	; () banked
	bcf	status,0
	rlcf	((___ftdiv@f1))&0ffh
	rlcf	((___ftdiv@f1+1))&0ffh
	rlcf	((___ftdiv@f1+2))&0ffh
	line	84
	
l4278:; BSR set to: 0

	movlb	0	; () banked
	decfsz	((___ftdiv@cntr))&0ffh
	
	goto	l4270
	goto	l4280
	
l850:; BSR set to: 0

	line	85
	
l4280:; BSR set to: 0

	movff	(___ftdiv@f3),(c:___ftpack@arg)
	movff	(___ftdiv@f3+1),(c:___ftpack@arg+1)
	movff	(___ftdiv@f3+2),(c:___ftpack@arg+2)
	movff	(___ftdiv@exp),(c:___ftpack@exp)
	movff	(___ftdiv@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(?___ftdiv)
	movff	1+?___ftpack,(?___ftdiv+1)
	movff	2+?___ftpack,(?___ftdiv+2)
	goto	l846
	
l4282:
	line	86
	
l846:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	_DelayMs

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 11 in file "D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\delay.c"
;; Parameters:    Size  Location     Type
;;  cnt             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cnt             1   23[COMRAM] unsigned char 
;;  _dcnt           1   25[COMRAM] unsigned char 
;;  i               1   24[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_computeAngle
;;		_main
;;		_bluetoothTX_data
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\delay.c"
	line	11
global __ptext30
__ptext30:
psect	text30
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\delay.c"
	line	11
	global	__size_of_DelayMs
	__size_of_DelayMs	equ	__end_of_DelayMs-_DelayMs
	
_DelayMs:
;incstack = 0
	opt	stack 27
;DelayMs@cnt stored from wreg
	movwf	((c:DelayMs@cnt)),c
	line	13
	
l4484:
;delay.c: 12: unsigned char i;
;delay.c: 13: while (cnt--) {
	goto	l4494
	
l90:
	line	14
	
l4486:
;delay.c: 14: i=4;
	movlw	low(04h)
	movwf	((c:DelayMs@i)),c
	line	15
;delay.c: 15: while(i--) {
	goto	l4492
;delay.c: 16: { unsigned char _dcnt; if(238>=4) _dcnt=(238*((4*1)/(4*1))/2); else _dcnt=1; while(--_dcnt > 0) { asm("nop"); asm("nop"); continue; } };
	
l92:
	line	16
	
l4488:
	movlw	low(077h)
	movwf	((c:DelayMs@_dcnt)),c
	goto	l95
	
l93:
	
l4490:
	movlw	low(01h)
	movwf	((c:DelayMs@_dcnt)),c
	goto	l95
	
l94:
	goto	l95
	
l96:
# 16 "D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\delay.c"
nop ;# 
# 16 "D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\delay.c"
nop ;# 
psect	text30
	
l95:
	decfsz	((c:DelayMs@_dcnt)),c
	
	goto	l96
	goto	l4492
	
l97:
	goto	l4492
	line	17
	
l91:
	line	15
	
l4492:
	decf	((c:DelayMs@i)),c
		incf	((c:DelayMs@i)),c,w
	btfss	status,2
	goto	u5421
	goto	u5420

u5421:
	goto	l4488
u5420:
	goto	l4494
	
l98:
	goto	l4494
	line	18
;delay.c: 17: } ;
	
l89:
	line	13
	
l4494:
	decf	((c:DelayMs@cnt)),c
		incf	((c:DelayMs@cnt)),c,w
	btfss	status,2
	goto	u5431
	goto	u5430

u5431:
	goto	l4486
u5430:
	goto	l100
	
l99:
	line	19
	
l100:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_DelayMs
	__end_of_DelayMs:
	signat	_DelayMs,4217
	global	_PWMSetup

;; *************** function _PWMSetup *****************
;; Defined at:
;;		line 1 in file "D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\PID&Motors.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\PID&Motors.c"
	line	1
global __ptext31
__ptext31:
psect	text31
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\PID&Motors.c"
	line	1
	global	__size_of_PWMSetup
	__size_of_PWMSetup	equ	__end_of_PWMSetup-_PWMSetup
	
_PWMSetup:
;incstack = 0
	opt	stack 28
	line	2
	
l3250:
;PID&Motors.c: 2: CCP1CON=0b00001111;
	movlw	low(0Fh)
	movwf	((c:4029)),c	;volatile
	line	3
;PID&Motors.c: 3: T2CON= 0b00000100;
	movlw	low(04h)
	movwf	((c:4042)),c	;volatile
	line	4
	
l3252:
;PID&Motors.c: 4: PR2= 255;
	setf	((c:4043)),c	;volatile
	line	5
	
l350:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_PWMSetup
	__end_of_PWMSetup:
	signat	_PWMSetup,89
	global	_PIDupdate

;; *************** function _PIDupdate *****************
;; Defined at:
;;		line 7 in file "D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\PID&Motors.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Dterm           3   39[BANK0 ] float 
;;  Iterm           3   36[BANK0 ] float 
;;  Pterm           3   33[BANK0 ] float 
;;  dt              3    0        float 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0      24       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0      24       0       0       0       0       0
;;Total ram usage:       24 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftadd
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___fttol
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2
	line	7
global __ptext32
__ptext32:
psect	text32
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\PID&Motors.c"
	line	7
	global	__size_of_PIDupdate
	__size_of_PIDupdate	equ	__end_of_PIDupdate-_PIDupdate
	
_PIDupdate:
;incstack = 0
	opt	stack 26
	line	14
	
l4800:
;PID&Motors.c: 8: static float precErrore = 0;
;PID&Motors.c: 9: static float sumErrore = 0;
;PID&Motors.c: 11: float Pterm, Iterm, Dterm;
;PID&Motors.c: 12: float dt;
;PID&Motors.c: 14: errore = offsetAngle - currentAngle;
	movff	(_currentAngle),(c:___ftneg@f1)
	movff	(_currentAngle+1),(c:___ftneg@f1+1)
	movff	(_currentAngle+2),(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(c:___ftadd@f1)
	movff	1+?___ftneg,(c:___ftadd@f1+1)
	movff	2+?___ftneg,(c:___ftadd@f1+2)
	movff	(_offsetAngle),(c:___ftadd@f2)
	movff	(_offsetAngle+1),(c:___ftadd@f2+1)
	movff	(_offsetAngle+2),(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_errore)
	movff	1+?___ftadd,(_errore+1)
	movff	2+?___ftadd,(_errore+2)
	line	16
;PID&Motors.c: 16: Pterm = (float) kP * errore;
	movff	(c:_kP),(___ftmul@f1)
	movff	(c:_kP+1),(___ftmul@f1+1)
	movff	(c:_kP+2),(___ftmul@f1+2)
	movff	(_errore),(___ftmul@f2)
	movff	(_errore+1),(___ftmul@f2+1)
	movff	(_errore+2),(___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(PIDupdate@Pterm)
	movff	1+?___ftmul,(PIDupdate@Pterm+1)
	movff	2+?___ftmul,(PIDupdate@Pterm+2)
	line	18
;PID&Motors.c: 18: sumErrore += errore;
	movff	(PIDupdate@sumErrore),(c:___ftadd@f1)
	movff	(PIDupdate@sumErrore+1),(c:___ftadd@f1+1)
	movff	(PIDupdate@sumErrore+2),(c:___ftadd@f1+2)
	movff	(_errore),(c:___ftadd@f2)
	movff	(_errore+1),(c:___ftadd@f2+1)
	movff	(_errore+2),(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(PIDupdate@sumErrore)
	movff	1+?___ftadd,(PIDupdate@sumErrore+1)
	movff	2+?___ftadd,(PIDupdate@sumErrore+2)
	line	19
;PID&Motors.c: 19: Iterm = (float) kI * ((sumErrore)<(-20.0)?(-20.0):((sumErrore)>(20.0)?(20.0):(sumErrore)));
	movff	(PIDupdate@sumErrore),(___ftge@ff1)
	movff	(PIDupdate@sumErrore+1),(___ftge@ff1+1)
	movff	(PIDupdate@sumErrore+2),(___ftge@ff1+2)
	movlw	low(float24(-20.000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff2))&0ffh
	movlw	high(float24(-20.000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff2+1))&0ffh
	movlw	low highword(float24(-20.000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff2+2))&0ffh

	call	___ftge	;wreg free
	movlb	0	; () banked
	btfss	status,0
	goto	u6041
	goto	u6040
u6041:
	goto	l4810
u6040:
	
l4802:; BSR set to: 0

	movlw	low(float24(20.000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1))&0ffh
	movlw	high(float24(20.000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+1))&0ffh
	movlw	low highword(float24(20.000000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+2))&0ffh

	movff	(PIDupdate@sumErrore),(___ftge@ff2)
	movff	(PIDupdate@sumErrore+1),(___ftge@ff2+1)
	movff	(PIDupdate@sumErrore+2),(___ftge@ff2+2)
	call	___ftge	;wreg free
	movlb	0	; () banked
	btfss	status,0
	goto	u6051
	goto	u6050
u6051:
	goto	l4806
u6050:
	
l4804:; BSR set to: 0

	movff	(PIDupdate@sumErrore),(_PIDupdate$404)
	movff	(PIDupdate@sumErrore+1),(_PIDupdate$404+1)
	movff	(PIDupdate@sumErrore+2),(_PIDupdate$404+2)
	goto	l4808
	
l362:; BSR set to: 0

	
l4806:; BSR set to: 0

	movlw	low(float24(20.000000000000000))
	movlb	0	; () banked
	movwf	((_PIDupdate$404))&0ffh
	movlw	high(float24(20.000000000000000))
	movlb	0	; () banked
	movwf	((_PIDupdate$404+1))&0ffh
	movlw	low highword(float24(20.000000000000000))
	movlb	0	; () banked
	movwf	((_PIDupdate$404+2))&0ffh

	goto	l4808
	
l364:; BSR set to: 0

	
l4808:; BSR set to: 0

	movff	(_PIDupdate$404),(_PIDupdate$403)
	movff	(_PIDupdate$404+1),(_PIDupdate$403+1)
	movff	(_PIDupdate$404+2),(_PIDupdate$403+2)
	goto	l4812
	
l358:; BSR set to: 0

	
l4810:; BSR set to: 0

	movlw	low(float24(-20.000000000000000))
	movlb	0	; () banked
	movwf	((_PIDupdate$403))&0ffh
	movlw	high(float24(-20.000000000000000))
	movlb	0	; () banked
	movwf	((_PIDupdate$403+1))&0ffh
	movlw	low highword(float24(-20.000000000000000))
	movlb	0	; () banked
	movwf	((_PIDupdate$403+2))&0ffh

	goto	l4812
	
l360:; BSR set to: 0

	
l4812:; BSR set to: 0

	movff	(_PIDupdate$403),(___ftmul@f1)
	movff	(_PIDupdate$403+1),(___ftmul@f1+1)
	movff	(_PIDupdate$403+2),(___ftmul@f1+2)
	movff	(c:_kI),(___ftmul@f2)
	movff	(c:_kI+1),(___ftmul@f2+1)
	movff	(c:_kI+2),(___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(PIDupdate@Iterm)
	movff	1+?___ftmul,(PIDupdate@Iterm+1)
	movff	2+?___ftmul,(PIDupdate@Iterm+2)
	line	23
	
l4814:
;PID&Motors.c: 23: Dterm = (float) kD * (errore - precErrore);
	movff	(_errore),(c:___ftadd@f2)
	movff	(_errore+1),(c:___ftadd@f2+1)
	movff	(_errore+2),(c:___ftadd@f2+2)
	movff	(c:PIDupdate@precErrore),(c:___ftneg@f1)
	movff	(c:PIDupdate@precErrore+1),(c:___ftneg@f1+1)
	movff	(c:PIDupdate@precErrore+2),(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(c:___ftadd@f1)
	movff	1+?___ftneg,(c:___ftadd@f1+1)
	movff	2+?___ftneg,(c:___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(___ftmul@f1)
	movff	1+?___ftadd,(___ftmul@f1+1)
	movff	2+?___ftadd,(___ftmul@f1+2)
	movff	(c:_kD),(___ftmul@f2)
	movff	(c:_kD+1),(___ftmul@f2+1)
	movff	(c:_kD+2),(___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(PIDupdate@Dterm)
	movff	1+?___ftmul,(PIDupdate@Dterm+1)
	movff	2+?___ftmul,(PIDupdate@Dterm+2)
	line	24
	
l4816:
;PID&Motors.c: 24: precErrore = errore;
	movff	(_errore),(c:PIDupdate@precErrore)
	movff	(_errore+1),(c:PIDupdate@precErrore+1)
	movff	(_errore+2),(c:PIDupdate@precErrore+2)
	line	26
	
l4818:
;PID&Motors.c: 26: PID = (int) ((K*(Pterm + Iterm + Dterm))<(-255)?(-255):((K*(Pterm + Iterm + Dterm))>(255)?(255):(K*(Pterm + Iterm + Dterm))));
	movff	(PIDupdate@Iterm),(c:___ftadd@f2)
	movff	(PIDupdate@Iterm+1),(c:___ftadd@f2+1)
	movff	(PIDupdate@Iterm+2),(c:___ftadd@f2+2)
	movff	(PIDupdate@Pterm),(c:___ftadd@f1)
	movff	(PIDupdate@Pterm+1),(c:___ftadd@f1+1)
	movff	(PIDupdate@Pterm+2),(c:___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_PIDupdate$1197)
	movff	1+?___ftadd,(_PIDupdate$1197+1)
	movff	2+?___ftadd,(_PIDupdate$1197+2)
	
l4820:
;PID&Motors.c: 26: PID = (int) ((K*(Pterm + Iterm + Dterm))<(-255)?(-255):((K*(Pterm + Iterm + Dterm))>(255)?(255):(K*(Pterm + Iterm + Dterm))));
	movff	(_K),(___ftmul@f2)
	movff	(_K+1),(___ftmul@f2+1)
	movff	(_K+2),(___ftmul@f2+2)
	movff	(PIDupdate@Dterm),(c:___ftadd@f2)
	movff	(PIDupdate@Dterm+1),(c:___ftadd@f2+1)
	movff	(PIDupdate@Dterm+2),(c:___ftadd@f2+2)
	movff	(_PIDupdate$1197),(c:___ftadd@f1)
	movff	(_PIDupdate$1197+1),(c:___ftadd@f1+1)
	movff	(_PIDupdate$1197+2),(c:___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(___ftmul@f1)
	movff	1+?___ftadd,(___ftmul@f1+1)
	movff	2+?___ftadd,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftge@ff1)
	movff	1+?___ftmul,(___ftge@ff1+1)
	movff	2+?___ftmul,(___ftge@ff1+2)
	movlw	low(float24(-255.00000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff2))&0ffh
	movlw	high(float24(-255.00000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff2+1))&0ffh
	movlw	low highword(float24(-255.00000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff2+2))&0ffh

	call	___ftge	;wreg free
	movlb	0	; () banked
	btfss	status,0
	goto	u6061
	goto	u6060
u6061:
	goto	l4830
u6060:
	
l4822:; BSR set to: 0

	movff	(PIDupdate@Iterm),(c:___ftadd@f2)
	movff	(PIDupdate@Iterm+1),(c:___ftadd@f2+1)
	movff	(PIDupdate@Iterm+2),(c:___ftadd@f2+2)
	movff	(PIDupdate@Pterm),(c:___ftadd@f1)
	movff	(PIDupdate@Pterm+1),(c:___ftadd@f1+1)
	movff	(PIDupdate@Pterm+2),(c:___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_PIDupdate$1197)
	movff	1+?___ftadd,(_PIDupdate$1197+1)
	movff	2+?___ftadd,(_PIDupdate$1197+2)
	movlw	low(float24(255.00000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1))&0ffh
	movlw	high(float24(255.00000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+1))&0ffh
	movlw	low highword(float24(255.00000000000000))
	movlb	0	; () banked
	movwf	((___ftge@ff1+2))&0ffh

	movff	(_K),(___ftmul@f2)
	movff	(_K+1),(___ftmul@f2+1)
	movff	(_K+2),(___ftmul@f2+2)
	movff	(PIDupdate@Dterm),(c:___ftadd@f2)
	movff	(PIDupdate@Dterm+1),(c:___ftadd@f2+1)
	movff	(PIDupdate@Dterm+2),(c:___ftadd@f2+2)
	movff	(_PIDupdate$1197),(c:___ftadd@f1)
	movff	(_PIDupdate$1197+1),(c:___ftadd@f1+1)
	movff	(_PIDupdate$1197+2),(c:___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(___ftmul@f1)
	movff	1+?___ftadd,(___ftmul@f1+1)
	movff	2+?___ftadd,(___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___ftge@ff2)
	movff	1+?___ftmul,(___ftge@ff2+1)
	movff	2+?___ftmul,(___ftge@ff2+2)
	call	___ftge	;wreg free
	movlb	0	; () banked
	btfss	status,0
	goto	u6071
	goto	u6070
u6071:
	goto	l4826
u6070:
	
l4824:; BSR set to: 0

	movff	(PIDupdate@Iterm),(c:___ftadd@f2)
	movff	(PIDupdate@Iterm+1),(c:___ftadd@f2+1)
	movff	(PIDupdate@Iterm+2),(c:___ftadd@f2+2)
	movff	(PIDupdate@Pterm),(c:___ftadd@f1)
	movff	(PIDupdate@Pterm+1),(c:___ftadd@f1+1)
	movff	(PIDupdate@Pterm+2),(c:___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_PIDupdate$1197)
	movff	1+?___ftadd,(_PIDupdate$1197+1)
	movff	2+?___ftadd,(_PIDupdate$1197+2)
	movff	(PIDupdate@Dterm),(c:___ftadd@f2)
	movff	(PIDupdate@Dterm+1),(c:___ftadd@f2+1)
	movff	(PIDupdate@Dterm+2),(c:___ftadd@f2+2)
	movff	(_PIDupdate$1197),(c:___ftadd@f1)
	movff	(_PIDupdate$1197+1),(c:___ftadd@f1+1)
	movff	(_PIDupdate$1197+2),(c:___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(___ftmul@f1)
	movff	1+?___ftadd,(___ftmul@f1+1)
	movff	2+?___ftadd,(___ftmul@f1+2)
	movff	(_K),(___ftmul@f2)
	movff	(_K+1),(___ftmul@f2+1)
	movff	(_K+2),(___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(_PIDupdate$406)
	movff	1+?___ftmul,(_PIDupdate$406+1)
	movff	2+?___ftmul,(_PIDupdate$406+2)
	goto	l4828
	
l370:
	
l4826:
	movlw	low(float24(255.00000000000000))
	movlb	0	; () banked
	movwf	((_PIDupdate$406))&0ffh
	movlw	high(float24(255.00000000000000))
	movlb	0	; () banked
	movwf	((_PIDupdate$406+1))&0ffh
	movlw	low highword(float24(255.00000000000000))
	movlb	0	; () banked
	movwf	((_PIDupdate$406+2))&0ffh

	goto	l4828
	
l372:; BSR set to: 0

	
l4828:
	movff	(_PIDupdate$406),(_PIDupdate$405)
	movff	(_PIDupdate$406+1),(_PIDupdate$405+1)
	movff	(_PIDupdate$406+2),(_PIDupdate$405+2)
	goto	l4832
	
l366:
	
l4830:
	movlw	low(float24(-255.00000000000000))
	movlb	0	; () banked
	movwf	((_PIDupdate$405))&0ffh
	movlw	high(float24(-255.00000000000000))
	movlb	0	; () banked
	movwf	((_PIDupdate$405+1))&0ffh
	movlw	low highword(float24(-255.00000000000000))
	movlb	0	; () banked
	movwf	((_PIDupdate$405+2))&0ffh

	goto	l4832
	
l368:; BSR set to: 0

	
l4832:
	movff	(_PIDupdate$405),(c:___fttol@f1)
	movff	(_PIDupdate$405+1),(c:___fttol@f1+1)
	movff	(_PIDupdate$405+2),(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(c:_PID)
	movff	1+?___fttol,(c:_PID+1)
	line	27
	
l373:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_PIDupdate
	__end_of_PIDupdate:
	signat	_PIDupdate,89
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   23[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   33[COMRAM] unsigned long 
;;  exp1            1   37[COMRAM] unsigned char 
;;  sign1           1   32[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   23[COMRAM] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PIDupdate
;;		_pow
;;		_exp
;;		_floor
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\fttol.c"
	line	44
global __ptext33
__ptext33:
psect	text33
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:
;incstack = 0
	opt	stack 24
	line	49
	
l4166:
	movff	(c:___fttol@f1+2),??___fttol+0+0
	clrf	(??___fttol+0+0+1)&0ffh,c
	clrf	(??___fttol+0+0+2)&0ffh,c
	rlcf	((c:___fttol@f1+1)),c,w
	rlcf	(??___fttol+0+0)&0ffh,c
	bnc	u4931
	bsf	(??___fttol+0+0+1)&0ffh,c,0
u4931:
	movf	(??___fttol+0+0),c,w
	movwf	((c:___fttol@exp1)),c
	movf	((c:___fttol@exp1)),c,w
	btfss	status,2
	goto	u4941
	goto	u4940
u4941:
	goto	l4172
u4940:
	line	50
	
l4168:
	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l899
	
l4170:
	goto	l899
	
l898:
	line	51
	
l4172:
	movlw	(017h)&0ffh
	movwf	(??___fttol+0+0)&0ffh,c
	movff	(c:___fttol@f1),??___fttol+1+0
	movff	(c:___fttol@f1+1),??___fttol+1+0+1
	movff	(c:___fttol@f1+2),??___fttol+1+0+2
	incf	((??___fttol+0+0)),c,w
	movwf	(??___fttol+4+0)&0ffh,c
	goto	u4950
u4955:
	bcf	status,0
	rrcf	(??___fttol+1+2),c
	rrcf	(??___fttol+1+1),c
	rrcf	(??___fttol+1+0),c
u4950:
	decfsz	(??___fttol+4+0)&0ffh,c
	goto	u4955
	movf	(??___fttol+1+0),c,w
	movwf	((c:___fttol@sign1)),c
	line	52
	
l4174:
	bsf	(0+(15/8)+(c:___fttol@f1)),c,(15)&7
	line	53
	
l4176:
	movlw	low(0FFFFh)
	andwf	((c:___fttol@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___fttol@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___fttol@f1+2)),c

	line	54
	
l4178:
	movf	((c:___fttol@f1)),c,w
	movwf	((c:___fttol@lval)),c
	movf	((c:___fttol@f1+1)),c,w
	movwf	1+((c:___fttol@lval)),c
	
	movf	((c:___fttol@f1+2)),c,w
	movwf	2+((c:___fttol@lval)),c
	
	clrf	3+((c:___fttol@lval)),c
	line	55
	
l4180:
	movlw	(08Eh)&0ffh
	subwf	((c:___fttol@exp1)),c
	line	56
	
l4182:
	btfsc	((c:___fttol@exp1)),c,7
	goto	u4960
	goto	u4961

u4961:
	goto	l4194
u4960:
	line	57
	
l4184:
		movf	((c:___fttol@exp1)),c,w
	xorlw	80h
	addlw	-(80h^-15)
	btfsc	status,0
	goto	u4971
	goto	u4970

u4971:
	goto	l4190
u4970:
	line	58
	
l4186:
	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l899
	
l4188:
	goto	l899
	
l901:
	goto	l4190
	line	59
	
l902:
	line	60
	
l4190:
	bcf	status,0
	rrcf	((c:___fttol@lval+3)),c
	rrcf	((c:___fttol@lval+2)),c
	rrcf	((c:___fttol@lval+1)),c
	rrcf	((c:___fttol@lval)),c
	line	61
	
l4192:
	incfsz	((c:___fttol@exp1)),c
	
	goto	l4190
	goto	l4204
	
l903:
	line	62
	goto	l4204
	
l900:
	line	63
	
l4194:
		movlw	018h-1
	cpfsgt	((c:___fttol@exp1)),c
	goto	u4981
	goto	u4980

u4981:
	goto	l4202
u4980:
	line	64
	
l4196:
	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l899
	
l4198:
	goto	l899
	
l905:
	line	65
	goto	l4202
	
l907:
	line	66
	
l4200:
	bcf	status,0
	rlcf	((c:___fttol@lval)),c
	rlcf	((c:___fttol@lval+1)),c
	rlcf	((c:___fttol@lval+2)),c
	rlcf	((c:___fttol@lval+3)),c
	line	67
	decf	((c:___fttol@exp1)),c
	goto	l4202
	line	68
	
l906:
	line	65
	
l4202:
	movf	((c:___fttol@exp1)),c,w
	btfss	status,2
	goto	u4991
	goto	u4990
u4991:
	goto	l4200
u4990:
	goto	l4204
	
l908:
	goto	l4204
	line	69
	
l904:
	line	70
	
l4204:
	movf	((c:___fttol@sign1)),c,w
	btfsc	status,2
	goto	u5001
	goto	u5000
u5001:
	goto	l4208
u5000:
	line	71
	
l4206:
	comf	((c:___fttol@lval+3)),c
	comf	((c:___fttol@lval+2)),c
	comf	((c:___fttol@lval+1)),c
	negf	((c:___fttol@lval)),c
	movlw	0
	addwfc	((c:___fttol@lval+1)),c
	addwfc	((c:___fttol@lval+2)),c
	addwfc	((c:___fttol@lval+3)),c
	goto	l4208
	
l909:
	line	72
	
l4208:
	movff	(c:___fttol@lval),(c:?___fttol)
	movff	(c:___fttol@lval+1),(c:?___fttol+1)
	movff	(c:___fttol@lval+2),(c:?___fttol+2)
	movff	(c:___fttol@lval+3),(c:?___fttol+3)
	goto	l899
	
l4210:
	line	73
	
l899:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftneg

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3   31[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   31[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_computeAngle
;;		_PIDupdate
;;		_main
;;		_atan
;;		_fabs
;;		_pow
;;		_exp
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\ftneg.c"
	line	15
global __ptext34
__ptext34:
psect	text34
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\ftneg.c"
	line	15
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:
;incstack = 0
	opt	stack 25
	line	17
	
l4310:
	movf	((c:___ftneg@f1)),c,w
iorwf	((c:___ftneg@f1+1)),c,w
iorwf	((c:___ftneg@f1+2)),c,w
	btfsc	status,2
	goto	u5131
	goto	u5130

u5131:
	goto	l888
u5130:
	line	18
	
l4312:
	movlw	low(0800000h)
	xorwf	((c:___ftneg@f1)),c
	movlw	high(0800000h)
	xorwf	((c:___ftneg@f1+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftneg@f1+2)),c

	
l888:
	line	19
	movff	(c:___ftneg@f1),(c:?___ftneg)
	movff	(c:___ftneg@f1+1),(c:?___ftneg+1)
	movff	(c:___ftneg@f1+2),(c:?___ftneg+2)
	line	20
	
l889:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[BANK0 ] float 
;;  f2              3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3    7[BANK0 ] unsigned um
;;  sign            1   11[BANK0 ] unsigned char 
;;  cntr            1   10[BANK0 ] unsigned char 
;;  exp             1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       6       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:         3      12       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_computeAngle
;;		_PIDupdate
;;		_atan
;;		_eval_poly
;;		_pow
;;		_sqrt
;;		_exp
;;		_log
;;		_sprintf
;;		_scale
;;		_fround
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\ftmul.c"
	line	62
global __ptext35
__ptext35:
psect	text35
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:
;incstack = 0
	opt	stack 25
	line	67
	
l4100:
	movff	(___ftmul@f1+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)&0ffh,c
	clrf	(??___ftmul+0+0+2)&0ffh,c
	movlb	0	; () banked
	rlcf	((___ftmul@f1+1))&0ffh,w
	rlcf	(??___ftmul+0+0)&0ffh,c
	bnc	u4841
	bsf	(??___ftmul+0+0+1)&0ffh,c,0
u4841:
	movf	(??___ftmul+0+0),c,w
	movlb	0	; () banked
	movwf	((___ftmul@exp))&0ffh
	movlb	0	; () banked
	movf	((___ftmul@exp))&0ffh,w
	btfss	status,2
	goto	u4851
	goto	u4850
u4851:
	goto	l4106
u4850:
	line	68
	
l4102:; BSR set to: 0

	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?___ftmul))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?___ftmul+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?___ftmul+2))&0ffh

	goto	l878
	
l4104:; BSR set to: 0

	goto	l878
	
l877:; BSR set to: 0

	line	69
	
l4106:; BSR set to: 0

	movff	(___ftmul@f2+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)&0ffh,c
	clrf	(??___ftmul+0+0+2)&0ffh,c
	movlb	0	; () banked
	rlcf	((___ftmul@f2+1))&0ffh,w
	rlcf	(??___ftmul+0+0)&0ffh,c
	bnc	u4861
	bsf	(??___ftmul+0+0+1)&0ffh,c,0
u4861:
	movf	(??___ftmul+0+0),c,w
	movlb	0	; () banked
	movwf	((___ftmul@sign))&0ffh
	movlb	0	; () banked
	movf	((___ftmul@sign))&0ffh,w
	btfss	status,2
	goto	u4871
	goto	u4870
u4871:
	goto	l4112
u4870:
	line	70
	
l4108:; BSR set to: 0

	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?___ftmul))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?___ftmul+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((?___ftmul+2))&0ffh

	goto	l878
	
l4110:; BSR set to: 0

	goto	l878
	
l879:; BSR set to: 0

	line	71
	
l4112:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftmul@sign))&0ffh,w
	addlw	low(07Bh)
	movlb	0	; () banked
	addwf	((___ftmul@exp))&0ffh
	line	72
	
l4114:; BSR set to: 0

	movff	0+2+(___ftmul@f1),(___ftmul@sign)
	line	73
	movlb	0	; () banked
	movf	(0+2+(___ftmul@f2))&0ffh,w
	movlb	0	; () banked
	xorwf	((___ftmul@sign))&0ffh
	line	74
	movlw	(080h)&0ffh
	movlb	0	; () banked
	andwf	((___ftmul@sign))&0ffh
	line	75
	
l4116:; BSR set to: 0

	movlb	0	; () banked
	bsf	(0+(15/8)+(___ftmul@f1))&0ffh,(15)&7
	line	77
	
l4118:; BSR set to: 0

	movlb	0	; () banked
	bsf	(0+(15/8)+(___ftmul@f2))&0ffh,(15)&7
	line	78
	
l4120:; BSR set to: 0

	movlw	low(0FFFFh)
	movlb	0	; () banked
	andwf	((___ftmul@f2))&0ffh
	movlw	high(0FFFFh)
	movlb	0	; () banked
	andwf	((___ftmul@f2+1))&0ffh
	movlw	low highword(0FFFFh)
	movlb	0	; () banked
	andwf	((___ftmul@f2+2))&0ffh

	line	79
	
l4122:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((___ftmul@f3_as_product))&0ffh
	movlw	high(0)
	movlb	0	; () banked
	movwf	((___ftmul@f3_as_product+1))&0ffh
	movlw	low highword(0)
	movlb	0	; () banked
	movwf	((___ftmul@f3_as_product+2))&0ffh

	line	134
	
l4124:; BSR set to: 0

	movlw	low(07h)
	movlb	0	; () banked
	movwf	((___ftmul@cntr))&0ffh
	goto	l4126
	line	135
	
l880:; BSR set to: 0

	line	136
	
l4126:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___ftmul@f1))&0ffh,(0)&7
	goto	u4881
	goto	u4880
u4881:
	goto	l4130
u4880:
	line	137
	
l4128:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftmul@f2))&0ffh,w
	movlb	0	; () banked
	addwf	((___ftmul@f3_as_product))&0ffh
	movlb	0	; () banked
	movf	((___ftmul@f2+1))&0ffh,w
	movlb	0	; () banked
	addwfc	((___ftmul@f3_as_product+1))&0ffh
	movlb	0	; () banked
	movf	((___ftmul@f2+2))&0ffh,w
	movlb	0	; () banked
	addwfc	((___ftmul@f3_as_product+2))&0ffh

	goto	l4130
	
l881:; BSR set to: 0

	line	138
	
l4130:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rrcf	((___ftmul@f1+2))&0ffh
	rrcf	((___ftmul@f1+1))&0ffh
	rrcf	((___ftmul@f1))&0ffh
	line	139
	movlb	0	; () banked
	bcf	status,0
	rlcf	((___ftmul@f2))&0ffh
	rlcf	((___ftmul@f2+1))&0ffh
	rlcf	((___ftmul@f2+2))&0ffh
	line	140
	
l4132:; BSR set to: 0

	movlb	0	; () banked
	decfsz	((___ftmul@cntr))&0ffh
	
	goto	l4126
	goto	l4134
	
l882:; BSR set to: 0

	line	143
	
l4134:; BSR set to: 0

	movlw	low(09h)
	movlb	0	; () banked
	movwf	((___ftmul@cntr))&0ffh
	goto	l4136
	line	144
	
l883:; BSR set to: 0

	line	145
	
l4136:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___ftmul@f1))&0ffh,(0)&7
	goto	u4891
	goto	u4890
u4891:
	goto	l4140
u4890:
	line	146
	
l4138:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftmul@f2))&0ffh,w
	movlb	0	; () banked
	addwf	((___ftmul@f3_as_product))&0ffh
	movlb	0	; () banked
	movf	((___ftmul@f2+1))&0ffh,w
	movlb	0	; () banked
	addwfc	((___ftmul@f3_as_product+1))&0ffh
	movlb	0	; () banked
	movf	((___ftmul@f2+2))&0ffh,w
	movlb	0	; () banked
	addwfc	((___ftmul@f3_as_product+2))&0ffh

	goto	l4140
	
l884:; BSR set to: 0

	line	147
	
l4140:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rrcf	((___ftmul@f1+2))&0ffh
	rrcf	((___ftmul@f1+1))&0ffh
	rrcf	((___ftmul@f1))&0ffh
	line	148
	movlb	0	; () banked
	bcf	status,0
	rrcf	((___ftmul@f3_as_product+2))&0ffh
	rrcf	((___ftmul@f3_as_product+1))&0ffh
	rrcf	((___ftmul@f3_as_product))&0ffh
	line	149
	
l4142:; BSR set to: 0

	movlb	0	; () banked
	decfsz	((___ftmul@cntr))&0ffh
	
	goto	l4136
	goto	l4144
	
l885:; BSR set to: 0

	line	156
	
l4144:; BSR set to: 0

	movff	(___ftmul@f3_as_product),(c:___ftpack@arg)
	movff	(___ftmul@f3_as_product+1),(c:___ftpack@arg+1)
	movff	(___ftmul@f3_as_product+2),(c:___ftpack@arg+2)
	movff	(___ftmul@exp),(c:___ftpack@exp)
	movff	(___ftmul@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(?___ftmul)
	movff	1+?___ftpack,(?___ftmul+1)
	movff	2+?___ftpack,(?___ftmul+2)
	goto	l878
	
l4146:
	line	157
	
l878:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3   12[BANK0 ] float 
;;  ff2             3   15[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       6       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0
;;      Totals:         0       9       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PIDupdate
;;		_main
;;		_atan
;;		_pow
;;		_sqrt
;;		_exp
;;		_floor
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\ftge.c"
	line	4
global __ptext36
__ptext36:
psect	text36
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:
;incstack = 0
	opt	stack 26
	line	6
	
l4148:
	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___ftge@ff1+2))&0ffh,(23)&7
	goto	u4901
	goto	u4900
u4901:
	goto	l4152
u4900:
	line	7
	
l4150:; BSR set to: 0

	movff	(___ftge@ff1),??___ftge+0+0
	movff	(___ftge@ff1+1),??___ftge+0+0+1
	movff	(___ftge@ff1+2),??___ftge+0+0+2
	movlb	0	; () banked
	comf	(??___ftge+0+0)&0ffh
	comf	(??___ftge+0+1)&0ffh
	comf	(??___ftge+0+2)&0ffh
	incf	(??___ftge+0+0)&0ffh
	movlw	0
	addwfc	(??___ftge+0+1)&0ffh
	addwfc	(??___ftge+0+2)&0ffh

	movlw	low(0800000h)
	movlb	0	; () banked
	addwf	(??___ftge+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((___ftge@ff1))&0ffh
	movlw	0
	movlb	0	; () banked
	addwfc	(??___ftge+0+1)&0ffh,w
	movlb	0	; () banked
	movwf	1+((___ftge@ff1))&0ffh
	
	movlw	080h
	movlb	0	; () banked
	addwfc	(??___ftge+0+2)&0ffh,w
	movlb	0	; () banked
	movwf	2+((___ftge@ff1))&0ffh
	goto	l4152
	
l870:; BSR set to: 0

	line	8
	
l4152:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___ftge@ff2+2))&0ffh,(23)&7
	goto	u4911
	goto	u4910
u4911:
	goto	l4156
u4910:
	line	9
	
l4154:; BSR set to: 0

	movff	(___ftge@ff2),??___ftge+0+0
	movff	(___ftge@ff2+1),??___ftge+0+0+1
	movff	(___ftge@ff2+2),??___ftge+0+0+2
	movlb	0	; () banked
	comf	(??___ftge+0+0)&0ffh
	comf	(??___ftge+0+1)&0ffh
	comf	(??___ftge+0+2)&0ffh
	incf	(??___ftge+0+0)&0ffh
	movlw	0
	addwfc	(??___ftge+0+1)&0ffh
	addwfc	(??___ftge+0+2)&0ffh

	movlw	low(0800000h)
	movlb	0	; () banked
	addwf	(??___ftge+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((___ftge@ff2))&0ffh
	movlw	0
	movlb	0	; () banked
	addwfc	(??___ftge+0+1)&0ffh,w
	movlb	0	; () banked
	movwf	1+((___ftge@ff2))&0ffh
	
	movlw	080h
	movlb	0	; () banked
	addwfc	(??___ftge+0+2)&0ffh,w
	movlb	0	; () banked
	movwf	2+((___ftge@ff2))&0ffh
	goto	l4156
	
l871:; BSR set to: 0

	line	10
	
l4156:; BSR set to: 0

	movlw	low(0800000h)
	movlb	0	; () banked
	xorwf	((___ftge@ff1))&0ffh
	movlw	high(0800000h)
	movlb	0	; () banked
	xorwf	((___ftge@ff1+1))&0ffh
	movlw	low highword(0800000h)
	movlb	0	; () banked
	xorwf	((___ftge@ff1+2))&0ffh

	line	11
	
l4158:; BSR set to: 0

	movlw	low(0800000h)
	movlb	0	; () banked
	xorwf	((___ftge@ff2))&0ffh
	movlw	high(0800000h)
	movlb	0	; () banked
	xorwf	((___ftge@ff2+1))&0ffh
	movlw	low highword(0800000h)
	movlb	0	; () banked
	xorwf	((___ftge@ff2+2))&0ffh

	line	12
	movlb	0	; () banked
		movf	((___ftge@ff2))&0ffh,w
	movlb	0	; () banked
	subwf	((___ftge@ff1))&0ffh,w
	movlb	0	; () banked
	movf	((___ftge@ff2+1))&0ffh,w
	movlb	0	; () banked
	subwfb	((___ftge@ff1+1))&0ffh,w
	movlb	0	; () banked
	movf	((___ftge@ff2+2))&0ffh,w
	movlb	0	; () banked
	subwfb	((___ftge@ff1+2))&0ffh,w
	btfsc	status,0
	goto	u4921
	goto	u4920

u4921:
	goto	l4162
u4920:
	
l4160:; BSR set to: 0

	bcf	status,0
	goto	l872
	
l3968:; BSR set to: 0

	
l4162:; BSR set to: 0

	bsf	status,0
	goto	l872
	
l3970:; BSR set to: 0

	goto	l872
	
l4164:; BSR set to: 0

	line	13
	
l872:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   35[COMRAM] float 
;;  f2              3   38[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   46[COMRAM] unsigned char 
;;  exp2            1   45[COMRAM] unsigned char 
;;  sign            1   44[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   35[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         6       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_computeAngle
;;		_PIDupdate
;;		_main
;;		_atan
;;		_eval_poly
;;		___ftsub
;;		_floor
;;		_log
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\ftadd.c"
	line	86
global __ptext37
__ptext37:
psect	text37
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:; BSR set to: 0

;incstack = 0
	opt	stack 24
	line	90
	
l4030:
	movff	(c:___ftadd@f1+2),??___ftadd+0+0
	clrf	(??___ftadd+0+0+1)&0ffh,c
	clrf	(??___ftadd+0+0+2)&0ffh,c
	rlcf	((c:___ftadd@f1+1)),c,w
	rlcf	(??___ftadd+0+0)&0ffh,c
	bnc	u4631
	bsf	(??___ftadd+0+0+1)&0ffh,c,0
u4631:
	movf	(??___ftadd+0+0),c,w
	movwf	((c:___ftadd@exp1)),c
	line	91
	movff	(c:___ftadd@f2+2),??___ftadd+0+0
	clrf	(??___ftadd+0+0+1)&0ffh,c
	clrf	(??___ftadd+0+0+2)&0ffh,c
	rlcf	((c:___ftadd@f2+1)),c,w
	rlcf	(??___ftadd+0+0)&0ffh,c
	bnc	u4641
	bsf	(??___ftadd+0+0+1)&0ffh,c,0
u4641:
	movf	(??___ftadd+0+0),c,w
	movwf	((c:___ftadd@exp2)),c
	line	92
	
l4032:
	movf	((c:___ftadd@exp1)),c,w
	btfsc	status,2
	goto	u4651
	goto	u4650
u4651:
	goto	l814
u4650:
	
l4034:
		movf	((c:___ftadd@exp2)),c,w
	subwf	((c:___ftadd@exp1)),c,w
	btfsc	status,0
	goto	u4661
	goto	u4660

u4661:
	goto	l4038
u4660:
	
l4036:
	movf	((c:___ftadd@exp1)),c,w
	sublw	0
	addwf	((c:___ftadd@exp2)),c,w
	movwf	(??___ftadd+0+0)&0ffh,c
		movlw	019h-1
	cpfsgt	((??___ftadd+0+0)),c
	goto	u4671
	goto	u4670

u4671:
	goto	l4038
u4670:
	
l814:
	line	93
	movff	(c:___ftadd@f2),(c:?___ftadd)
	movff	(c:___ftadd@f2+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f2+2),(c:?___ftadd+2)
	goto	l815
	
l812:
	line	94
	
l4038:
	movf	((c:___ftadd@exp2)),c,w
	btfsc	status,2
	goto	u4681
	goto	u4680
u4681:
	goto	l818
u4680:
	
l4040:
		movf	((c:___ftadd@exp1)),c,w
	subwf	((c:___ftadd@exp2)),c,w
	btfsc	status,0
	goto	u4691
	goto	u4690

u4691:
	goto	l4044
u4690:
	
l4042:
	movf	((c:___ftadd@exp2)),c,w
	sublw	0
	addwf	((c:___ftadd@exp1)),c,w
	movwf	(??___ftadd+0+0)&0ffh,c
		movlw	019h-1
	cpfsgt	((??___ftadd+0+0)),c
	goto	u4701
	goto	u4700

u4701:
	goto	l4044
u4700:
	
l818:
	line	95
	movff	(c:___ftadd@f1),(c:?___ftadd)
	movff	(c:___ftadd@f1+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f1+2),(c:?___ftadd+2)
	goto	l815
	
l816:
	line	96
	
l4044:
	movlw	low(06h)
	movwf	((c:___ftadd@sign)),c
	line	97
	
l4046:
	
	btfss	((c:___ftadd@f1+2)),c,(23)&7
	goto	u4711
	goto	u4710
u4711:
	goto	l4050
u4710:
	line	98
	
l4048:
	bsf	(0+(7/8)+(c:___ftadd@sign)),c,(7)&7
	goto	l4050
	
l819:
	line	99
	
l4050:
	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u4721
	goto	u4720
u4721:
	goto	l820
u4720:
	line	100
	
l4052:
	bsf	(0+(6/8)+(c:___ftadd@sign)),c,(6)&7
	
l820:
	line	101
	bsf	(0+(15/8)+(c:___ftadd@f1)),c,(15)&7
	line	102
	
l4054:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f1+2)),c

	line	103
	bsf	(0+(15/8)+(c:___ftadd@f2)),c,(15)&7
	line	104
	
l4056:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f2+2)),c

	line	106
	
l4058:
		movf	((c:___ftadd@exp2)),c,w
	subwf	((c:___ftadd@exp1)),c,w
	btfsc	status,0
	goto	u4731
	goto	u4730

u4731:
	goto	l4070
u4730:
	goto	l4060
	line	109
	
l822:
	line	110
	
l4060:
	bcf	status,0
	rlcf	((c:___ftadd@f2)),c
	rlcf	((c:___ftadd@f2+1)),c
	rlcf	((c:___ftadd@f2+2)),c
	line	111
	decf	((c:___ftadd@exp2)),c
	line	112
	
l4062:
	movf	((c:___ftadd@exp1)),c,w
xorwf	((c:___ftadd@exp2)),c,w
	btfsc	status,2
	goto	u4741
	goto	u4740

u4741:
	goto	l4068
u4740:
	
l4064:
	decf	((c:___ftadd@sign)),c
	movff	(c:___ftadd@sign),??___ftadd+0+0
	movlw	07h
	andwf	(??___ftadd+0+0),c
	btfss	status,2
	goto	u4751
	goto	u4750
u4751:
	goto	l4060
u4750:
	goto	l4068
	
l824:
	goto	l4068
	
l825:
	line	113
	goto	l4068
	
l827:
	line	114
	
l4066:
	bcf	status,0
	rrcf	((c:___ftadd@f1+2)),c
	rrcf	((c:___ftadd@f1+1)),c
	rrcf	((c:___ftadd@f1)),c
	line	115
	incf	((c:___ftadd@exp1)),c
	goto	l4068
	line	116
	
l826:
	line	113
	
l4068:
	movf	((c:___ftadd@exp2)),c,w
xorwf	((c:___ftadd@exp1)),c,w
	btfss	status,2
	goto	u4761
	goto	u4760

u4761:
	goto	l4066
u4760:
	goto	l829
	
l828:
	line	117
	goto	l829
	
l821:
	
l4070:
		movf	((c:___ftadd@exp1)),c,w
	subwf	((c:___ftadd@exp2)),c,w
	btfsc	status,0
	goto	u4771
	goto	u4770

u4771:
	goto	l829
u4770:
	goto	l4072
	line	120
	
l831:
	line	121
	
l4072:
	bcf	status,0
	rlcf	((c:___ftadd@f1)),c
	rlcf	((c:___ftadd@f1+1)),c
	rlcf	((c:___ftadd@f1+2)),c
	line	122
	decf	((c:___ftadd@exp1)),c
	line	123
	
l4074:
	movf	((c:___ftadd@exp1)),c,w
xorwf	((c:___ftadd@exp2)),c,w
	btfsc	status,2
	goto	u4781
	goto	u4780

u4781:
	goto	l4080
u4780:
	
l4076:
	decf	((c:___ftadd@sign)),c
	movff	(c:___ftadd@sign),??___ftadd+0+0
	movlw	07h
	andwf	(??___ftadd+0+0),c
	btfss	status,2
	goto	u4791
	goto	u4790
u4791:
	goto	l4072
u4790:
	goto	l4080
	
l833:
	goto	l4080
	
l834:
	line	124
	goto	l4080
	
l836:
	line	125
	
l4078:
	bcf	status,0
	rrcf	((c:___ftadd@f2+2)),c
	rrcf	((c:___ftadd@f2+1)),c
	rrcf	((c:___ftadd@f2)),c
	line	126
	incf	((c:___ftadd@exp2)),c
	goto	l4080
	line	127
	
l835:
	line	124
	
l4080:
	movf	((c:___ftadd@exp2)),c,w
xorwf	((c:___ftadd@exp1)),c,w
	btfss	status,2
	goto	u4801
	goto	u4800

u4801:
	goto	l4078
u4800:
	goto	l829
	
l837:
	goto	l829
	line	128
	
l830:
	line	129
	
l829:
	
	btfss	((c:___ftadd@sign)),c,(7)&7
	goto	u4811
	goto	u4810
u4811:
	goto	l838
u4810:
	line	131
	
l4082:
	movlw	low(0FFFFFFh)
	xorwf	((c:___ftadd@f1)),c
	movlw	high(0FFFFFFh)
	xorwf	((c:___ftadd@f1+1)),c
	movlw	low highword(0FFFFFFh)
	xorwf	((c:___ftadd@f1+2)),c

	line	132
	movlw	low(01h)
	addwf	((c:___ftadd@f1)),c
	movlw	high(01h)
	addwfc	((c:___ftadd@f1+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftadd@f1+2)),c

	line	133
	
l838:
	line	134
	
	btfss	((c:___ftadd@sign)),c,(6)&7
	goto	u4821
	goto	u4820
u4821:
	goto	l4086
u4820:
	line	136
	
l4084:
	movlw	low(0FFFFFFh)
	xorwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFFFh)
	xorwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFFFh)
	xorwf	((c:___ftadd@f2+2)),c

	line	137
	movlw	low(01h)
	addwf	((c:___ftadd@f2)),c
	movlw	high(01h)
	addwfc	((c:___ftadd@f2+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftadd@f2+2)),c

	goto	l4086
	line	138
	
l839:
	line	139
	
l4086:
	movlw	low(0)
	movwf	((c:___ftadd@sign)),c
	line	140
	
l4088:
	movf	((c:___ftadd@f1)),c,w
	addwf	((c:___ftadd@f2)),c
	movf	((c:___ftadd@f1+1)),c,w
	addwfc	((c:___ftadd@f2+1)),c
	movf	((c:___ftadd@f1+2)),c,w
	addwfc	((c:___ftadd@f2+2)),c

	line	141
	
l4090:
	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u4831
	goto	u4830
u4831:
	goto	l4096
u4830:
	line	142
	
l4092:
	movlw	low(0FFFFFFh)
	xorwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFFFh)
	xorwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFFFh)
	xorwf	((c:___ftadd@f2+2)),c

	line	143
	movlw	low(01h)
	addwf	((c:___ftadd@f2)),c
	movlw	high(01h)
	addwfc	((c:___ftadd@f2+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftadd@f2+2)),c

	line	144
	
l4094:
	movlw	low(01h)
	movwf	((c:___ftadd@sign)),c
	goto	l4096
	line	145
	
l840:
	line	146
	
l4096:
	movff	(c:___ftadd@f2),(c:___ftpack@arg)
	movff	(c:___ftadd@f2+1),(c:___ftpack@arg+1)
	movff	(c:___ftadd@f2+2),(c:___ftpack@arg+2)
	movff	(c:___ftadd@exp1),(c:___ftpack@exp)
	movff	(c:___ftadd@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftadd)
	movff	1+?___ftpack,(c:?___ftadd+1)
	movff	2+?___ftpack,(c:?___ftadd+2)
	goto	l815
	
l4098:
	line	148
	
l815:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3   23[COMRAM] unsigned um
;;  exp             1   26[COMRAM] unsigned char 
;;  sign            1   27[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   23[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         5       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___altoft
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lltoft
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\float.c"
	line	62
global __ptext38
__ptext38:
psect	text38
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:
;incstack = 0
	opt	stack 24
	line	64
	
l3972:
	movf	((c:___ftpack@exp)),c,w
	btfsc	status,2
	goto	u4531
	goto	u4530
u4531:
	goto	l3976
u4530:
	
l3974:
	movf	((c:___ftpack@arg)),c,w
iorwf	((c:___ftpack@arg+1)),c,w
iorwf	((c:___ftpack@arg+2)),c,w
	btfss	status,2
	goto	u4541
	goto	u4540

u4541:
	goto	l3982
u4540:
	goto	l3976
	
l779:
	line	65
	
l3976:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftpack)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftpack+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftpack+2)),c

	goto	l780
	
l3978:
	goto	l780
	
l777:
	line	66
	goto	l3982
	
l782:
	line	67
	
l3980:
	incf	((c:___ftpack@exp)),c
	line	68
	bcf	status,0
	rrcf	((c:___ftpack@arg+2)),c
	rrcf	((c:___ftpack@arg+1)),c
	rrcf	((c:___ftpack@arg)),c
	goto	l3982
	line	69
	
l781:
	line	66
	
l3982:
	movlw	low(0FE0000h)
	andwf	((c:___ftpack@arg)),c,w
	movwf	(??___ftpack+0+0)&0ffh,c
	movlw	0
	andwf	((c:___ftpack@arg+1)),c,w
	movwf	1+(??___ftpack+0+0)&0ffh,c
	
	movlw	0FEh
	andwf	((c:___ftpack@arg+2)),c,w
	movwf	2+(??___ftpack+0+0)&0ffh,c

	movf	(??___ftpack+0+0),c,w
iorwf	(??___ftpack+0+1),c,w
iorwf	(??___ftpack+0+2),c,w
	btfss	status,2
	goto	u4551
	goto	u4550

u4551:
	goto	l3980
u4550:
	goto	l3988
	
l783:
	line	70
	goto	l3988
	
l785:
	line	71
	
l3984:
	incf	((c:___ftpack@exp)),c
	line	72
	
l3986:
	movlw	low(01h)
	addwf	((c:___ftpack@arg)),c
	movlw	high(01h)
	addwfc	((c:___ftpack@arg+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftpack@arg+2)),c

	line	73
	bcf	status,0
	rrcf	((c:___ftpack@arg+2)),c
	rrcf	((c:___ftpack@arg+1)),c
	rrcf	((c:___ftpack@arg)),c
	goto	l3988
	line	74
	
l784:
	line	70
	
l3988:
	movlw	low(0FF0000h)
	andwf	((c:___ftpack@arg)),c,w
	movwf	(??___ftpack+0+0)&0ffh,c
	movlw	0
	andwf	((c:___ftpack@arg+1)),c,w
	movwf	1+(??___ftpack+0+0)&0ffh,c
	
	movlw	0FFh
	andwf	((c:___ftpack@arg+2)),c,w
	movwf	2+(??___ftpack+0+0)&0ffh,c

	movf	(??___ftpack+0+0),c,w
iorwf	(??___ftpack+0+1),c,w
iorwf	(??___ftpack+0+2),c,w
	btfss	status,2
	goto	u4561
	goto	u4560

u4561:
	goto	l3984
u4560:
	goto	l3992
	
l786:
	line	75
	goto	l3992
	
l788:
	line	76
	
l3990:
	decf	((c:___ftpack@exp)),c
	line	77
	bcf	status,0
	rlcf	((c:___ftpack@arg)),c
	rlcf	((c:___ftpack@arg+1)),c
	rlcf	((c:___ftpack@arg+2)),c
	goto	l3992
	line	78
	
l787:
	line	75
	
l3992:
	
	btfsc	((c:___ftpack@arg+1)),c,(15)&7
	goto	u4571
	goto	u4570
u4571:
	goto	l791
u4570:
	
l3994:
		movlw	02h-0
	cpfslt	((c:___ftpack@exp)),c
	goto	u4581
	goto	u4580

u4581:
	goto	l3990
u4580:
	goto	l791
	
l790:
	
l791:
	line	79
	
	btfsc	((c:___ftpack@exp)),c,(0)&7
	goto	u4591
	goto	u4590
u4591:
	goto	l3998
u4590:
	line	80
	
l3996:
	bcf	(0+(15/8)+(c:___ftpack@arg)),c,(15)&7
	goto	l3998
	
l792:
	line	81
	
l3998:
	bcf status,0
	rrcf	((c:___ftpack@exp)),c

	line	82
	movf	((c:___ftpack@exp)),c,w
	iorwf	((c:___ftpack@arg+2)),c

	line	83
	
l4000:
	movf	((c:___ftpack@sign)),c,w
	btfsc	status,2
	goto	u4601
	goto	u4600
u4601:
	goto	l4004
u4600:
	line	84
	
l4002:
	bsf	(0+(23/8)+(c:___ftpack@arg)),c,(23)&7
	goto	l4004
	
l793:
	line	85
	
l4004:
	movff	(c:___ftpack@arg),(c:?___ftpack)
	movff	(c:___ftpack@arg+1),(c:?___ftpack+1)
	movff	(c:___ftpack@arg+2),(c:?___ftpack+2)
	goto	l780
	
l4006:
	line	86
	
l780:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_PICsetup

;; *************** function _PICsetup *****************
;; Defined at:
;;		line 17 in file "D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\main.c"
	line	17
global __ptext39
__ptext39:
psect	text39
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\main.c"
	line	17
	global	__size_of_PICsetup
	__size_of_PICsetup	equ	__end_of_PICsetup-_PICsetup
	
_PICsetup:
;incstack = 0
	opt	stack 28
	line	18
	
l3302:
;main.c: 18: OSCCON =0b01110000;
	movlw	low(070h)
	movwf	((c:4051)),c	;volatile
	line	19
	
l3304:
;main.c: 19: PLLEN =1;
	bsf	c:(31966/8),(31966)&7	;volatile
	line	20
;main.c: 20: TRISA =0b11111110;
	movlw	low(0FEh)
	movwf	((c:3986)),c	;volatile
	line	21
;main.c: 21: TRISB =0b11000011;
	movlw	low(0C3h)
	movwf	((c:3987)),c	;volatile
	line	22
;main.c: 22: TRISC =0b10111001;
	movlw	low(0B9h)
	movwf	((c:3988)),c	;volatile
	line	23
;main.c: 23: T0CON =0b10001000;
	movlw	low(088h)
	movwf	((c:4053)),c	;volatile
	line	24
	
l3306:
;main.c: 24: RA0 =0;
	bcf	c:(31744/8),(31744)&7	;volatile
	line	25
	
l3308:
;main.c: 25: RB2 =0;
	bcf	c:(31754/8),(31754)&7	;volatile
	line	26
	
l3310:
;main.c: 26: RB3 =0;
	bcf	c:(31755/8),(31755)&7	;volatile
	line	27
	
l3312:
;main.c: 27: RB4 =0;
	bcf	c:(31756/8),(31756)&7	;volatile
	line	28
	
l3314:
;main.c: 28: RB5 =0;
	bcf	c:(31757/8),(31757)&7	;volatile
	line	29
	
l3316:
;main.c: 29: TMR0IE =1;
	bsf	c:(32661/8),(32661)&7	;volatile
	line	30
	
l387:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_PICsetup
	__end_of_PICsetup:
	signat	_PICsetup,89
	global	_OpenI2C_StSpeed

;; *************** function _OpenI2C_StSpeed *****************
;; Defined at:
;;		line 59 in file "D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text40,class=CODE,space=0,reloc=2
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\i2c.c"
	line	59
global __ptext40
__ptext40:
psect	text40
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\i2c.c"
	line	59
	global	__size_of_OpenI2C_StSpeed
	__size_of_OpenI2C_StSpeed	equ	__end_of_OpenI2C_StSpeed-_OpenI2C_StSpeed
	
_OpenI2C_StSpeed:
;incstack = 0
	opt	stack 28
	line	61
	
l3160:
;i2c.c: 61: SSPCON1 = 0b00101000;
	movlw	low(028h)
	movwf	((c:4038)),c	;volatile
	line	62
;i2c.c: 62: SSPSTAT = 0b00000000;
	movlw	low(0)
	movwf	((c:4039)),c	;volatile
	line	63
;i2c.c: 63: SSPADD = 19;
	movlw	low(013h)
	movwf	((c:4040)),c	;volatile
	line	64
;i2c.c: 64: SSPCON2 = 0;
	movlw	low(0)
	movwf	((c:4037)),c	;volatile
	line	65
	
l155:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_OpenI2C_StSpeed
	__end_of_OpenI2C_StSpeed:
	signat	_OpenI2C_StSpeed,89
	global	_my_ISR

;; *************** function _my_ISR *****************
;; Defined at:
;;		line 57 in file "D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  408[None  ] int 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:         14       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___llmod
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
psect	intcode
	file	"D:\Desktop\Self Balancing Robot v2.0 Funzionante quasi\main.c"
	line	57
	global	__size_of_my_ISR
	__size_of_my_ISR	equ	__end_of_my_ISR-_my_ISR
	
_my_ISR:
;incstack = 0
	opt	stack 23
	bsf int$flags,1,c ;set compiler interrupt flag (level 2)
	movff	pclat+0,??_my_ISR+0
	movff	pclat+1,??_my_ISR+1
	global	int_func
	call	int_func,f	;refresh shadow registers
psect	intcode_body,class=CODE,space=0,reloc=2
global __pintcode_body
__pintcode_body:
int_func:

	pop	; remove dummy address from shadow register refresh
	movff	fsr0l+0,??_my_ISR+2
	movff	fsr0h+0,??_my_ISR+3
	movff	fsr1l+0,??_my_ISR+4
	movff	fsr1h+0,??_my_ISR+5
	movff	fsr2l+0,??_my_ISR+6
	movff	fsr2h+0,??_my_ISR+7
	movff	prodl+0,??_my_ISR+8
	movff	prodh+0,??_my_ISR+9
	movff	tblptrl+0,??_my_ISR+10
	movff	tblptrh+0,??_my_ISR+11
	movff	tblptru+0,??_my_ISR+12
	movff	tablat+0,??_my_ISR+13
	line	58
	
i2l3724:
;main.c: 58: if(TMR0IE && TMR0IF){
	btfss	c:(32661/8),(32661)&7	;volatile
	goto	i2u415_41
	goto	i2u415_40
i2u415_41:
	goto	i2l411
i2u415_40:
	
i2l3726:
	btfss	c:(32658/8),(32658)&7	;volatile
	goto	i2u416_41
	goto	i2u416_40
i2u416_41:
	goto	i2l411
i2u416_40:
	line	59
	
i2l3728:
;main.c: 59: TMR0 =-8000;
	movlw	high(-8000)
	movwf	((c:4054+1)),c	;volatile
	movlw	low(-8000)
	movwf	((c:4054)),c	;volatile
	line	60
	
i2l3730:
;main.c: 60: TMR0IF = 0;
	bcf	c:(32658/8),(32658)&7	;volatile
	line	61
	
i2l3732:
;main.c: 61: millis++;
	movlw	low(01h)
	movlb	0	; () banked
	addwf	((_millis))&0ffh
	movlw	0
	addwfc	((_millis+1))&0ffh
	addwfc	((_millis+2))&0ffh
	addwfc	((_millis+3))&0ffh
	line	62
	
i2l3734:; BSR set to: 0

;main.c: 62: if (millis%100 == 0) RA0 = !RA0;
	movff	(_millis),(c:___llmod@dividend)
	movff	(_millis+1),(c:___llmod@dividend+1)
	movff	(_millis+2),(c:___llmod@dividend+2)
	movff	(_millis+3),(c:___llmod@dividend+3)
	movlw	low(064h)
	movwf	((c:___llmod@divisor)),c
	movlw	high(064h)
	movwf	((c:___llmod@divisor+1)),c
	movlw	low highword(064h)
	movwf	((c:___llmod@divisor+2)),c
	movlw	high highword(064h)
	movwf	((c:___llmod@divisor+3)),c
	call	___llmod	;wreg free
	movf	(0+?___llmod),c,w
iorwf	(1+?___llmod),c,w
iorwf	(2+?___llmod),c,w
iorwf	(3+?___llmod),c,w
	btfss	status,2
	goto	i2u417_41
	goto	i2u417_40

i2u417_41:
	goto	i2l411
i2u417_40:
	
i2l3736:
	btfss	c:(31744/8),(31744)&7	;volatile
	goto	i2u418_41
	goto	i2u418_40
i2u418_41:
	bsf	c:(31744/8),(31744)&7	;volatile
	goto	i2u419_45
i2u418_40:
	bcf	c:(31744/8),(31744)&7	;volatile
i2u419_45:
	goto	i2l411
	
i2l410:
	goto	i2l411
	line	63
	
i2l409:
	line	64
	
i2l411:
	movff	??_my_ISR+13,tablat+0
	movff	??_my_ISR+12,tblptru+0
	movff	??_my_ISR+11,tblptrh+0
	movff	??_my_ISR+10,tblptrl+0
	movff	??_my_ISR+9,prodh+0
	movff	??_my_ISR+8,prodl+0
	movff	??_my_ISR+7,fsr2h+0
	movff	??_my_ISR+6,fsr2l+0
	movff	??_my_ISR+5,fsr1h+0
	movff	??_my_ISR+4,fsr1l+0
	movff	??_my_ISR+3,fsr0h+0
	movff	??_my_ISR+2,fsr0l+0
	movff	??_my_ISR+1,pclat+1
	movff	??_my_ISR+0,pclat+0
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	retfie f
	opt stack 0
GLOBAL	__end_of_my_ISR
	__end_of_my_ISR:
	signat	_my_ISR,90
	global	___llmod

;; *************** function ___llmod *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\llmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        4    0[COMRAM] unsigned long 
;;  divisor         4    4[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  counter         1    8[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMRAM] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         8       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_my_ISR
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text42,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\llmod.c"
	line	8
global __ptext42
__ptext42:
psect	text42
	file	"C:\Program Files (x86)\Microchip\xc8\v1.38\sources\common\llmod.c"
	line	8
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:
;incstack = 0
	opt	stack 23
	line	13
	
i2l3378:
	movf	((c:___llmod@divisor)),c,w
iorwf	((c:___llmod@divisor+1)),c,w
iorwf	((c:___llmod@divisor+2)),c,w
iorwf	((c:___llmod@divisor+3)),c,w
	btfsc	status,2
	goto	i2u357_41
	goto	i2u357_40

i2u357_41:
	goto	i2l948
i2u357_40:
	line	14
	
i2l3380:
	movlw	low(01h)
	movwf	((c:___llmod@counter)),c
	line	15
	goto	i2l3384
	
i2l950:
	line	16
	
i2l3382:
	bcf	status,0
	rlcf	((c:___llmod@divisor)),c
	rlcf	((c:___llmod@divisor+1)),c
	rlcf	((c:___llmod@divisor+2)),c
	rlcf	((c:___llmod@divisor+3)),c
	line	17
	incf	((c:___llmod@counter)),c
	goto	i2l3384
	line	18
	
i2l949:
	line	15
	
i2l3384:
	
	btfss	((c:___llmod@divisor+3)),c,(31)&7
	goto	i2u358_41
	goto	i2u358_40
i2u358_41:
	goto	i2l3382
i2u358_40:
	goto	i2l3386
	
i2l951:
	goto	i2l3386
	line	19
	
i2l952:
	line	20
	
i2l3386:
		movf	((c:___llmod@divisor)),c,w
	subwf	((c:___llmod@dividend)),c,w
	movf	((c:___llmod@divisor+1)),c,w
	subwfb	((c:___llmod@dividend+1)),c,w
	movf	((c:___llmod@divisor+2)),c,w
	subwfb	((c:___llmod@dividend+2)),c,w
	movf	((c:___llmod@divisor+3)),c,w
	subwfb	((c:___llmod@dividend+3)),c,w
	btfss	status,0
	goto	i2u359_41
	goto	i2u359_40

i2u359_41:
	goto	i2l3390
i2u359_40:
	line	21
	
i2l3388:
	movf	((c:___llmod@divisor)),c,w
	subwf	((c:___llmod@dividend)),c
	movf	((c:___llmod@divisor+1)),c,w
	subwfb	((c:___llmod@dividend+1)),c
	movf	((c:___llmod@divisor+2)),c,w
	subwfb	((c:___llmod@dividend+2)),c
	movf	((c:___llmod@divisor+3)),c,w
	subwfb	((c:___llmod@dividend+3)),c
	goto	i2l3390
	
i2l953:
	line	22
	
i2l3390:
	bcf	status,0
	rrcf	((c:___llmod@divisor+3)),c
	rrcf	((c:___llmod@divisor+2)),c
	rrcf	((c:___llmod@divisor+1)),c
	rrcf	((c:___llmod@divisor)),c
	line	23
	
i2l3392:
	decfsz	((c:___llmod@counter)),c
	
	goto	i2l3386
	goto	i2l948
	
i2l954:
	line	24
	
i2l948:
	line	25
	movff	(c:___llmod@dividend),(c:?___llmod)
	movff	(c:___llmod@dividend+1),(c:?___llmod+1)
	movff	(c:___llmod@dividend+2),(c:?___llmod+2)
	movff	(c:___llmod@dividend+3),(c:?___llmod+3)
	line	26
	
i2l955:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
	signat	___llmod,8316
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	2
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 16
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
       psect   temp,common,ovrld,class=COMRAM,space=1
	global	btemp
btemp:
	ds	1
	global	int$flags
	int$flags	set btemp
	end
