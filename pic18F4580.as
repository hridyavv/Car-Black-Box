subtitle "Microchip MPLAB XC8 C Compiler v2.46 (Free license) build 20240104201356 Og9 "

pagewidth 120

	opt flic

	processor	18F4580
include "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\18f4580.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
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
# 54 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.46\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
	debug_source C
	FNCALL	_main,___ftdiv
	FNCALL	_main,___fttol
	FNCALL	_main,___lwdiv
	FNCALL	_main,___lwmod
	FNCALL	_main,___lwtoft
	FNCALL	_main,_change_password
	FNCALL	_main,_clcd_print
	FNCALL	_main,_clcd_write
	FNCALL	_main,_clear
	FNCALL	_main,_dashboard
	FNCALL	_main,_download
	FNCALL	_main,_get
	FNCALL	_main,_get_time
	FNCALL	_main,_init_config
	FNCALL	_main,_main_menu
	FNCALL	_main,_password_screen
	FNCALL	_main,_read_adc
	FNCALL	_main,_read_switches
	FNCALL	_main,_set_time
	FNCALL	_main,_view_log
	FNCALL	_main,_view_save
	FNCALL	_main,_write_ds1307
	FNCALL	_view_save,___lwdiv
	FNCALL	_view_save,___lwmod
	FNCALL	_view_save,_write_external_eeprom
	FNCALL	_view_log,_clcd_print
	FNCALL	_view_log,_clcd_putch
	FNCALL	_set_time,___lwdiv
	FNCALL	_set_time,___lwmod
	FNCALL	_set_time,_clcd_print
	FNCALL	_set_time,_clcd_putch
	FNCALL	_read_switches,_scan_key
	FNCALL	_password_screen,___lwdiv
	FNCALL	_password_screen,___lwmod
	FNCALL	_password_screen,_clcd_print
	FNCALL	_password_screen,_clcd_putch
	FNCALL	_password_screen,_clcd_write
	FNCALL	_password_screen,_compare
	FNCALL	_password_screen,_copy
	FNCALL	_copy,___wmul
	FNCALL	_copy,_read_external_eeprom
	FNCALL	_main_menu,_clcd_print
	FNCALL	_init_config,_init_adc
	FNCALL	_init_config,_init_clcd
	FNCALL	_init_config,_init_ds1307
	FNCALL	_init_config,_init_i2c
	FNCALL	_init_config,_init_matrix_keypad
	FNCALL	_init_config,_init_timer0
	FNCALL	_init_config,_init_uart
	FNCALL	_init_ds1307,_read_ds1307
	FNCALL	_init_ds1307,_write_ds1307
	FNCALL	_write_ds1307,_i2c_start
	FNCALL	_write_ds1307,_i2c_stop
	FNCALL	_write_ds1307,_i2c_write
	FNCALL	_init_clcd,_clcd_write
	FNCALL	_get_time,_read_ds1307
	FNCALL	_read_ds1307,_i2c_read
	FNCALL	_read_ds1307,_i2c_rep_start
	FNCALL	_read_ds1307,_i2c_start
	FNCALL	_read_ds1307,_i2c_stop
	FNCALL	_read_ds1307,_i2c_write
	FNCALL	_download,___wmul
	FNCALL	_download,_clcd_print
	FNCALL	_download,_clcd_write
	FNCALL	_download,_putch
	FNCALL	_download,_puts
	FNCALL	_puts,_putch
	FNCALL	_dashboard,___lwdiv
	FNCALL	_dashboard,___lwmod
	FNCALL	_dashboard,_clcd_print
	FNCALL	_dashboard,_clcd_putch
	FNCALL	_clear,_clcd_print
	FNCALL	_clear,_clcd_write
	FNCALL	_change_password,_clcd_print
	FNCALL	_change_password,_clcd_putch
	FNCALL	_change_password,_clcd_write
	FNCALL	_change_password,_compare
	FNCALL	_change_password,_get
	FNCALL	_change_password,_write_eeprom
	FNCALL	_write_eeprom,_write_external_eeprom
	FNCALL	_write_external_eeprom,_i2c_start
	FNCALL	_write_external_eeprom,_i2c_stop
	FNCALL	_write_external_eeprom,_i2c_write
	FNCALL	_get,_read_external_eeprom
	FNCALL	_read_external_eeprom,_i2c_read
	FNCALL	_read_external_eeprom,_i2c_rep_start
	FNCALL	_read_external_eeprom,_i2c_start
	FNCALL	_read_external_eeprom,_i2c_stop
	FNCALL	_read_external_eeprom,_i2c_write
	FNCALL	_i2c_write,_i2c_idle
	FNCALL	_i2c_stop,_i2c_idle
	FNCALL	_i2c_start,_i2c_idle
	FNCALL	_i2c_rep_start,_i2c_idle
	FNCALL	_i2c_read,_i2c_no_ack
	FNCALL	_i2c_read,_i2c_rx_mode
	FNCALL	_i2c_rx_mode,_i2c_idle
	FNCALL	_clcd_putch,_clcd_write
	FNCALL	_clcd_print,_clcd_write
	FNCALL	___lwtoft,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNROOT	_main
	FNCALL	intlevel2,_isr
	global	intlevel2
	FNROOT	intlevel2
	global	_sec
	global	password_screen@attempt
	global	_changemenu
	global	read_switches@once
	global	_gear
	global	_menu
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"Scrolling.c"
	line	13

;initializer for _sec
	dw	(078h)&0ffffh
	file	"newmain.c"
	line	104

;initializer for password_screen@attempt
	db	low(02h)
	file	"Scrolling.c"
	line	15

;initializer for _changemenu
	db	low(01h)
	file	"matrix_keypad.c"
	line	90

;initializer for read_switches@once
	db	low(01h)
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	file	"newmain.c"
	line	15

;initializer for _gear
		db	low(STR_1)
	db	high(STR_1)

		db	low(STR_2)
	db	high(STR_2)

		db	low(STR_3)
	db	high(STR_3)

		db	low(STR_4)
	db	high(STR_4)

		db	low(STR_5)
	db	high(STR_5)

		db	low(STR_6)
	db	high(STR_6)

		db	low(STR_7)
	db	high(STR_7)

		db	low(STR_8)
	db	high(STR_8)

	file	"Scrolling.c"
	line	14

;initializer for _menu
		db	low(STR_19)
	db	high(STR_19)

		db	low(STR_20)
	db	high(STR_20)

		db	low(STR_21)
	db	high(STR_21)

		db	low(STR_22)
	db	high(STR_22)

		db	low(STR_23)
	db	high(STR_23)

	global	_wait_c
	global	_clock_reg
	global	_shortpess1
	global	_shortpress
	global	_speed
	global	change_password@j1
	global	change_password@j
	global	change_password@i
	global	password_screen@i
	global	_rotation
	global	_adr1
	global	_opv
	global	_op
	global	_up
	global	_total
	global	_adr
	global	_ok
	global	read_switches@key
	global	_wait_s
	global	_wait3
	global	_wait
	global	_wrong_sec
	global	_count1
	global	_count
	global	_ch
	global	_timer
	global	_str2
	global	_str1
	global	_str
	global	_password
	global	_viewdisplay
	global	_RCREG
_RCREG	set	0xFAE
	global	_TXREG
_TXREG	set	0xFAD
	global	_SPBRG
_SPBRG	set	0xFAF
	global	_EECON2
_EECON2	set	0xFA7
	global	_SSPADD
_SSPADD	set	0xFC8
	global	_SSPCON1
_SSPCON1	set	0xFC6
	global	_ADRESL
_ADRESL	set	0xFC3
	global	_ADRESH
_ADRESH	set	0xFC4
	global	_ACKSTAT
_ACKSTAT	set	0x7E2E
	global	_CKE
_CKE	set	0x7E3E
	global	_VCFG1
_VCFG1	set	0x7E0D
	global	_GODONE
_GODONE	set	0x7E11
	global	_TRISC
_TRISC	set	0xF94
	global	_TRISD
_TRISD	set	0xF95
	global	_PORTBbits
_PORTBbits	set	0xF81
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_ADCON0
_ADCON0	set	0xFC2
	global	_TMR0IE
_TMR0IE	set	0x7F95
	global	_T0PS0
_T0PS0	set	0x7EA8
	global	_T0PS1
_T0PS1	set	0x7EA9
	global	_T0PS2
_T0PS2	set	0x7EAA
	global	_PSA
_PSA	set	0x7EAB
	global	_TMR0ON
_TMR0ON	set	0x7EAF
	global	_T0CS
_T0CS	set	0x7EAD
	global	_PEIE
_PEIE	set	0x7F96
	global	_TMR0IF
_TMR0IF	set	0x7F92
	global	_OERR
_OERR	set	0x7D59
	global	_RD7
_RD7	set	0x7C1F
	global	_RC0
_RC0	set	0x7C10
	global	_RC2
_RC2	set	0x7C12
	global	_RCIF
_RCIF	set	0x7CF5
	global	_TXIF
_TXIF	set	0x7CF4
	global	_CREN
_CREN	set	0x7D5C
	global	_TRISC6
_TRISC6	set	0x7CA6
	global	_TRISC7
_TRISC7	set	0x7CA7
	global	_ACKEN
_ACKEN	set	0x7E2C
	global	_ACKDT
_ACKDT	set	0x7E2D
	global	_RCEN
_RCEN	set	0x7E2B
	global	_RSEN
_RSEN	set	0x7E29
	global	_PEN
_PEN	set	0x7E2A
	global	_SEN
_SEN	set	0x7E28
	global	_SMP
_SMP	set	0x7E3F
	global	_TRISC4
_TRISC4	set	0x7CA4
	global	_GO
_GO	set	0x7E11
	global	_ADON
_ADON	set	0x7E10
	global	_VCFG0
_VCFG0	set	0x7E0C
	global	_ADCS2
_ADCS2	set	0x7E02
	global	_ADCS1
_ADCS1	set	0x7E01
	global	_ADCS0
_ADCS0	set	0x7E00
	global	_ACQT0
_ACQT0	set	0x7E03
	global	_ACQT1
_ACQT1	set	0x7E04
	global	_ACQT2
_ACQT2	set	0x7E05
	global	_PORTB
_PORTB	set	0xF81
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISC3
_TRISC3	set	0x7CA3
	global	_ADFM
_ADFM	set	0x7E07
	global	_TRISD7
_TRISD7	set	0x7CAF
	global	_RCIE
_RCIE	set	0x7CED
	global	_SSPIF
_SSPIF	set	0x7CF3
	global	_TMR0
_TMR0	set	0xFD6
	global	_SSPBUF
_SSPBUF	set	0xFC9
	global	_T08BIT
_T08BIT	set	0x7EAE
	global	_RBPU
_RBPU	set	0x7F8F
	global	_GIE
_GIE	set	0x7F97
	global	_BCLIF
_BCLIF	set	0x7D0B
	global	_EECON1bits
_EECON1bits	set	0xFA6
	global	_EEDATA
_EEDATA	set	0xFA8
	global	_EEADR
_EEADR	set	0xFA9
	global	_SPEN
_SPEN	set	0x7D5F
	global	_BRGH
_BRGH	set	0x7D62
	global	_PORTD
_PORTD	set	0xF83
	global	_RC1
_RC1	set	0x7C11
psect	mediumconst,class=MEDIUMCONST,space=0,reloc=2,noexec
global __pmediumconst
__pmediumconst:
	db	0
	
STR_35:
	db	78	;'N'
	db	79	;'O'
	db	32
	db	76	;'L'
	db	79	;'O'
	db	71	;'G'
	db	32
	db	65	;'A'
	db	86	;'V'
	db	65	;'A'
	db	73	;'I'
	db	65	;'A'
	db	66	;'B'
	db	76	;'L'
	db	69	;'E'
	db	10
	db	13
	db	0
	
STR_44:
	db	82	;'R'
	db	45
	db	69	;'E'
	db	78	;'N'
	db	84	;'T'
	db	69	;'E'
	db	82	;'R'
	db	32
	db	80	;'P'
	db	65	;'A'
	db	83	;'S'
	db	83	;'S'
	db	87	;'W'
	db	79	;'O'
	db	82	;'R'
	db	68	;'D'
	db	0
	
STR_15:
	db	87	;'W'
	db	114	;'r'
	db	111	;'o'
	db	110	;'n'
	db	103	;'g'
	db	32
	db	80	;'P'
	db	97	;'a'
	db	115	;'s'
	db	115	;'s'
	db	119	;'w'
	db	111	;'o'
	db	114	;'r'
	db	100	;'d'
	db	32
	db	32
	db	0
	
STR_12:
	db	69	;'E'
	db	110	;'n'
	db	116	;'t'
	db	101	;'e'
	db	114	;'r'
	db	32
	db	80	;'P'
	db	97	;'a'
	db	115	;'s'
	db	115	;'s'
	db	119	;'w'
	db	111	;'o'
	db	114	;'r'
	db	100	;'d'
	db	32
	db	32
	db	0
	
STR_31:
	db	78	;'N'
	db	79	;'O'
	db	32
	db	76	;'L'
	db	79	;'O'
	db	71	;'G'
	db	32
	db	65	;'A'
	db	86	;'V'
	db	65	;'A'
	db	73	;'I'
	db	65	;'A'
	db	66	;'B'
	db	76	;'L'
	db	69	;'E'
	db	0
	
STR_14:
	db	32
	db	32
	db	97	;'a'
	db	116	;'t'
	db	116	;'t'
	db	101	;'e'
	db	109	;'m'
	db	112	;'p'
	db	116	;'t'
	db	115	;'s'
	db	32
	db	108	;'l'
	db	101	;'e'
	db	102	;'f'
	db	116	;'t'
	db	0
	
STR_47:
	db	87	;'W'
	db	82	;'R'
	db	79	;'O'
	db	78	;'N'
	db	71	;'G'
	db	32
	db	80	;'P'
	db	65	;'A'
	db	83	;'S'
	db	83	;'S'
	db	87	;'W'
	db	79	;'O'
	db	82	;'R'
	db	68	;'D'
	db	0
	
STR_13:
	db	87	;'W'
	db	114	;'r'
	db	111	;'o'
	db	110	;'n'
	db	103	;'g'
	db	32
	db	80	;'P'
	db	97	;'a'
	db	115	;'s'
	db	115	;'s'
	db	119	;'w'
	db	111	;'o'
	db	114	;'r'
	db	100	;'d'
	db	0
	
STR_22:
	db	83	;'S'
	db	101	;'e'
	db	116	;'t'
	db	32
	db	116	;'t'
	db	105	;'i'
	db	109	;'m'
	db	101	;'e'
	db	32
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_45:
	db	80	;'P'
	db	65	;'A'
	db	83	;'S'
	db	83	;'S'
	db	87	;'W'
	db	79	;'O'
	db	82	;'R'
	db	68	;'D'
	db	32
	db	83	;'S'
	db	69	;'E'
	db	84	;'T'
	db	32
	db	0
	
STR_23:
	db	67	;'C'
	db	104	;'h'
	db	103	;'g'
	db	101	;'e'
	db	32
	db	80	;'P'
	db	97	;'a'
	db	115	;'s'
	db	115	;'s'
	db	119	;'w'
	db	111	;'o'
	db	114	;'r'
	db	100	;'d'
	db	0
	
STR_19:
	db	86	;'V'
	db	105	;'i'
	db	101	;'e'
	db	119	;'w'
	db	32
	db	108	;'l'
	db	111	;'o'
	db	103	;'g'
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_20:
	db	67	;'C'
	db	108	;'l'
	db	101	;'e'
	db	97	;'a'
	db	114	;'r'
	db	32
	db	108	;'l'
	db	111	;'o'
	db	103	;'g'
	db	32
	db	32
	db	32
	db	0
	
STR_42:
	db	79	;'O'
	db	76	;'L'
	db	68	;'D'
	db	32
	db	80	;'P'
	db	65	;'A'
	db	83	;'S'
	db	83	;'S'
	db	87	;'W'
	db	79	;'O'
	db	82	;'R'
	db	68	;'D'
	db	0
	
STR_43:
	db	78	;'N'
	db	69	;'E'
	db	87	;'W'
	db	32
	db	80	;'P'
	db	65	;'A'
	db	83	;'S'
	db	83	;'S'
	db	87	;'W'
	db	79	;'O'
	db	82	;'R'
	db	68	;'D'
	db	0
	
STR_33:
	db	83	;'S'
	db	85	;'U'
	db	67	;'C'
	db	67	;'C'
	db	69	;'E'
	db	83	;'S'
	db	83	;'S'
	db	70	;'F'
	db	85	;'U'
	db	76	;'L'
	db	76	;'L'
	db	89	;'Y'
	db	0
	
STR_21:
	db	68	;'D'
	db	111	;'o'
	db	119	;'w'
	db	110	;'n'
	db	108	;'l'
	db	111	;'o'
	db	97	;'a'
	db	100	;'d'
	db	32
	db	108	;'l'
	db	111	;'o'
	db	103	;'g'
	db	0
	
STR_16:
	db	32
	db	32
	db	32
	db	83	;'S'
	db	101	;'e'
	db	99	;'c'
	db	32
	db	76	;'L'
	db	101	;'e'
	db	102	;'f'
	db	116	;'t'
	db	32
	db	0
	
STR_18:
	db	83	;'S'
	db	117	;'u'
	db	99	;'c'
	db	99	;'c'
	db	101	;'e'
	db	115	;'s'
	db	115	;'s'
	db	102	;'f'
	db	117	;'u'
	db	108	;'l'
	db	108	;'l'
	db	121	;'y'
	db	0
	
STR_32:
	db	76	;'L'
	db	79	;'O'
	db	71	;'G'
	db	32
	db	67	;'C'
	db	76	;'L'
	db	69	;'E'
	db	65	;'A'
	db	82	;'R'
	db	69	;'E'
	db	68	;'D'
	db	0
	
STR_37:
	db	67	;'C'
	db	79	;'O'
	db	77	;'M'
	db	80	;'P'
	db	76	;'L'
	db	69	;'E'
	db	84	;'T'
	db	69	;'E'
	db	68	;'D'
	db	0
	
STR_36:
	db	68	;'D'
	db	79	;'O'
	db	87	;'W'
	db	78	;'N'
	db	76	;'L'
	db	79	;'O'
	db	65	;'A'
	db	68	;'D'
	db	0
	
STR_38:
	db	83	;'S'
	db	69	;'E'
	db	84	;'T'
	db	95	;'_'
	db	84	;'T'
	db	73	;'I'
	db	77	;'M'
	db	69	;'E'
	db	0
	
STR_30:
	db	86	;'V'
	db	73	;'I'
	db	69	;'E'
	db	87	;'W'
	db	32
	db	76	;'L'
	db	79	;'O'
	db	71	;'G'
	db	0
	
STR_17:
	db	84	;'T'
	db	105	;'i'
	db	109	;'m'
	db	101	;'e'
	db	32
	db	115	;'s'
	db	101	;'e'
	db	116	;'t'
	db	0
	
STR_9:
	db	84	;'T'
	db	105	;'i'
	db	109	;'m'
	db	101	;'e'
	db	0
	
STR_10:
	db	71	;'G'
	db	101	;'e'
	db	97	;'a'
	db	114	;'r'
	db	0
	
STR_27:
	db	45
	db	62	;'>'
	db	32
	db	0
	
STR_8:
	db	67	;'C'
	db	32
	db	32
	db	0
	
STR_2:
	db	71	;'G'
	db	78	;'N'
	db	32
	db	0
	
STR_3:
	db	71	;'G'
	db	82	;'R'
	db	32
	db	0
	
STR_11:
	db	83	;'S'
	db	112	;'p'
	db	100	;'d'
	db	0
	
STR_24:
	db	45
	db	62	;'>'
	db	0
	
STR_4:
	db	71	;'G'
	db	49	;'1'
	db	0
	
STR_5:
	db	71	;'G'
	db	50	;'2'
	db	0
	
STR_6:
	db	71	;'G'
	db	51	;'3'
	db	0
	
STR_7:
	db	71	;'G'
	db	52	;'4'
	db	0
	
STR_1:
	db	79	;'O'
	db	78	;'N'
	db	0
STR_46	equ	STR_33+0
STR_48	equ	STR_47+0
STR_28	equ	STR_27+0
STR_25	equ	STR_22+10
STR_26	equ	STR_22+10
STR_29	equ	STR_22+10
STR_39	equ	STR_22+11
STR_40	equ	STR_22+11
STR_41	equ	STR_22+11
STR_34	equ	STR_35+15
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	file	"pic18F4580.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pbssCOMRAM
__pbssCOMRAM:
	global	_wait_c
_wait_c:
       ds      4
	global	_clock_reg
_clock_reg:
       ds      3
	global	_shortpess1
_shortpess1:
       ds      2
	global	_shortpress
_shortpress:
       ds      2
	global	_speed
_speed:
       ds      2
change_password@j1:
       ds      1
change_password@j:
       ds      1
change_password@i:
       ds      1
password_screen@i:
       ds      1
	global	_rotation
_rotation:
       ds      1
	global	_adr1
_adr1:
       ds      1
	global	_opv
_opv:
       ds      1
	global	_op
_op:
       ds      1
	global	_up
_up:
       ds      1
	global	_total
_total:
       ds      1
	global	_adr
_adr:
       ds      1
	global	_ok
_ok:
       ds      1
read_switches@key:
       ds      1
psect	dataCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pdataCOMRAM
__pdataCOMRAM:
	file	"Scrolling.c"
	line	13
	global	_sec
_sec:
       ds      2
psect	dataCOMRAM
	file	"newmain.c"
	line	104
password_screen@attempt:
       ds      1
psect	dataCOMRAM
	file	"Scrolling.c"
	line	15
	global	_changemenu
_changemenu:
       ds      1
psect	dataCOMRAM
	file	"matrix_keypad.c"
	line	90
read_switches@once:
       ds      1
psect	bssBANK0,class=BANK0,space=1,noexec,lowdata
global __pbssBANK0
__pbssBANK0:
	global	_wait_s
_wait_s:
       ds      4
	global	_wait3
_wait3:
       ds      4
	global	_wait
_wait:
       ds      4
	global	_count6
	global	_count6
_count6:
       ds      2
	global	_count5
	global	_count5
_count5:
       ds      2
isr@count2:
       ds      2
	global	_wrong_sec
_wrong_sec:
       ds      2
	global	_count1
_count1:
       ds      2
	global	_count
_count:
       ds      2
	global	_go
	global	_go
_go:
       ds      1
	global	_event_count
	global	_event_count
_event_count:
       ds      1
	global	_adw
	global	_adw
_adw:
       ds      1
	global	_ch
_ch:
       ds      1
	global	_timer
_timer:
       ds      9
	global	_str2
_str2:
       ds      5
	global	_str1
_str1:
       ds      5
	global	_str
_str:
       ds      5
	global	_password
_password:
       ds      5
psect	dataBANK0,class=BANK0,space=1,noexec,lowdata
global __pdataBANK0
__pdataBANK0:
	file	"newmain.c"
	line	15
	global	_gear
_gear:
       ds      16
psect	dataBANK0
	file	"Scrolling.c"
	line	14
	global	_menu
_menu:
       ds      10
psect	bssBANK1,class=BANK1,space=1,noexec,lowdata
global __pbssBANK1
__pbssBANK1:
	global	_viewdisplay
_viewdisplay:
       ds      130
	file	"pic18F4580.as"
	line	#
psect	cinit
; Initialize objects allocated to BANK0 (26 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
	lfsr	1,26
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
; Initialize objects allocated to COMRAM (5 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	lfsr	0,__pdataCOMRAM
	lfsr	1,5
	copy_data1:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data1
	line	#
; Clear objects allocated to BANK1 (130 bytes)
	global __pbssBANK1
lfsr	0,__pbssBANK1
movlw	130
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to BANK0 (57 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	57
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
; Clear objects allocated to COMRAM (26 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	26
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
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?_read_ds1307:	; 1 bytes @ 0x0
?_compare:	; 1 bytes @ 0x0
?_init_timer0:	; 1 bytes @ 0x0
??_init_timer0:	; 1 bytes @ 0x0
?_main_menu:	; 1 bytes @ 0x0
?_view_log:	; 1 bytes @ 0x0
?_clear:	; 1 bytes @ 0x0
?_download:	; 1 bytes @ 0x0
?_change_password:	; 1 bytes @ 0x0
?_init_adc:	; 1 bytes @ 0x0
??_init_adc:	; 1 bytes @ 0x0
?_init_i2c:	; 1 bytes @ 0x0
??_init_i2c:	; 1 bytes @ 0x0
?_i2c_idle:	; 1 bytes @ 0x0
??_i2c_idle:	; 1 bytes @ 0x0
?_i2c_start:	; 1 bytes @ 0x0
??_i2c_start:	; 1 bytes @ 0x0
?_i2c_stop:	; 1 bytes @ 0x0
??_i2c_stop:	; 1 bytes @ 0x0
?_i2c_rep_start:	; 1 bytes @ 0x0
??_i2c_rep_start:	; 1 bytes @ 0x0
?_i2c_write:	; 1 bytes @ 0x0
??_i2c_write:	; 1 bytes @ 0x0
?_i2c_rx_mode:	; 1 bytes @ 0x0
??_i2c_rx_mode:	; 1 bytes @ 0x0
?_i2c_no_ack:	; 1 bytes @ 0x0
??_i2c_no_ack:	; 1 bytes @ 0x0
?_i2c_read:	; 1 bytes @ 0x0
??_i2c_read:	; 1 bytes @ 0x0
?_init_ds1307:	; 1 bytes @ 0x0
?_get_time:	; 1 bytes @ 0x0
?_init_matrix_keypad:	; 1 bytes @ 0x0
??_init_matrix_keypad:	; 1 bytes @ 0x0
?_scan_key:	; 1 bytes @ 0x0
??_scan_key:	; 1 bytes @ 0x0
?_read_switches:	; 1 bytes @ 0x0
??_read_switches:	; 1 bytes @ 0x0
?_init_uart:	; 1 bytes @ 0x0
??_init_uart:	; 1 bytes @ 0x0
?_putch:	; 1 bytes @ 0x0
??_putch:	; 1 bytes @ 0x0
?_clcd_write:	; 1 bytes @ 0x0
?_init_clcd:	; 1 bytes @ 0x0
?_read_external_eeprom:	; 1 bytes @ 0x0
?_isr:	; 1 bytes @ 0x0
??_isr:	; 1 bytes @ 0x0
?_get:	; 1 bytes @ 0x0
?_view_save:	; 1 bytes @ 0x0
?_copy:	; 1 bytes @ 0x0
?_dashboard:	; 1 bytes @ 0x0
?_password_screen:	; 1 bytes @ 0x0
?_init_config:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	global	?_read_adc
?_read_adc:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	i2c_write@data
i2c_write@data:	; 1 bytes @ 0x0
	global	read_switches@detection_type
read_switches@detection_type:	; 1 bytes @ 0x0
	global	putch@byte
putch@byte:	; 1 bytes @ 0x0
	global	clcd_write@control_bit
clcd_write@control_bit:	; 1 bytes @ 0x0
	global	compare@str1
compare@str1:	; 1 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds   1
??_read_ds1307:	; 1 bytes @ 0x1
??_clcd_write:	; 1 bytes @ 0x1
??_read_external_eeprom:	; 1 bytes @ 0x1
?_puts:	; 2 bytes @ 0x1
	global	read_ds1307@address
read_ds1307@address:	; 1 bytes @ 0x1
	global	clcd_write@byte
clcd_write@byte:	; 1 bytes @ 0x1
	global	read_external_eeprom@address
read_external_eeprom@address:	; 1 bytes @ 0x1
	global	compare@str2
compare@str2:	; 1 bytes @ 0x1
	global	puts@s
puts@s:	; 2 bytes @ 0x1
	ds   1
??_compare:	; 1 bytes @ 0x2
??_read_adc:	; 1 bytes @ 0x2
??_init_clcd:	; 1 bytes @ 0x2
?_clcd_print:	; 1 bytes @ 0x2
	global	read_ds1307@data
read_ds1307@data:	; 1 bytes @ 0x2
	global	read_external_eeprom@data
read_external_eeprom@data:	; 1 bytes @ 0x2
	global	clcd_print@data
clcd_print@data:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	ds   1
??_get_time:	; 1 bytes @ 0x3
??_puts:	; 1 bytes @ 0x3
??_get:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds   1
??___wmul:	; 1 bytes @ 0x4
??___lwdiv:	; 1 bytes @ 0x4
	global	clcd_print@addr
clcd_print@addr:	; 1 bytes @ 0x4
	global	compare@i
compare@i:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	read_adc@reg_val
read_adc@reg_val:	; 2 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	ds   1
??_main_menu:	; 1 bytes @ 0x5
??_clear:	; 1 bytes @ 0x5
??___ftpack:	; 1 bytes @ 0x5
??_clcd_print:	; 1 bytes @ 0x5
	global	clear@w
clear@w:	; 4 bytes @ 0x5
	ds   1
??_download:	; 1 bytes @ 0x6
??_copy:	; 1 bytes @ 0x6
	global	read_adc@channel
read_adc@channel:	; 1 bytes @ 0x6
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	ds   1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x7
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x7
	ds   1
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	ds   1
	global	copy@j
copy@j:	; 2 bytes @ 0x9
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x9
	global	download@w
download@w:	; 4 bytes @ 0x9
	ds   2
??___lwmod:	; 1 bytes @ 0xB
??___lwtoft:	; 1 bytes @ 0xB
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0xB
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xB
	global	copy@j_469
copy@j_469:	; 2 bytes @ 0xB
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0xB
	ds   1
?_write_ds1307:	; 1 bytes @ 0xC
?_clcd_putch:	; 1 bytes @ 0xC
?_write_external_eeprom:	; 1 bytes @ 0xC
	global	write_ds1307@data
write_ds1307@data:	; 1 bytes @ 0xC
	global	clcd_putch@addr
clcd_putch@addr:	; 1 bytes @ 0xC
	global	write_external_eeprom@data
write_external_eeprom@data:	; 1 bytes @ 0xC
	ds   1
??_write_ds1307:	; 1 bytes @ 0xD
??_clcd_putch:	; 1 bytes @ 0xD
??_write_external_eeprom:	; 1 bytes @ 0xD
	global	write_ds1307@address
write_ds1307@address:	; 1 bytes @ 0xD
	global	clcd_putch@data
clcd_putch@data:	; 1 bytes @ 0xD
	global	write_external_eeprom@w
write_external_eeprom@w:	; 2 bytes @ 0xD
	global	copy@j_470
copy@j_470:	; 2 bytes @ 0xD
	global	download@j
download@j:	; 2 bytes @ 0xD
	ds   1
??_view_log:	; 1 bytes @ 0xE
?_set_time:	; 1 bytes @ 0xE
??_init_ds1307:	; 1 bytes @ 0xE
??_dashboard:	; 1 bytes @ 0xE
	global	init_ds1307@dummy
init_ds1307@dummy:	; 1 bytes @ 0xE
	global	dashboard@i
dashboard@i:	; 1 bytes @ 0xE
	global	set_time@h
set_time@h:	; 2 bytes @ 0xE
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0xE
	ds   1
??_init_config:	; 1 bytes @ 0xF
	global	write_external_eeprom@address
write_external_eeprom@address:	; 1 bytes @ 0xF
	global	copy@i
copy@i:	; 2 bytes @ 0xF
	global	download@i
download@i:	; 2 bytes @ 0xF
	ds   1
?_write_eeprom:	; 1 bytes @ 0x10
??_view_save:	; 1 bytes @ 0x10
	global	write_eeprom@str
write_eeprom@str:	; 1 bytes @ 0x10
	global	view_log@i
view_log@i:	; 2 bytes @ 0x10
	global	set_time@m
set_time@m:	; 2 bytes @ 0x10
	ds   1
??_change_password:	; 1 bytes @ 0x11
??___ftdiv:	; 1 bytes @ 0x11
??_write_eeprom:	; 1 bytes @ 0x11
??_password_screen:	; 1 bytes @ 0x11
	global	password_screen@key1
password_screen@key1:	; 1 bytes @ 0x11
	global	change_password@w
change_password@w:	; 4 bytes @ 0x11
	ds   1
	global	view_save@i
view_save@i:	; 1 bytes @ 0x12
	global	set_time@s
set_time@s:	; 2 bytes @ 0x12
	ds   1
	global	view_save@j
view_save@j:	; 2 bytes @ 0x13
	ds   1
??_set_time:	; 1 bytes @ 0x14
	global	set_time@f
set_time@f:	; 1 bytes @ 0x14
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x14
	ds   1
	global	view_save@j_464
view_save@j_464:	; 2 bytes @ 0x15
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x15
	global	change_password@w_607
change_password@w_607:	; 4 bytes @ 0x15
	ds   2
	global	view_save@j_465
view_save@j_465:	; 2 bytes @ 0x17
	ds   1
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x18
	ds   1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x19
	global	change_password@w_609
change_password@w_609:	; 4 bytes @ 0x19
	ds   1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x1A
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x1A
	ds   3
	global	change_password@key
change_password@key:	; 1 bytes @ 0x1D
	ds   1
??___fttol:	; 1 bytes @ 0x1E
	ds   5
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x23
	ds   1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x24
	ds   4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x28
	ds   1
??_main:	; 1 bytes @ 0x29
	ds   5
	global	main@w
main@w:	; 4 bytes @ 0x2E
	ds   4
	global	main@hr
main@hr:	; 2 bytes @ 0x32
	ds   2
	global	main@mi
main@mi:	; 2 bytes @ 0x34
	ds   2
	global	main@f
main@f:	; 1 bytes @ 0x36
	ds   1
	global	main@se
main@se:	; 2 bytes @ 0x37
	ds   2
	global	main@key
main@key:	; 1 bytes @ 0x39
	ds   1
	global	main@i
main@i:	; 1 bytes @ 0x3A
	ds   1
;!
;!Data Sizes:
;!    Strings     383
;!    Constant    0
;!    Data        31
;!    BSS         213
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           94     59      90
;!    BANK0           160      0      83
;!    BANK1           256      0     130
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    clcd_print@data	PTR const unsigned char  size(2) Largest target is 17
;!		 -> STR_1(CODE[3]), STR_10(CODE[5]), STR_11(CODE[4]), STR_12(CODE[17]), 
;!		 -> STR_13(CODE[15]), STR_14(CODE[16]), STR_15(CODE[17]), STR_16(CODE[13]), 
;!		 -> STR_17(CODE[9]), STR_18(CODE[13]), STR_19(CODE[13]), STR_2(CODE[4]), 
;!		 -> STR_20(CODE[13]), STR_21(CODE[13]), STR_22(CODE[14]), STR_23(CODE[14]), 
;!		 -> STR_24(CODE[3]), STR_25(CODE[4]), STR_26(CODE[4]), STR_27(CODE[4]), 
;!		 -> STR_28(CODE[4]), STR_29(CODE[4]), STR_3(CODE[4]), STR_30(CODE[9]), 
;!		 -> STR_31(CODE[16]), STR_32(CODE[12]), STR_33(CODE[13]), STR_36(CODE[9]), 
;!		 -> STR_37(CODE[10]), STR_38(CODE[9]), STR_39(CODE[3]), STR_4(CODE[3]), 
;!		 -> STR_40(CODE[3]), STR_41(CODE[3]), STR_42(CODE[13]), STR_43(CODE[13]), 
;!		 -> STR_44(CODE[17]), STR_45(CODE[14]), STR_46(CODE[13]), STR_47(CODE[15]), 
;!		 -> STR_48(CODE[15]), STR_5(CODE[3]), STR_6(CODE[3]), STR_7(CODE[3]), 
;!		 -> STR_8(CODE[4]), STR_9(CODE[5]), timer(BANK0[9]), 
;!
;!    compare@str1	PTR unsigned char  size(1) Largest target is 5
;!		 -> str(BANK0[5]), str2(BANK0[5]), 
;!
;!    compare@str2	PTR unsigned char  size(1) Largest target is 5
;!		 -> password(BANK0[5]), str1(BANK0[5]), 
;!
;!    gear	PTR unsigned char [8] size(2) Largest target is 4
;!		 -> STR_1(CODE[3]), STR_2(CODE[4]), STR_3(CODE[4]), STR_4(CODE[3]), 
;!		 -> STR_5(CODE[3]), STR_6(CODE[3]), STR_7(CODE[3]), STR_8(CODE[4]), 
;!
;!    menu	PTR unsigned char [5] size(2) Largest target is 14
;!		 -> STR_19(CODE[13]), STR_20(CODE[13]), STR_21(CODE[13]), STR_22(CODE[14]), 
;!		 -> STR_23(CODE[14]), 
;!
;!    puts@s	PTR const unsigned char  size(2) Largest target is 18
;!		 -> STR_34(CODE[3]), STR_35(CODE[18]), 
;!
;!    write_eeprom@str	PTR unsigned char  size(1) Largest target is 5
;!		 -> str1(BANK0[5]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->___fttol
;!    _view_save->_write_external_eeprom
;!    _view_log->_clcd_putch
;!    _set_time->_clcd_putch
;!    _password_screen->_copy
;!    _copy->___wmul
;!    _main_menu->_clcd_print
;!    _init_config->_init_ds1307
;!    _init_ds1307->_write_ds1307
;!    _write_ds1307->___lwmod
;!    _init_clcd->_clcd_write
;!    _get_time->_read_ds1307
;!    _read_ds1307->_i2c_write
;!    _download->___wmul
;!    _puts->_putch
;!    _dashboard->_clcd_putch
;!    ___lwmod->___lwdiv
;!    _clear->_clcd_print
;!    _change_password->_write_eeprom
;!    _write_eeprom->_write_external_eeprom
;!    _write_external_eeprom->___lwmod
;!    _get->_read_external_eeprom
;!    _read_external_eeprom->_i2c_write
;!    _clcd_putch->___lwmod
;!    _clcd_print->_clcd_write
;!    ___lwtoft->___ftpack
;!    ___fttol->___ftdiv
;!    ___ftdiv->___lwtoft
;!
;!Critical Paths under _isr in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _isr in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _isr in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _isr in BANK5
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 5, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                22    22      0  167046
;!                                             41 COMRAM    18    18      0
;!                            ___ftdiv
;!                            ___fttol
;!                            ___lwdiv
;!                            ___lwmod
;!                           ___lwtoft
;!                    _change_password
;!                         _clcd_print
;!                         _clcd_write
;!                              _clear
;!                          _dashboard
;!                           _download
;!                                _get
;!                           _get_time
;!                        _init_config
;!                          _main_menu
;!                    _password_screen
;!                           _read_adc
;!                      _read_switches
;!                           _set_time
;!                           _view_log
;!                          _view_save
;!                       _write_ds1307
;! ---------------------------------------------------------------------------------
;! (1) _view_save                                            9     9      0    6914
;!                                             16 COMRAM     9     9      0
;!                            ___lwdiv
;!                            ___lwmod
;!              _write_external_eeprom
;! ---------------------------------------------------------------------------------
;! (1) _view_log                                             4     4      0   14349
;!                                             14 COMRAM     4     4      0
;!                         _clcd_print
;!                         _clcd_putch
;! ---------------------------------------------------------------------------------
;! (1) _set_time                                             7     1      6   20570
;!                                             14 COMRAM     7     1      6
;!                            ___lwdiv
;!                            ___lwmod
;!                         _clcd_print
;!                         _clcd_putch
;! ---------------------------------------------------------------------------------
;! (1) _read_switches                                        1     1      0      44
;!                                              0 COMRAM     1     1      0
;!                           _scan_key
;! ---------------------------------------------------------------------------------
;! (2) _scan_key                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _read_adc                                             7     5      2      45
;!                                              0 COMRAM     7     5      2
;! ---------------------------------------------------------------------------------
;! (1) _password_screen                                      1     1      0   26092
;!                                             17 COMRAM     1     1      0
;!                            ___lwdiv
;!                            ___lwmod
;!                         _clcd_print
;!                         _clcd_putch
;!                         _clcd_write
;!                            _compare
;!                               _copy
;! ---------------------------------------------------------------------------------
;! (2) _copy                                                11    11      0    3450
;!                                              6 COMRAM    11    11      0
;!                             ___wmul
;!               _read_external_eeprom
;! ---------------------------------------------------------------------------------
;! (1) _main_menu                                            0     0      0    8471
;!                         _clcd_print
;! ---------------------------------------------------------------------------------
;! (1) _init_config                                          0     0      0    3058
;!                           _init_adc
;!                          _init_clcd
;!                        _init_ds1307
;!                           _init_i2c
;!                 _init_matrix_keypad
;!                        _init_timer0
;!                          _init_uart
;! ---------------------------------------------------------------------------------
;! (2) _init_uart                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_timer0                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_matrix_keypad                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_i2c                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_ds1307                                          1     1      0     886
;!                                             14 COMRAM     1     1      0
;!                        _read_ds1307
;!                       _write_ds1307
;! ---------------------------------------------------------------------------------
;! (1) _write_ds1307                                         2     1      1     750
;!                                             12 COMRAM     2     1      1
;!                            ___lwdiv (ARG)
;!                            ___lwmod (ARG)
;!                          _i2c_start
;!                           _i2c_stop
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (2) _init_clcd                                            1     1      0    2172
;!                                              2 COMRAM     1     1      0
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (2) _init_adc                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _get_time                                             0     0      0      67
;!                        _read_ds1307
;! ---------------------------------------------------------------------------------
;! (3) _read_ds1307                                          2     2      0      67
;!                                              1 COMRAM     2     2      0
;!                           _i2c_read
;!                      _i2c_rep_start
;!                          _i2c_start
;!                           _i2c_stop
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (1) _download                                            11    11      0   14000
;!                                              6 COMRAM    11    11      0
;!                             ___wmul
;!                         _clcd_print
;!                         _clcd_write
;!                              _putch
;!                               _puts
;! ---------------------------------------------------------------------------------
;! (2) _puts                                                 2     0      2     219
;!                                              1 COMRAM     2     0      2
;!                              _putch
;! ---------------------------------------------------------------------------------
;! (3) _putch                                                1     1      0      22
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (3) ___wmul                                               6     2      4    2935
;!                                              0 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (1) _dashboard                                            1     1      0   19770
;!                                             14 COMRAM     1     1      0
;!                            ___lwdiv
;!                            ___lwmod
;!                         _clcd_print
;!                         _clcd_putch
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              5     1      4    2743
;!                                              7 COMRAM     5     1      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              7     3      4    2746
;!                                              0 COMRAM     7     3      4
;! ---------------------------------------------------------------------------------
;! (1) _clear                                                4     4      0   10666
;!                                              5 COMRAM     4     4      0
;!                         _clcd_print
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (1) _change_password                                     13    13      0   18718
;!                                             17 COMRAM    13    13      0
;!                         _clcd_print
;!                         _clcd_putch
;!                         _clcd_write
;!                            _compare
;!                                _get
;!                       _write_eeprom
;! ---------------------------------------------------------------------------------
;! (2) _write_eeprom                                         1     0      1    1341
;!                                             16 COMRAM     1     0      1
;!              _write_external_eeprom
;! ---------------------------------------------------------------------------------
;! (2) _write_external_eeprom                                4     3      1    1177
;!                                             12 COMRAM     4     3      1
;!                            ___lwdiv (ARG)
;!                            ___lwmod (ARG)
;!                          _i2c_start
;!                           _i2c_stop
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (1) _get                                                  0     0      0      67
;!               _read_external_eeprom
;! ---------------------------------------------------------------------------------
;! (3) _read_external_eeprom                                 2     2      0      67
;!                                              1 COMRAM     2     2      0
;!                           _i2c_read
;!                      _i2c_rep_start
;!                          _i2c_start
;!                           _i2c_stop
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (2) _i2c_write                                            1     1      0      22
;!                                              0 COMRAM     1     1      0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (2) _i2c_stop                                             0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (2) _i2c_start                                            0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (4) _i2c_rep_start                                        0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (4) _i2c_read                                             0     0      0       0
;!                         _i2c_no_ack
;!                        _i2c_rx_mode
;! ---------------------------------------------------------------------------------
;! (5) _i2c_rx_mode                                          0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (3) _i2c_idle                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (5) _i2c_no_ack                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _compare                                              5     3      2     678
;!                                              0 COMRAM     5     3      2
;! ---------------------------------------------------------------------------------
;! (2) _clcd_putch                                           2     1      1    5788
;!                                             12 COMRAM     2     1      1
;!                            ___lwdiv (ARG)
;!                            ___lwmod (ARG)
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (2) _clcd_print                                           3     0      3    8471
;!                                              2 COMRAM     3     0      3
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (3) _clcd_write                                           2     1      1    2172
;!                                              0 COMRAM     2     1      1
;! ---------------------------------------------------------------------------------
;! (1) ___lwtoft                                             3     0      3    2864
;!                                              8 COMRAM     3     0      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (1) ___fttol                                             15    11      4     328
;!                                             26 COMRAM    15    11      4
;!                            ___ftdiv (ARG)
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (1) ___ftdiv                                             15     9      6    3326
;!                                             11 COMRAM    15     9      6
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftpack                                             8     3      5    2766
;!                                              0 COMRAM     8     3      5
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (7) _isr                                                  0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   ___ftdiv
;!     ___ftpack
;!     ___lwtoft (ARG)
;!       ___ftpack
;!   ___fttol
;!     ___ftdiv (ARG)
;!     ___lwtoft (ARG)
;!   ___lwdiv
;!   ___lwmod
;!     ___lwdiv (ARG)
;!   ___lwtoft
;!   _change_password
;!     _clcd_print
;!       _clcd_write
;!     _clcd_putch
;!       ___lwdiv (ARG)
;!       ___lwmod (ARG)
;!       _clcd_write (ARG)
;!     _clcd_write
;!     _compare
;!     _get
;!       _read_external_eeprom
;!         _i2c_read
;!           _i2c_no_ack
;!           _i2c_rx_mode
;!             _i2c_idle
;!         _i2c_rep_start
;!           _i2c_idle
;!         _i2c_start
;!           _i2c_idle
;!         _i2c_stop
;!           _i2c_idle
;!         _i2c_write
;!           _i2c_idle
;!     _write_eeprom
;!       _write_external_eeprom
;!         ___lwdiv (ARG)
;!         ___lwmod (ARG)
;!         _i2c_start (ARG)
;!         _i2c_stop (ARG)
;!         _i2c_write (ARG)
;!   _clcd_print
;!   _clcd_write
;!   _clear
;!     _clcd_print
;!     _clcd_write
;!   _dashboard
;!     ___lwdiv
;!     ___lwmod
;!     _clcd_print
;!     _clcd_putch
;!   _download
;!     ___wmul
;!     _clcd_print
;!     _clcd_write
;!     _putch
;!     _puts
;!       _putch
;!   _get
;!   _get_time
;!     _read_ds1307
;!       _i2c_read
;!       _i2c_rep_start
;!       _i2c_start
;!       _i2c_stop
;!       _i2c_write
;!   _init_config
;!     _init_adc
;!     _init_clcd
;!       _clcd_write
;!     _init_ds1307
;!       _read_ds1307
;!       _write_ds1307
;!         ___lwdiv (ARG)
;!         ___lwmod (ARG)
;!         _i2c_start (ARG)
;!         _i2c_stop (ARG)
;!         _i2c_write (ARG)
;!     _init_i2c
;!     _init_matrix_keypad
;!     _init_timer0
;!     _init_uart
;!   _main_menu
;!     _clcd_print
;!   _password_screen
;!     ___lwdiv
;!     ___lwmod
;!     _clcd_print
;!     _clcd_putch
;!     _clcd_write
;!     _compare
;!     _copy
;!       ___wmul
;!       _read_external_eeprom
;!   _read_adc
;!   _read_switches
;!     _scan_key
;!   _set_time
;!     ___lwdiv
;!     ___lwmod
;!     _clcd_print
;!     _clcd_putch
;!   _view_log
;!     _clcd_print
;!     _clcd_putch
;!   _view_save
;!     ___lwdiv
;!     ___lwmod
;!     _write_external_eeprom
;!   _write_ds1307
;!
;! _isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             5FF      0       0      27        0.0%
;!BITBIGSFRlll       281      0       0      25        0.0%
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
;!BANK1              100      0      82       7       50.8%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0      53       5       51.9%
;!BITCOMRAM           5E      0       0       0        0.0%
;!COMRAM              5E     3B      5A       1       95.7%
;!BITBIGSFRhhhhhl     19      0       0      17        0.0%
;!BITBIGSFRlhhhhh     10      0       0      19        0.0%
;!BITBIGSFRllh         F      0       0      24        0.0%
;!BITBIGSFRhhhhhh      D      0       0      16        0.0%
;!BITBIGSFRhhhhhl      B      0       0      18        0.0%
;!BITBIGSFRlhl         7      0       0      23        0.0%
;!BITBIGSFRlhhhll      4      0       0      21        0.0%
;!BITBIGSFRlhhl        2      0       0      22        0.0%
;!BITBIGSFRlhhhhl      1      0       0      20        0.0%
;!BIGSFR               0      0       0     200        0.0%
;!BITSFR_3             0      0       0     200        0.0%
;!SFR_3                0      0       0     200        0.0%
;!BITSFR_2             0      0       0     200        0.0%
;!SFR_2                0      0       0     200        0.0%
;!BITSFR_1             0      0       0     200        0.0%
;!SFR_1                0      0       0     200        0.0%
;!BITSFR               0      0       0     200        0.0%
;!SFR                  0      0       0     200        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     12F      26        0.0%
;!DATA                 0      0     12F       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 204 in file "newmain.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  w               4   46[COMRAM] unsigned long 
;;  j               4    0        unsigned long 
;;  se              2   55[COMRAM] unsigned int 
;;  mi              2   52[COMRAM] unsigned int 
;;  hr              2   50[COMRAM] unsigned int 
;;  i               1   58[COMRAM] unsigned char 
;;  key             1   57[COMRAM] unsigned char 
;;  f               1   54[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:        13       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0
;;      Totals:        18       0       0       0       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels required when called: 7
;; This function calls:
;;		___ftdiv
;;		___fttol
;;		___lwdiv
;;		___lwmod
;;		___lwtoft
;;		_change_password
;;		_clcd_print
;;		_clcd_write
;;		_clear
;;		_dashboard
;;		_download
;;		_get
;;		_get_time
;;		_init_config
;;		_main_menu
;;		_password_screen
;;		_read_adc
;;		_read_switches
;;		_set_time
;;		_view_log
;;		_view_save
;;		_write_ds1307
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"newmain.c"
	line	204
global __ptext0
__ptext0:
psect	text0
	file	"newmain.c"
	line	204
	
_main:
;incstack = 0
	callstack 24
	line	206
	
l4081:
;newmain.c: 206: init_config();
	call	_init_config	;wreg free
	line	207
	
l4083:
;newmain.c: 207: unsigned char i = 0, f = 3;
	movlw	low(0)
	movwf	((c:main@i))^00h,c
	
l4085:
	movlw	low(03h)
	movwf	((c:main@f))^00h,c
	line	210
	
l4087:
	line	212
	
l4089:
;newmain.c: 212: get();
	call	_get	;wreg free
	line	214
;newmain.c: 214: while (1) {
	
l542:
	line	216
;newmain.c: 216: if (changemenu != 6) {
		movlw	6
	xorwf	((c:_changemenu))^00h,c,w
	btfsc	status,2
	goto	u3201
	goto	u3200

u3201:
	goto	l4099
u3200:
	line	217
	
l4091:
;newmain.c: 217: get_time();
	call	_get_time	;wreg free
	line	218
	
l4093:; BSR set to: 0

;newmain.c: 218: hr = ((timer[0] - '0')*10)+(timer[1] - '0');
	movf	((_timer))&0ffh,w
	mullw	0Ah
	movff	prodl,??_main+0+0
	movff	prodh,??_main+0+0+1
	movf	(0+(_timer+01h))&0ffh,w
	addwf	(??_main+0+0)^00h,c
	movlw	0
	addwfc	(??_main+0+1)^00h,c
	movlw	low(0FDF0h)
	addwf	(??_main+0+0)^00h,c,w
	movwf	((c:main@hr))^00h,c
	movlw	high(0FDF0h)
	addwfc	(??_main+0+1)^00h,c,w
	movwf	1+((c:main@hr))^00h,c
	line	219
	
l4095:; BSR set to: 0

;newmain.c: 219: mi = ((timer[3] - '0')*10)+(timer[4] - '0');
	movf	(0+(_timer+03h))&0ffh,w
	mullw	0Ah
	movff	prodl,??_main+0+0
	movff	prodh,??_main+0+0+1
	movf	(0+(_timer+04h))&0ffh,w
	addwf	(??_main+0+0)^00h,c
	movlw	0
	addwfc	(??_main+0+1)^00h,c
	movlw	low(0FDF0h)
	addwf	(??_main+0+0)^00h,c,w
	movwf	((c:main@mi))^00h,c
	movlw	high(0FDF0h)
	addwfc	(??_main+0+1)^00h,c,w
	movwf	1+((c:main@mi))^00h,c
	line	220
	
l4097:; BSR set to: 0

;newmain.c: 220: se = ((timer[6] - '0')*10)+(timer[7] - '0');
	movf	(0+(_timer+06h))&0ffh,w
	mullw	0Ah
	movff	prodl,??_main+0+0
	movff	prodh,??_main+0+0+1
	movf	(0+(_timer+07h))&0ffh,w
	addwf	(??_main+0+0)^00h,c
	movlw	0
	addwfc	(??_main+0+1)^00h,c
	movlw	low(0FDF0h)
	addwf	(??_main+0+0)^00h,c,w
	movwf	((c:main@se))^00h,c
	movlw	high(0FDF0h)
	addwfc	(??_main+0+1)^00h,c,w
	movwf	1+((c:main@se))^00h,c
	line	224
	
l4099:
;newmain.c: 221: };newmain.c: 224: if (changemenu == 1) {
		decf	((c:_changemenu))^00h,c,w
	btfss	status,2
	goto	u3211
	goto	u3210

u3211:
	goto	l4103
u3210:
	line	225
	
l4101:
;newmain.c: 225: dashboard(i);
	movf	((c:main@i))^00h,c,w
	
	call	_dashboard
	line	226
;newmain.c: 226: } else if (changemenu == 0) {
	goto	l4131
	
l4103:
	movf	((c:_changemenu))^00h,c,w
	btfss	status,2
	goto	u3221
	goto	u3220
u3221:
	goto	l4107
u3220:
	line	227
	
l4105:
;newmain.c: 227: password_screen(key);
	movf	((c:main@key))^00h,c,w
	
	call	_password_screen
	line	228
;newmain.c: 228: } else if (changemenu == 2) {
	goto	l4131
	
l4107:
		movlw	2
	xorwf	((c:_changemenu))^00h,c,w
	btfss	status,2
	goto	u3231
	goto	u3230

u3231:
	goto	l4111
u3230:
	line	229
	
l4109:
;newmain.c: 229: main_menu();
	call	_main_menu	;wreg free
	line	230
;newmain.c: 230: } else if (changemenu == 3) {
	goto	l4131
	
l4111:
		movlw	3
	xorwf	((c:_changemenu))^00h,c,w
	btfss	status,2
	goto	u3241
	goto	u3240

u3241:
	goto	l4115
u3240:
	line	231
	
l4113:
;newmain.c: 231: view_log();
	call	_view_log	;wreg free
	line	232
;newmain.c: 232: } else if (changemenu == 4) {
	goto	l4131
	
l4115:
		movlw	4
	xorwf	((c:_changemenu))^00h,c,w
	btfss	status,2
	goto	u3251
	goto	u3250

u3251:
	goto	l4119
u3250:
	line	233
	
l4117:
;newmain.c: 233: clear();
	call	_clear	;wreg free
	line	234
;newmain.c: 234: } else if (changemenu == 5) {
	goto	l4131
	
l4119:
		movlw	5
	xorwf	((c:_changemenu))^00h,c,w
	btfss	status,2
	goto	u3261
	goto	u3260

u3261:
	goto	l4123
u3260:
	line	235
	
l4121:
;newmain.c: 235: download();
	call	_download	;wreg free
	line	236
;newmain.c: 236: } else if (changemenu == 6) {
	goto	l4131
	
l4123:
		movlw	6
	xorwf	((c:_changemenu))^00h,c,w
	btfss	status,2
	goto	u3271
	goto	u3270

u3271:
	goto	l4127
u3270:
	line	237
	
l4125:
;newmain.c: 237: set_time(f, hr, mi, se);
	movff	(c:main@hr),(c:set_time@h)
	movff	(c:main@hr+1),(c:set_time@h+1)
	movff	(c:main@mi),(c:set_time@m)
	movff	(c:main@mi+1),(c:set_time@m+1)
	movff	(c:main@se),(c:set_time@s)
	movff	(c:main@se+1),(c:set_time@s+1)
	movf	((c:main@f))^00h,c,w
	
	call	_set_time
	line	238
;newmain.c: 238: } else if (changemenu == 7) {
	goto	l4131
	
l4127:
		movlw	7
	xorwf	((c:_changemenu))^00h,c,w
	btfss	status,2
	goto	u3281
	goto	u3280

u3281:
	goto	l553
u3280:
	line	239
	
l4129:
;newmain.c: 239: change_password(key);
	movf	((c:main@key))^00h,c,w
	
	call	_change_password
	goto	l4131
	line	242
	
l553:
	
l4131:
;newmain.c: 240: };newmain.c: 242: speed = read_adc(0x04);
	movlw	(04h)&0ffh
	
	call	_read_adc
	movff	0+?_read_adc,(c:_speed)
	movff	1+?_read_adc,(c:_speed+1)
	line	243
	
l4133:
;newmain.c: 243: if (speed > 0) {
	movf	((c:_speed))^00h,c,w
iorwf	((c:_speed+1))^00h,c,w
	btfsc	status,2
	goto	u3291
	goto	u3290

u3291:
	goto	l4137
u3290:
	line	244
	
l4135:
;newmain.c: 244: speed = ((speed - 1) / 10.23);
	movlw	low(float24(10.230000000000000))
	movwf	((c:___ftdiv@f2))^00h,c
	movlw	high(float24(10.230000000000000))
	movwf	((c:___ftdiv@f2+1))^00h,c
	movlw	low highword(float24(10.230000000000000))
	movwf	((c:___ftdiv@f2+2))^00h,c

	movlw	low(0FFFFh)
	addwf	((c:_speed))^00h,c,w
	movwf	((c:___lwtoft@c))^00h,c
	movlw	high(0FFFFh)
	addwfc	((c:_speed+1))^00h,c,w
	movwf	1+((c:___lwtoft@c))^00h,c
	call	___lwtoft	;wreg free
	movff	0+?___lwtoft,(c:___ftdiv@f1)
	movff	1+?___lwtoft,(c:___ftdiv@f1+1)
	movff	2+?___lwtoft,(c:___ftdiv@f1+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:___fttol@f1)
	movff	1+?___ftdiv,(c:___fttol@f1+1)
	movff	2+?___ftdiv,(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(c:_speed)
	movff	1+?___fttol,(c:_speed+1)
	line	247
	
l4137:
;newmain.c: 245: };newmain.c: 247: if (changemenu >= 2 && changemenu <= 6) {
		movlw	02h-1
	cpfsgt	((c:_changemenu))^00h,c
	goto	u3301
	goto	u3300

u3301:
	goto	l4263
u3300:
	
l4139:
		movlw	07h-0
	cpfslt	((c:_changemenu))^00h,c
	goto	u3311
	goto	u3310

u3311:
	goto	l4263
u3310:
	line	248
	
l4141:
;newmain.c: 248: key = read_switches(0);
	movlw	(0)&0ffh
	
	call	_read_switches
	movwf	((c:main@key))^00h,c
	line	249
	
l4143:
;newmain.c: 249: if (key == 11) {
		movlw	11
	xorwf	((c:main@key))^00h,c,w
	btfss	status,2
	goto	u3321
	goto	u3320

u3321:
	goto	l4147
u3320:
	line	250
	
l4145:
;newmain.c: 250: shortpress++;
	infsnz	((c:_shortpress))^00h,c
	incf	((c:_shortpress+1))^00h,c
	line	251
;newmain.c: 251: } else if (shortpress != 0) {
	goto	l4223
	
l4147:
	movf	((c:_shortpress))^00h,c,w
iorwf	((c:_shortpress+1))^00h,c,w
	btfsc	status,2
	goto	u3331
	goto	u3330

u3331:
	goto	l4223
u3330:
	line	252
	
l4149:
;newmain.c: 252: if (shortpress > 10 && shortpress < 200) {
		movf	((c:_shortpress+1))^00h,c,w
	bnz	u3340
	movlw	11
	subwf	 ((c:_shortpress))^00h,c,w
	btfss	status,0
	goto	u3341
	goto	u3340

u3341:
	goto	l4193
u3340:
	
l4151:
		movf	((c:_shortpress+1))^00h,c,w
	bnz	u3351
	movlw	200
	subwf	 ((c:_shortpress))^00h,c,w
	btfsc	status,0
	goto	u3351
	goto	u3350

u3351:
	goto	l4193
u3350:
	line	253
	
l4153:
;newmain.c: 253: if (changemenu == 2) {
		movlw	2
	xorwf	((c:_changemenu))^00h,c,w
	btfss	status,2
	goto	u3361
	goto	u3360

u3361:
	goto	l4161
u3360:
	line	254
	
l4155:
;newmain.c: 254: if (op > 0) {
	movf	((c:_op))^00h,c,w
	btfsc	status,2
	goto	u3371
	goto	u3370
u3371:
	goto	l580
u3370:
	line	255
	
l4157:
;newmain.c: 255: op--;
	decf	((c:_op))^00h,c
	line	256
	
l4159:
;newmain.c: 256: up = 1;
	movlw	low(01h)
	movwf	((c:_up))^00h,c
	goto	l580
	line	258
	
l4161:
		movlw	3
	xorwf	((c:_changemenu))^00h,c,w
	btfss	status,2
	goto	u3381
	goto	u3380

u3381:
	goto	l4167
u3380:
	line	259
	
l4163:
;newmain.c: 259: if (opv > 0) {
	movf	((c:_opv))^00h,c,w
	btfsc	status,2
	goto	u3391
	goto	u3390
u3391:
	goto	l580
u3390:
	line	260
	
l4165:
;newmain.c: 260: opv--;
	decf	((c:_opv))^00h,c
	goto	l580
	line	261
	
l569:
	line	262
;newmain.c: 261: };newmain.c: 262: } else if (changemenu == 6) {
	goto	l580
	
l4167:
		movlw	6
	xorwf	((c:_changemenu))^00h,c,w
	btfss	status,2
	goto	u3401
	goto	u3400

u3401:
	goto	l580
u3400:
	line	263
	
l4169:
;newmain.c: 263: if (f == 1) {
		decf	((c:main@f))^00h,c,w
	btfss	status,2
	goto	u3411
	goto	u3410

u3411:
	goto	l4177
u3410:
	line	264
	
l4171:
;newmain.c: 264: hr++;
	infsnz	((c:main@hr))^00h,c
	incf	((c:main@hr+1))^00h,c
	line	265
	
l4173:
;newmain.c: 265: if (hr == 13) {
		movlw	13
	xorwf	((c:main@hr))^00h,c,w
iorwf	((c:main@hr+1))^00h,c,w
	btfss	status,2
	goto	u3421
	goto	u3420

u3421:
	goto	l580
u3420:
	line	266
	
l4175:
;newmain.c: 266: hr = 1;
	movlw	high(01h)
	movwf	((c:main@hr+1))^00h,c
	movlw	low(01h)
	movwf	((c:main@hr))^00h,c
	goto	l580
	line	268
	
l4177:
		movlw	2
	xorwf	((c:main@f))^00h,c,w
	btfss	status,2
	goto	u3431
	goto	u3430

u3431:
	goto	l4185
u3430:
	line	269
	
l4179:
;newmain.c: 269: mi++;
	infsnz	((c:main@mi))^00h,c
	incf	((c:main@mi+1))^00h,c
	line	270
	
l4181:
;newmain.c: 270: if (mi == 60) {
		movlw	60
	xorwf	((c:main@mi))^00h,c,w
iorwf	((c:main@mi+1))^00h,c,w
	btfss	status,2
	goto	u3441
	goto	u3440

u3441:
	goto	l580
u3440:
	line	271
	
l4183:
;newmain.c: 271: mi = 0;
	movlw	high(0)
	movwf	((c:main@mi+1))^00h,c
	movlw	low(0)
	movwf	((c:main@mi))^00h,c
	goto	l580
	line	273
	
l4185:
		movlw	3
	xorwf	((c:main@f))^00h,c,w
	btfss	status,2
	goto	u3451
	goto	u3450

u3451:
	goto	l569
u3450:
	line	274
	
l4187:
;newmain.c: 274: se++;
	infsnz	((c:main@se))^00h,c
	incf	((c:main@se+1))^00h,c
	line	275
	
l4189:
;newmain.c: 275: if (se == 60) {
		movlw	60
	xorwf	((c:main@se))^00h,c,w
iorwf	((c:main@se+1))^00h,c,w
	btfss	status,2
	goto	u3461
	goto	u3460

u3461:
	goto	l580
u3460:
	line	276
	
l4191:
;newmain.c: 276: se = 0;
	movlw	high(0)
	movwf	((c:main@se+1))^00h,c
	movlw	low(0)
	movwf	((c:main@se))^00h,c
	goto	l580
	line	281
	
l4193:
		movf	((c:_shortpress+1))^00h,c,w
	bnz	u3470
	movlw	201
	subwf	 ((c:_shortpress))^00h,c,w
	btfss	status,0
	goto	u3471
	goto	u3470

u3471:
	goto	l580
u3470:
	line	282
	
l4195:
;newmain.c: 282: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	283
	
l4197:
;newmain.c: 283: if (changemenu == 2) {
		movlw	2
	xorwf	((c:_changemenu))^00h,c,w
	btfss	status,2
	goto	u3481
	goto	u3480

u3481:
	goto	l4201
u3480:
	line	284
	
l4199:
;newmain.c: 284: changemenu = op + 3;
	movf	((c:_op))^00h,c,w
	addlw	low(03h)
	movwf	((c:_changemenu))^00h,c
	line	285
;newmain.c: 285: } else {
	goto	l580
	line	286
	
l4201:
;newmain.c: 286: if (changemenu == 6) {
		movlw	6
	xorwf	((c:_changemenu))^00h,c,w
	btfss	status,2
	goto	u3491
	goto	u3490

u3491:
	goto	l4221
u3490:
	line	287
	
l4203:
;newmain.c: 287: write_ds1307(0x00, 0x80);
	movlw	low(080h)
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(0)&0ffh
	
	call	_write_ds1307
	line	288
	
l4205:
;newmain.c: 288: write_ds1307(0x00, ((se / 10) << 4) | ((se % 10)&0x0f));
	movff	(c:main@se),(c:___lwmod@dividend)
	movff	(c:main@se+1),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movff	0+?___lwmod,??_main+0+0
	movff	1+?___lwmod,??_main+0+0+1
	movlw	0Fh
	andwf	(??_main+0+0)^00h,c
	movff	(c:main@se),(c:___lwdiv@dividend)
	movff	(c:main@se+1),(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	swapf	(0+?___lwdiv)^00h,c,w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	(??_main+0+0)^00h,c,w
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(0)&0ffh
	
	call	_write_ds1307
	line	289
	
l4207:
;newmain.c: 289: write_ds1307(0x01, ((mi / 10) << 4) | ((mi % 10)&0x0f));
	movff	(c:main@mi),(c:___lwmod@dividend)
	movff	(c:main@mi+1),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movff	0+?___lwmod,??_main+0+0
	movff	1+?___lwmod,??_main+0+0+1
	movlw	0Fh
	andwf	(??_main+0+0)^00h,c
	movff	(c:main@mi),(c:___lwdiv@dividend)
	movff	(c:main@mi+1),(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	swapf	(0+?___lwdiv)^00h,c,w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	(??_main+0+0)^00h,c,w
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(01h)&0ffh
	
	call	_write_ds1307
	line	290
	
l4209:
;newmain.c: 290: write_ds1307(0x02, ((hr / 10) << 4) | ((hr % 10)&0x0f));
	movff	(c:main@hr),(c:___lwmod@dividend)
	movff	(c:main@hr+1),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movff	0+?___lwmod,??_main+0+0
	movff	1+?___lwmod,??_main+0+0+1
	movlw	0Fh
	andwf	(??_main+0+0)^00h,c
	movff	(c:main@hr),(c:___lwdiv@dividend)
	movff	(c:main@hr+1),(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	swapf	(0+?___lwdiv)^00h,c,w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	(??_main+0+0)^00h,c,w
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(02h)&0ffh
	
	call	_write_ds1307
	line	291
	
l4211:
;newmain.c: 291: write_ds1307(0x00, ((((se / 10) << 4) | ((se % 10)&0x0f))& 0x7f));
	movff	(c:main@se),(c:___lwmod@dividend)
	movff	(c:main@se+1),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movff	0+?___lwmod,??_main+0+0
	movff	1+?___lwmod,??_main+0+0+1
	movlw	0Fh
	andwf	(??_main+0+0)^00h,c
	movff	(c:main@se),(c:___lwdiv@dividend)
	movff	(c:main@se+1),(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	swapf	(0+?___lwdiv)^00h,c,w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	(??_main+0+0)^00h,c,w
	andlw	low(07Fh)
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(0)&0ffh
	
	call	_write_ds1307
	line	292
;newmain.c: 292: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	293
	
l4213:
;newmain.c: 293: clcd_print("Time set", (0x80 + (0)));
		movlw	low(STR_17)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_17)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	294
	
l4215:
;newmain.c: 294: clcd_print("Successfully", (0xC0 + (2)));
		movlw	low(STR_18)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_18)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C2h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	295
	
l4217:
;newmain.c: 295: for (unsigned long int w = 500000; w--;);
	movlw	low(07A120h)
	movwf	((c:main@w))^00h,c
	movlw	high(07A120h)
	movwf	((c:main@w+1))^00h,c
	movlw	low highword(07A120h)
	movwf	((c:main@w+2))^00h,c
	movlw	high highword(07A120h)
	movwf	((c:main@w+3))^00h,c
	
l4219:
	decf	((c:main@w))^00h,c
	movlw	0
	subwfb	((c:main@w+1))^00h,c
	subwfb	((c:main@w+2))^00h,c
	subwfb	((c:main@w+3))^00h,c
		incf	((c:main@w))^00h,c,w
	bnz	u3501
	incf	((c:main@w+1))^00h,c,w
	bnz	u3501
	incf	((c:main@w+2))^00h,c,w
	bnz	u3501
	incf	((c:main@w+3))^00h,c,w
	btfss	status,2
	goto	u3501
	goto	u3500

u3501:
	goto	l4219
u3500:
	line	298
	
l4221:
;newmain.c: 297: };newmain.c: 298: changemenu = 2;
	movlw	low(02h)
	movwf	((c:_changemenu))^00h,c
	line	299
;newmain.c: 299: adr = 0;
	movlw	low(0)
	movwf	((c:_adr))^00h,c
	line	300
;newmain.c: 300: opv = 0;
	movlw	low(0)
	movwf	((c:_opv))^00h,c
	line	305
	
l580:
;newmain.c: 302: };newmain.c: 304: };newmain.c: 305: shortpress = 0;
	movlw	high(0)
	movwf	((c:_shortpress+1))^00h,c
	movlw	low(0)
	movwf	((c:_shortpress))^00h,c
	line	307
	
l4223:
;newmain.c: 306: };newmain.c: 307: if (key == 12) {
		movlw	12
	xorwf	((c:main@key))^00h,c,w
	btfss	status,2
	goto	u3511
	goto	u3510

u3511:
	goto	l4229
u3510:
	line	308
	
l4225:
;newmain.c: 308: up = 0;
	movlw	low(0)
	movwf	((c:_up))^00h,c
	line	309
	
l4227:
;newmain.c: 309: shortpess1++;
	infsnz	((c:_shortpess1))^00h,c
	incf	((c:_shortpess1+1))^00h,c
	line	311
;newmain.c: 311: } else if (shortpess1 != 0) {
	goto	l542
	
l4229:
	movf	((c:_shortpess1))^00h,c,w
iorwf	((c:_shortpess1+1))^00h,c,w
	btfsc	status,2
	goto	u3521
	goto	u3520

u3521:
	goto	l602
u3520:
	line	312
	
l4231:
;newmain.c: 312: if (shortpess1 > 10 && shortpess1 < 200) {
		movf	((c:_shortpess1+1))^00h,c,w
	bnz	u3530
	movlw	11
	subwf	 ((c:_shortpess1))^00h,c,w
	btfss	status,0
	goto	u3531
	goto	u3530

u3531:
	goto	l4255
u3530:
	
l4233:
		movf	((c:_shortpess1+1))^00h,c,w
	bnz	u3541
	movlw	200
	subwf	 ((c:_shortpess1))^00h,c,w
	btfsc	status,0
	goto	u3541
	goto	u3540

u3541:
	goto	l4255
u3540:
	line	313
	
l4235:
;newmain.c: 313: if (changemenu == 2) {
		movlw	2
	xorwf	((c:_changemenu))^00h,c,w
	btfss	status,2
	goto	u3551
	goto	u3550

u3551:
	goto	l4241
u3550:
	line	314
	
l4237:
;newmain.c: 314: if (op < 4) {
		movlw	04h-0
	cpfslt	((c:_op))^00h,c
	goto	u3561
	goto	u3560

u3561:
	goto	l4261
u3560:
	line	315
	
l4239:
;newmain.c: 315: op++;
	incf	((c:_op))^00h,c
	goto	l4261
	line	317
	
l4241:
		movlw	3
	xorwf	((c:_changemenu))^00h,c,w
	btfss	status,2
	goto	u3571
	goto	u3570

u3571:
	goto	l4247
u3570:
	line	318
	
l4243:
;newmain.c: 318: if (opv < total - 1) {
	movlw	low(-1)
	addwf	((c:_total))^00h,c,w
	movwf	(??_main+0+0)^00h,c
	clrf	1+(??_main+0+0)^00h,c
	movlw	high(-1)
	addwfc	1+(??_main+0+0)^00h,c
	movf	((c:_opv))^00h,c,w
	movwf	(??_main+2+0)^00h,c
	clrf	(??_main+2+0+1)^00h,c

		movf	(??_main+0+0)^00h,c,w
	subwf	(??_main+2+0)^00h,c,w
	movf	(??_main+2+1)^00h,c,w
	xorlw	80h
	movwf	(??_main+4+0)^00h,c
	movf	(??_main+0+1)^00h,c,w
	xorlw	80h
	subwfb	(??_main+4+0)^00h,c,w
	btfsc	status,0
	goto	u3581
	goto	u3580

u3581:
	goto	l4261
u3580:
	line	319
	
l4245:
;newmain.c: 319: opv++;
	incf	((c:_opv))^00h,c
	goto	l4261
	line	321
	
l4247:
		movlw	6
	xorwf	((c:_changemenu))^00h,c,w
	btfss	status,2
	goto	u3591
	goto	u3590

u3591:
	goto	l594
u3590:
	line	322
	
l4249:
;newmain.c: 322: f--;
	decf	((c:main@f))^00h,c
	line	323
	
l4251:
;newmain.c: 323: if (f == 0) {
	movf	((c:main@f))^00h,c,w
	btfss	status,2
	goto	u3601
	goto	u3600
u3601:
	goto	l4261
u3600:
	line	324
	
l4253:
;newmain.c: 324: f = 3;
	movlw	low(03h)
	movwf	((c:main@f))^00h,c
	goto	l4261
	line	328
	
l594:
;newmain.c: 325: };newmain.c: 326: };newmain.c: 328: } else if (shortpess1 > 200) {
	goto	l4261
	
l4255:
		movf	((c:_shortpess1+1))^00h,c,w
	bnz	u3610
	movlw	201
	subwf	 ((c:_shortpess1))^00h,c,w
	btfss	status,0
	goto	u3611
	goto	u3610

u3611:
	goto	l4261
u3610:
	line	329
	
l4257:
;newmain.c: 329: changemenu = 2;
	movlw	low(02h)
	movwf	((c:_changemenu))^00h,c
	line	330
;newmain.c: 330: adr = 0;
	movlw	low(0)
	movwf	((c:_adr))^00h,c
	line	331
;newmain.c: 331: opv = 0;
	movlw	low(0)
	movwf	((c:_opv))^00h,c
	line	332
	
l4259:
;newmain.c: 332: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	334
	
l4261:
;newmain.c: 333: };newmain.c: 334: shortpess1 = 0;
	movlw	high(0)
	movwf	((c:_shortpess1+1))^00h,c
	movlw	low(0)
	movwf	((c:_shortpess1))^00h,c
	goto	l542
	line	338
	
l4263:
;newmain.c: 338: key = read_switches(1);
	movlw	(01h)&0ffh
	
	call	_read_switches
	movwf	((c:main@key))^00h,c
	line	340
	
l4265:
;newmain.c: 340: if (key == 1) {
		decf	((c:main@key))^00h,c,w
	btfss	status,2
	goto	u3621
	goto	u3620

u3621:
	goto	l4271
u3620:
	line	341
	
l4267:
;newmain.c: 341: i = 7;
	movlw	low(07h)
	movwf	((c:main@i))^00h,c
	line	342
	
l4269:
;newmain.c: 342: view_save(i);
	movlw	(07h)&0ffh
	
	call	_view_save
	line	343
;newmain.c: 343: } else if (key == 2) {
	goto	l4295
	
l4271:
		movlw	2
	xorwf	((c:main@key))^00h,c,w
	btfss	status,2
	goto	u3631
	goto	u3630

u3631:
	goto	l4283
u3630:
	line	344
	
l4273:
;newmain.c: 344: if (i < 6) {
		movlw	06h-0
	cpfslt	((c:main@i))^00h,c
	goto	u3641
	goto	u3640

u3641:
	goto	l4277
u3640:
	line	345
	
l4275:
;newmain.c: 345: i++;
	incf	((c:main@i))^00h,c
	line	346
;newmain.c: 346: } else if (i == 7) {
	goto	l4281
	
l4277:
		movlw	7
	xorwf	((c:main@i))^00h,c,w
	btfss	status,2
	goto	u3651
	goto	u3650

u3651:
	goto	l4281
u3650:
	line	347
	
l4279:
;newmain.c: 347: i = 1;
	movlw	low(01h)
	movwf	((c:main@i))^00h,c
	line	349
	
l4281:
;newmain.c: 348: };newmain.c: 349: view_save(i);
	movf	((c:main@i))^00h,c,w
	
	call	_view_save
	line	350
;newmain.c: 350: } else if (key == 3) {
	goto	l4295
	
l4283:
		movlw	3
	xorwf	((c:main@key))^00h,c,w
	btfss	status,2
	goto	u3661
	goto	u3660

u3661:
	goto	l4295
u3660:
	line	351
	
l4285:
;newmain.c: 351: if (i == 7) {
		movlw	7
	xorwf	((c:main@i))^00h,c,w
	btfss	status,2
	goto	u3671
	goto	u3670

u3671:
	goto	l4289
u3670:
	line	352
	
l4287:
;newmain.c: 352: i = 1;
	movlw	low(01h)
	movwf	((c:main@i))^00h,c
	line	353
;newmain.c: 353: } else if (i > 1) {
	goto	l4293
	
l4289:
		movlw	02h-1
	cpfsgt	((c:main@i))^00h,c
	goto	u3681
	goto	u3680

u3681:
	goto	l4293
u3680:
	line	354
	
l4291:
;newmain.c: 354: i--;
	decf	((c:main@i))^00h,c
	line	356
	
l4293:
;newmain.c: 355: };newmain.c: 356: view_save(i);
	movf	((c:main@i))^00h,c,w
	
	call	_view_save
	line	358
	
l4295:
;newmain.c: 357: };newmain.c: 358: if (key == 11 && changemenu == 1) {
		movlw	11
	xorwf	((c:main@key))^00h,c,w
	btfss	status,2
	goto	u3691
	goto	u3690

u3691:
	goto	l542
u3690:
	
l4297:
		decf	((c:_changemenu))^00h,c,w
	btfss	status,2
	goto	u3701
	goto	u3700

u3701:
	goto	l542
u3700:
	line	359
	
l4299:
;newmain.c: 359: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	360
	
l4301:
;newmain.c: 360: changemenu = 0;
	movlw	low(0)
	movwf	((c:_changemenu))^00h,c
	line	361
	
l4303:
;newmain.c: 361: count = 0;
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_count+1))&0ffh
	movlw	low(0)
	movwf	((_count))&0ffh
	line	362
	
l4305:; BSR set to: 0

;newmain.c: 362: wrong_sec = 0;
	movlw	high(0)
	movwf	((_wrong_sec+1))&0ffh
	movlw	low(0)
	movwf	((_wrong_sec))&0ffh
	line	363
	
l4307:; BSR set to: 0

;newmain.c: 363: key = 0;
	movlw	low(0)
	movwf	((c:main@key))^00h,c
	goto	l542
	line	367
	
l602:
	goto	l542
	global	start
	goto	start
	callstack 0
	line	369
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_view_save

;; *************** function _view_save *****************
;; Defined at:
;;		line 21 in file "newmain.c"
;; Parameters:    Size  Location     Type
;;  i               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  i               1   18[COMRAM] unsigned char 
;;  j               2   23[COMRAM] int 
;;  j               2   21[COMRAM] int 
;;  j               2   19[COMRAM] int 
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
;;      Locals:         7       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		_write_external_eeprom
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=0
	line	21
global __ptext1
__ptext1:
psect	text1
	file	"newmain.c"
	line	21
	
_view_save:
;incstack = 0
	callstack 26
;view_save@i stored from wreg
	movwf	((c:view_save@i))^00h,c
	line	23
	
l3449:
;newmain.c: 23: if (rotation == 10) {
		movlw	10
	xorwf	((c:_rotation))^00h,c,w
	btfss	status,2
	goto	u2361
	goto	u2360

u2361:
	goto	l3453
u2360:
	line	24
	
l3451:
;newmain.c: 24: rotation = 0;
	movlw	low(0)
	movwf	((c:_rotation))^00h,c
	line	25
;newmain.c: 25: adr1 = 0;
	movlw	low(0)
	movwf	((c:_adr1))^00h,c
	line	26
;newmain.c: 26: adr = 0;
	movlw	low(0)
	movwf	((c:_adr))^00h,c
	line	28
	
l3453:
;newmain.c: 27: };newmain.c: 28: if (total < 10) {
		movlw	0Ah-0
	cpfslt	((c:_total))^00h,c
	goto	u2371
	goto	u2370

u2371:
	goto	l3457
u2370:
	line	29
	
l3455:
;newmain.c: 29: total++;
	incf	((c:_total))^00h,c
	line	32
	
l3457:
;newmain.c: 30: };newmain.c: 32: for (int j = 0; j < 2; j++) {
	movlw	high(0)
	movwf	((c:view_save@j+1))^00h,c
	movlw	low(0)
	movwf	((c:view_save@j))^00h,c
	line	33
	
l3463:
;newmain.c: 33: write_external_eeprom(adr1, timer[j]);
	movf	((c:view_save@j))^00h,c,w
	addlw	low(_timer)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:write_external_eeprom@data))^00h,c
	movf	((c:_adr1))^00h,c,w
	
	call	_write_external_eeprom
	line	34
	
l3465:
;newmain.c: 34: adr1++;
	incf	((c:_adr1))^00h,c
	line	32
	
l3467:
	infsnz	((c:view_save@j))^00h,c
	incf	((c:view_save@j+1))^00h,c
	
l3469:
	btfsc	((c:view_save@j+1))^00h,c,7
	goto	u2381
	movf	((c:view_save@j+1))^00h,c,w
	bnz	u2380
	movlw	2
	subwf	 ((c:view_save@j))^00h,c,w
	btfss	status,0
	goto	u2381
	goto	u2380

u2381:
	goto	l3463
u2380:
	line	37
	
l3471:
;newmain.c: 35: };newmain.c: 37: for (int j = 3; j < 5; j++) {
	movlw	high(03h)
	movwf	((c:view_save@j_464+1))^00h,c
	movlw	low(03h)
	movwf	((c:view_save@j_464))^00h,c
	line	38
	
l3477:
;newmain.c: 38: write_external_eeprom(adr1, timer[j]);
	movf	((c:view_save@j_464))^00h,c,w
	addlw	low(_timer)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:write_external_eeprom@data))^00h,c
	movf	((c:_adr1))^00h,c,w
	
	call	_write_external_eeprom
	line	39
	
l3479:
;newmain.c: 39: adr1++;
	incf	((c:_adr1))^00h,c
	line	37
	
l3481:
	infsnz	((c:view_save@j_464))^00h,c
	incf	((c:view_save@j_464+1))^00h,c
	
l3483:
	btfsc	((c:view_save@j_464+1))^00h,c,7
	goto	u2391
	movf	((c:view_save@j_464+1))^00h,c,w
	bnz	u2390
	movlw	5
	subwf	 ((c:view_save@j_464))^00h,c,w
	btfss	status,0
	goto	u2391
	goto	u2390

u2391:
	goto	l3477
u2390:
	line	42
	
l3485:
;newmain.c: 40: };newmain.c: 42: for (int j = 6; j < 8; j++) {
	movlw	high(06h)
	movwf	((c:view_save@j_465+1))^00h,c
	movlw	low(06h)
	movwf	((c:view_save@j_465))^00h,c
	line	43
	
l3491:
;newmain.c: 43: write_external_eeprom(adr1, timer[j]);
	movf	((c:view_save@j_465))^00h,c,w
	addlw	low(_timer)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:write_external_eeprom@data))^00h,c
	movf	((c:_adr1))^00h,c,w
	
	call	_write_external_eeprom
	line	44
	
l3493:
;newmain.c: 44: adr1++;
	incf	((c:_adr1))^00h,c
	line	42
	
l3495:
	infsnz	((c:view_save@j_465))^00h,c
	incf	((c:view_save@j_465+1))^00h,c
	
l3497:
	btfsc	((c:view_save@j_465+1))^00h,c,7
	goto	u2401
	movf	((c:view_save@j_465+1))^00h,c,w
	bnz	u2400
	movlw	8
	subwf	 ((c:view_save@j_465))^00h,c,w
	btfss	status,0
	goto	u2401
	goto	u2400

u2401:
	goto	l3491
u2400:
	line	47
	
l3499:
;newmain.c: 45: };newmain.c: 47: write_external_eeprom(adr1, gear[i][0]);
	movf	((c:view_save@i))^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_gear)
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,tblptrl
	movff	postdec2,tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movff	tablat,(c:write_external_eeprom@data)
	movf	((c:_adr1))^00h,c,w
	
	call	_write_external_eeprom
	line	48
	
l3501:
;newmain.c: 48: adr1++;
	incf	((c:_adr1))^00h,c
	line	49
	
l3503:
;newmain.c: 49: write_external_eeprom(adr1, gear[i][1]);
	movf	((c:view_save@i))^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_gear)
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,??_view_save+0+0
	movff	postdec2,??_view_save+0+0+1
	movlw	01h
	addwf	(??_view_save+0+0)^00h,c
	movlw	0
	addwfc	(??_view_save+0+1)^00h,c
	movff	??_view_save+0+0,tblptrl
	movff	??_view_save+0+1,tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movff	tablat,(c:write_external_eeprom@data)
	movf	((c:_adr1))^00h,c,w
	
	call	_write_external_eeprom
	line	50
;newmain.c: 50: adr1++;
	incf	((c:_adr1))^00h,c
	line	51
	
l3505:
;newmain.c: 51: write_external_eeprom(adr1, (speed / 10));
	movff	(c:_speed),(c:___lwdiv@dividend)
	movff	(c:_speed+1),(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv)^00h,c,w
	movwf	((c:write_external_eeprom@data))^00h,c
	movf	((c:_adr1))^00h,c,w
	
	call	_write_external_eeprom
	line	52
	
l3507:
;newmain.c: 52: adr1++;
	incf	((c:_adr1))^00h,c
	line	53
;newmain.c: 53: write_external_eeprom(adr1, (speed % 10));
	movff	(c:_speed),(c:___lwmod@dividend)
	movff	(c:_speed+1),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
	movwf	((c:write_external_eeprom@data))^00h,c
	movf	((c:_adr1))^00h,c,w
	
	call	_write_external_eeprom
	line	54
	
l3509:
;newmain.c: 54: adr1++;
	incf	((c:_adr1))^00h,c
	line	56
	
l3511:
;newmain.c: 56: rotation++;
	incf	((c:_rotation))^00h,c
	line	58
	
l491:
	return	;funcret
	callstack 0
GLOBAL	__end_of_view_save
	__end_of_view_save:
	signat	_view_save,4217
	global	_view_log

;; *************** function _view_log *****************
;; Defined at:
;;		line 55 in file "Scrolling.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   16[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_clcd_print
;;		_clcd_putch
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=0
	file	"Scrolling.c"
	line	55
global __ptext2
__ptext2:
psect	text2
	file	"Scrolling.c"
	line	55
	
_view_log:
;incstack = 0
	callstack 27
	line	57
	
l3671:
;Scrolling.c: 57: clcd_print("VIEW LOG", (0x80 + (0)));
		movlw	low(STR_30)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_30)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	59
	
l3673:
;Scrolling.c: 59: if (total > 0) {
	movf	((c:_total))^00h,c,w
	btfsc	status,2
	goto	u2581
	goto	u2580
u2581:
	goto	l3689
u2580:
	line	60
	
l3675:
;Scrolling.c: 60: for (int i = 0; i <= 7; i++) {
	movlw	high(0)
	movwf	((c:view_log@i+1))^00h,c
	movlw	low(0)
	movwf	((c:view_log@i))^00h,c
	line	61
	
l3681:
;Scrolling.c: 61: clcd_putch(viewdisplay[opv][i], (0xC0 + (i)));
	movf	((c:view_log@i))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movf	((c:_opv))^00h,c,w
	mullw	0Dh
	movlw	low(_viewdisplay)
	addwf	(prodl)^0f00h,c,w
	movwf	(??_view_log+0+0)^00h,c
	movlw	high(_viewdisplay)
	addwfc	prod+1,w
	movwf	1+(??_view_log+0+0)^00h,c
	movf	((c:view_log@i))^00h,c,w
	addwf	(??_view_log+0+0)^00h,c,w
	movwf	c:fsr2l
	movf	((c:view_log@i+1))^00h,c,w
	addwfc	(??_view_log+0+1)^00h,c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	
	call	_clcd_putch
	line	60
	
l3683:
	infsnz	((c:view_log@i))^00h,c
	incf	((c:view_log@i+1))^00h,c
	
l3685:
	btfsc	((c:view_log@i+1))^00h,c,7
	goto	u2591
	movf	((c:view_log@i+1))^00h,c,w
	bnz	u2590
	movlw	8
	subwf	 ((c:view_log@i))^00h,c,w
	btfss	status,0
	goto	u2591
	goto	u2590

u2591:
	goto	l3681
u2590:
	line	63
	
l3687:
;Scrolling.c: 62: };Scrolling.c: 63: clcd_putch(viewdisplay[opv][8], (0xC0 + (10)));
	movlw	low(0CAh)
	movwf	((c:clcd_putch@addr))^00h,c
	movf	((c:_opv))^00h,c,w
	mullw	0Dh
	movlw	low(_viewdisplay+08h)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_viewdisplay+08h)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	
	call	_clcd_putch
	line	64
;Scrolling.c: 64: clcd_putch(viewdisplay[opv][9], (0xC0 + (11)));
	movlw	low(0CBh)
	movwf	((c:clcd_putch@addr))^00h,c
	movf	((c:_opv))^00h,c,w
	mullw	0Dh
	movlw	low(_viewdisplay+09h)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_viewdisplay+09h)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	
	call	_clcd_putch
	line	65
;Scrolling.c: 65: clcd_putch(viewdisplay[opv][10] + '0', (0xC0 + (13)));
	movlw	low(0CDh)
	movwf	((c:clcd_putch@addr))^00h,c
	movf	((c:_opv))^00h,c,w
	mullw	0Dh
	movlw	low(_viewdisplay+0Ah)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_viewdisplay+0Ah)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	66
;Scrolling.c: 66: clcd_putch(viewdisplay[opv][11] + '0', (0xC0 + (14)));
	movlw	low(0CEh)
	movwf	((c:clcd_putch@addr))^00h,c
	movf	((c:_opv))^00h,c,w
	mullw	0Dh
	movlw	low(_viewdisplay+0Bh)
	addwf	(prodl)^0f00h,c,w
	movwf	c:fsr2l
	movlw	high(_viewdisplay+0Bh)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	68
;Scrolling.c: 68: } else {
	goto	l707
	line	70
	
l3689:
;Scrolling.c: 70: clcd_print("NO LOG AVAIABLE", (0xC0 + (0)));
		movlw	low(STR_31)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_31)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	72
	
l707:
	return	;funcret
	callstack 0
GLOBAL	__end_of_view_log
	__end_of_view_log:
	signat	_view_log,89
	global	_set_time

;; *************** function _set_time *****************
;; Defined at:
;;		line 109 in file "Scrolling.c"
;; Parameters:    Size  Location     Type
;;  f               1    wreg     unsigned char 
;;  h               2   14[COMRAM] unsigned int 
;;  m               2   16[COMRAM] unsigned int 
;;  s               2   18[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  f               1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         6       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		_clcd_print
;;		_clcd_putch
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2,group=0
	line	109
global __ptext3
__ptext3:
psect	text3
	file	"Scrolling.c"
	line	109
	
_set_time:
;incstack = 0
	callstack 27
;set_time@f stored from wreg
	movwf	((c:set_time@f))^00h,c
	line	111
	
l3747:
;Scrolling.c: 111: clcd_print("SET_TIME", (0x80 + (0)));
		movlw	low(STR_38)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_38)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	112
	
l3749:
;Scrolling.c: 112: if (f == 1) {
		decf	((c:set_time@f))^00h,c,w
	btfss	status,2
	goto	u2651
	goto	u2650

u2651:
	goto	l3753
u2650:
	line	113
	
l3751:
;Scrolling.c: 113: clcd_putch((s / 10) + '0', (0xC0 + (8)));
	movlw	low(0C8h)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	(c:set_time@s),(c:___lwdiv@dividend)
	movff	(c:set_time@s+1),(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	114
;Scrolling.c: 114: clcd_putch((s % 10) + '0', (0xC0 + (9)));
	movlw	low(0C9h)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	(c:set_time@s),(c:___lwmod@dividend)
	movff	(c:set_time@s+1),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	115
;Scrolling.c: 115: clcd_putch((m / 10) + '0', (0xC0 + (5)));
	movlw	low(0C5h)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	(c:set_time@m),(c:___lwdiv@dividend)
	movff	(c:set_time@m+1),(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	116
;Scrolling.c: 116: clcd_putch((m % 10) + '0', (0xC0 + (6)));
	movlw	low(0C6h)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	(c:set_time@m),(c:___lwmod@dividend)
	movff	(c:set_time@m+1),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	117
;Scrolling.c: 117: } else if (f == 3) {
	goto	l3761
	
l3753:
		movlw	3
	xorwf	((c:set_time@f))^00h,c,w
	btfss	status,2
	goto	u2661
	goto	u2660

u2661:
	goto	l3757
u2660:
	line	118
	
l3755:
;Scrolling.c: 118: clcd_putch((m / 10) + '0', (0xC0 + (5)));
	movlw	low(0C5h)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	(c:set_time@m),(c:___lwdiv@dividend)
	movff	(c:set_time@m+1),(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	119
;Scrolling.c: 119: clcd_putch((m % 10) + '0', (0xC0 + (6)));
	movlw	low(0C6h)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	(c:set_time@m),(c:___lwmod@dividend)
	movff	(c:set_time@m+1),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	120
;Scrolling.c: 120: clcd_putch((h / 10) + '0', (0xC0 + (2)));
	movlw	low(0C2h)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	(c:set_time@h),(c:___lwdiv@dividend)
	movff	(c:set_time@h+1),(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	121
;Scrolling.c: 121: clcd_putch((h % 10) + '0', (0xC0 + (3)));
	movlw	low(0C3h)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	(c:set_time@h),(c:___lwmod@dividend)
	movff	(c:set_time@h+1),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	122
;Scrolling.c: 122: } else if (f == 2) {
	goto	l3761
	
l3757:
		movlw	2
	xorwf	((c:set_time@f))^00h,c,w
	btfss	status,2
	goto	u2671
	goto	u2670

u2671:
	goto	l3761
u2670:
	line	123
	
l3759:
;Scrolling.c: 123: clcd_putch((h / 10) + '0', (0xC0 + (2)));
	movlw	low(0C2h)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	(c:set_time@h),(c:___lwdiv@dividend)
	movff	(c:set_time@h+1),(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	124
;Scrolling.c: 124: clcd_putch((h % 10) + '0', (0xC0 + (3)));
	movlw	low(0C3h)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	(c:set_time@h),(c:___lwmod@dividend)
	movff	(c:set_time@h+1),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	125
;Scrolling.c: 125: clcd_putch((s / 10) + '0', (0xC0 + (8)));
	movlw	low(0C8h)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	(c:set_time@s),(c:___lwdiv@dividend)
	movff	(c:set_time@s+1),(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	126
;Scrolling.c: 126: clcd_putch((s % 10) + '0', (0xC0 + (9)));
	movlw	low(0C9h)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	(c:set_time@s),(c:___lwmod@dividend)
	movff	(c:set_time@s+1),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	128
	
l3761:
;Scrolling.c: 127: };Scrolling.c: 128: clcd_putch(':', (0xC0 + (4)));
	movlw	low(0C4h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(03Ah)&0ffh
	
	call	_clcd_putch
	line	129
	
l3763:
;Scrolling.c: 129: clcd_putch(':', (0xC0 + (7)));
	movlw	low(0C7h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(03Ah)&0ffh
	
	call	_clcd_putch
	line	130
	
l3765:
;Scrolling.c: 130: wait_s++;
	movlw	low(01h)
	movlb	0	; () banked
	addwf	((_wait_s))&0ffh
	movlw	0
	addwfc	((_wait_s+1))&0ffh
	addwfc	((_wait_s+2))&0ffh
	addwfc	((_wait_s+3))&0ffh
	line	131
	
l3767:; BSR set to: 0

;Scrolling.c: 131: if (wait_s < 400) {
		movf	((_wait_s+3))&0ffh,w
	iorwf	((_wait_s+2))&0ffh,w
	bnz	u2681
	movlw	144
	subwf	 ((_wait_s))&0ffh,w
	movlw	1
	subwfb	((_wait_s+1))&0ffh,w
	btfsc	status,0
	goto	u2681
	goto	u2680

u2681:
	goto	l3781
u2680:
	line	132
	
l3769:; BSR set to: 0

;Scrolling.c: 132: if (f == 3) {
		movlw	3
	xorwf	((c:set_time@f))^00h,c,w
	btfss	status,2
	goto	u2691
	goto	u2690

u2691:
	goto	l3773
u2690:
	line	133
	
l3771:; BSR set to: 0

;Scrolling.c: 133: clcd_putch((s / 10) + '0', (0xC0 + (8)));
	movlw	low(0C8h)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	(c:set_time@s),(c:___lwdiv@dividend)
	movff	(c:set_time@s+1),(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	134
;Scrolling.c: 134: clcd_putch((s % 10) + '0', (0xC0 + (9)));
	movlw	low(0C9h)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	(c:set_time@s),(c:___lwmod@dividend)
	movff	(c:set_time@s+1),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	135
;Scrolling.c: 135: } else if (f == 2) {
	goto	l746
	
l3773:; BSR set to: 0

		movlw	2
	xorwf	((c:set_time@f))^00h,c,w
	btfss	status,2
	goto	u2701
	goto	u2700

u2701:
	goto	l3777
u2700:
	line	136
	
l3775:; BSR set to: 0

;Scrolling.c: 136: clcd_putch((m / 10) + '0', (0xC0 + (5)));
	movlw	low(0C5h)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	(c:set_time@m),(c:___lwdiv@dividend)
	movff	(c:set_time@m+1),(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	137
;Scrolling.c: 137: clcd_putch((m % 10) + '0', (0xC0 + (6)));
	movlw	low(0C6h)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	(c:set_time@m),(c:___lwmod@dividend)
	movff	(c:set_time@m+1),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	138
;Scrolling.c: 138: } else if (f == 1) {
	goto	l746
	
l3777:; BSR set to: 0

		decf	((c:set_time@f))^00h,c,w
	btfss	status,2
	goto	u2711
	goto	u2710

u2711:
	goto	l736
u2710:
	line	139
	
l3779:; BSR set to: 0

;Scrolling.c: 139: clcd_putch((h / 10) + '0', (0xC0 + (2)));
	movlw	low(0C2h)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	(c:set_time@h),(c:___lwdiv@dividend)
	movff	(c:set_time@h+1),(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	140
;Scrolling.c: 140: clcd_putch((h % 10) + '0', (0xC0 + (3)));
	movlw	low(0C3h)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	(c:set_time@h),(c:___lwmod@dividend)
	movff	(c:set_time@h+1),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	goto	l746
	line	143
	
l736:; BSR set to: 0

;Scrolling.c: 141: };Scrolling.c: 143: } else if (wait_s < 600) {
	goto	l746
	
l3781:; BSR set to: 0

		movf	((_wait_s+3))&0ffh,w
	iorwf	((_wait_s+2))&0ffh,w
	bnz	u2721
	movlw	88
	subwf	 ((_wait_s))&0ffh,w
	movlw	2
	subwfb	((_wait_s+1))&0ffh,w
	btfsc	status,0
	goto	u2721
	goto	u2720

u2721:
	goto	l3795
u2720:
	line	144
	
l3783:; BSR set to: 0

;Scrolling.c: 144: if (f == 1) {
		decf	((c:set_time@f))^00h,c,w
	btfss	status,2
	goto	u2731
	goto	u2730

u2731:
	goto	l3787
u2730:
	line	145
	
l3785:; BSR set to: 0

;Scrolling.c: 145: clcd_print("  ", (0xC0 + (2)));
		movlw	low(STR_39)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_39)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C2h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	147
	
l3787:
;Scrolling.c: 146: };Scrolling.c: 147: if (f == 2) {
		movlw	2
	xorwf	((c:set_time@f))^00h,c,w
	btfss	status,2
	goto	u2741
	goto	u2740

u2741:
	goto	l3791
u2740:
	line	148
	
l3789:
;Scrolling.c: 148: clcd_print("  ", (0xC0 + (5)));
		movlw	low(STR_40)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_40)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C5h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	150
	
l3791:
;Scrolling.c: 149: };Scrolling.c: 150: if (f == 3) {
		movlw	3
	xorwf	((c:set_time@f))^00h,c,w
	btfss	status,2
	goto	u2751
	goto	u2750

u2751:
	goto	l746
u2750:
	line	151
	
l3793:
;Scrolling.c: 151: clcd_print("  ", (0xC0 + (8)));
		movlw	low(STR_41)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_41)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C8h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	goto	l746
	line	154
	
l3795:; BSR set to: 0

;Scrolling.c: 154: wait_s = 0;
	movlw	low(0)
	movwf	((_wait_s))&0ffh
	movlw	high(0)
	movwf	((_wait_s+1))&0ffh
	movlw	low highword(0)
	movwf	((_wait_s+2))&0ffh
	movlw	high highword(0)
	movwf	((_wait_s+3))&0ffh
	line	156
	
l746:
	return	;funcret
	callstack 0
GLOBAL	__end_of_set_time
	__end_of_set_time:
	signat	_set_time,16505
	global	_read_switches

;; *************** function _read_switches *****************
;; Defined at:
;;		line 88 in file "matrix_keypad.c"
;; Parameters:    Size  Location     Type
;;  detection_ty    1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  detection_ty    1    0[COMRAM] unsigned char 
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
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_scan_key
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2,group=0
	file	"matrix_keypad.c"
	line	88
global __ptext4
__ptext4:
psect	text4
	file	"matrix_keypad.c"
	line	88
	
_read_switches:
;incstack = 0
	callstack 28
;read_switches@detection_type stored from wreg
	movwf	((c:read_switches@detection_type))^00h,c
	line	92
	
l3421:
;matrix_keypad.c: 90: static unsigned char once = 1, key;;matrix_keypad.c: 92: if (detection_type == 1)
		decf	((c:read_switches@detection_type))^00h,c,w
	btfss	status,2
	goto	u2311
	goto	u2310

u2311:
	goto	l3439
u2310:
	line	94
	
l3423:
;matrix_keypad.c: 93: {;matrix_keypad.c: 94: key = scan_key();
	call	_scan_key	;wreg free
	movwf	((c:read_switches@key))^00h,c
	line	95
	
l3425:
;matrix_keypad.c: 95: if(key != 0xFF && once )
		incf	((c:read_switches@key))^00h,c,w
	btfsc	status,2
	goto	u2321
	goto	u2320

u2321:
	goto	l3435
u2320:
	
l3427:
	movf	((c:read_switches@once))^00h,c,w
	btfsc	status,2
	goto	u2331
	goto	u2330
u2331:
	goto	l3435
u2330:
	line	97
	
l3429:
;matrix_keypad.c: 96: {;matrix_keypad.c: 97: once = 0;
	movlw	low(0)
	movwf	((c:read_switches@once))^00h,c
	line	98
;matrix_keypad.c: 98: return key;
	movf	((c:read_switches@key))^00h,c,w
	goto	l206
	line	100
	
l3435:
;matrix_keypad.c: 100: else if(key == 0xFF)
		incf	((c:read_switches@key))^00h,c,w
	btfss	status,2
	goto	u2341
	goto	u2340

u2341:
	goto	l3445
u2340:
	line	102
	
l3437:
;matrix_keypad.c: 101: {;matrix_keypad.c: 102: once = 1;
	movlw	low(01h)
	movwf	((c:read_switches@once))^00h,c
	goto	l3445
	line	105
	
l3439:
;matrix_keypad.c: 105: else if (detection_type == 0)
	movf	((c:read_switches@detection_type))^00h,c,w
	btfss	status,2
	goto	u2351
	goto	u2350
u2351:
	goto	l3445
u2350:
	line	107
	
l3441:
;matrix_keypad.c: 106: {;matrix_keypad.c: 107: return scan_key();
	call	_scan_key	;wreg free
	goto	l206
	line	110
	
l3445:
;matrix_keypad.c: 108: };matrix_keypad.c: 110: return 0xFF;
	movlw	(0FFh)&0ffh
	line	111
	
l206:
	return	;funcret
	callstack 0
GLOBAL	__end_of_read_switches
	__end_of_read_switches:
	signat	_read_switches,4217
	global	_scan_key

;; *************** function _scan_key *****************
;; Defined at:
;;		line 18 in file "matrix_keypad.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
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
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_read_switches
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2,group=0
	line	18
global __ptext5
__ptext5:
psect	text5
	file	"matrix_keypad.c"
	line	18
	
_scan_key:
;incstack = 0
	callstack 28
	line	20
	
l3087:
;matrix_keypad.c: 20: PORTBbits.RB5 = 0;
	bcf	((c:3969))^0f00h,c,5	;volatile
	line	21
;matrix_keypad.c: 21: PORTBbits.RB6 = 1;
	bsf	((c:3969))^0f00h,c,6	;volatile
	line	22
;matrix_keypad.c: 22: PORTBbits.RB7 = 1;
	bsf	((c:3969))^0f00h,c,7	;volatile
	line	24
;matrix_keypad.c: 24: if (PORTBbits.RB1 == 0)
	btfsc	((c:3969))^0f00h,c,1	;volatile
	goto	u1921
	goto	u1920
u1921:
	goto	l176
u1920:
	line	26
	
l3089:
;matrix_keypad.c: 25: {;matrix_keypad.c: 26: return 1;
	movlw	(01h)&0ffh
	goto	l177
	line	28
	
l176:
;matrix_keypad.c: 28: else if (PORTBbits.RB2 == 0)
	btfsc	((c:3969))^0f00h,c,2	;volatile
	goto	u1931
	goto	u1930
u1931:
	goto	l179
u1930:
	line	30
	
l3095:
;matrix_keypad.c: 29: {;matrix_keypad.c: 30: return 4;
	movlw	(04h)&0ffh
	goto	l177
	line	32
	
l179:
;matrix_keypad.c: 32: else if (PORTBbits.RB3 == 0)
	btfsc	((c:3969))^0f00h,c,3	;volatile
	goto	u1941
	goto	u1940
u1941:
	goto	l181
u1940:
	line	34
	
l3101:
;matrix_keypad.c: 33: {;matrix_keypad.c: 34: return 7;
	movlw	(07h)&0ffh
	goto	l177
	line	36
	
l181:
;matrix_keypad.c: 36: else if (PORTBbits.RB4 == 0)
	btfsc	((c:3969))^0f00h,c,4	;volatile
	goto	u1951
	goto	u1950
u1951:
	goto	l178
u1950:
	line	38
	
l3107:
;matrix_keypad.c: 37: {;matrix_keypad.c: 38: return 10;
	movlw	(0Ah)&0ffh
	goto	l177
	line	41
	
l178:
;matrix_keypad.c: 39: };matrix_keypad.c: 41: PORTBbits.RB5 = 1;
	bsf	((c:3969))^0f00h,c,5	;volatile
	line	42
;matrix_keypad.c: 42: PORTBbits.RB6 = 0;
	bcf	((c:3969))^0f00h,c,6	;volatile
	line	43
;matrix_keypad.c: 43: PORTBbits.RB7 = 1;
	bsf	((c:3969))^0f00h,c,7	;volatile
	line	45
;matrix_keypad.c: 45: if (PORTBbits.RB1 == 0)
	btfsc	((c:3969))^0f00h,c,1	;volatile
	goto	u1961
	goto	u1960
u1961:
	goto	l184
u1960:
	line	47
	
l3111:
;matrix_keypad.c: 46: {;matrix_keypad.c: 47: return 2;
	movlw	(02h)&0ffh
	goto	l177
	line	49
	
l184:
;matrix_keypad.c: 49: else if (PORTBbits.RB2 == 0)
	btfsc	((c:3969))^0f00h,c,2	;volatile
	goto	u1971
	goto	u1970
u1971:
	goto	l186
u1970:
	line	51
	
l3117:
;matrix_keypad.c: 50: {;matrix_keypad.c: 51: return 5;
	movlw	(05h)&0ffh
	goto	l177
	line	53
	
l186:
;matrix_keypad.c: 53: else if (PORTBbits.RB3 == 0)
	btfsc	((c:3969))^0f00h,c,3	;volatile
	goto	u1981
	goto	u1980
u1981:
	goto	l188
u1980:
	line	55
	
l3123:
;matrix_keypad.c: 54: {;matrix_keypad.c: 55: return 8;
	movlw	(08h)&0ffh
	goto	l177
	line	57
	
l188:
;matrix_keypad.c: 57: else if (PORTBbits.RB4 == 0)
	btfsc	((c:3969))^0f00h,c,4	;volatile
	goto	u1991
	goto	u1990
u1991:
	goto	l185
u1990:
	line	59
	
l3129:
;matrix_keypad.c: 58: {;matrix_keypad.c: 59: return 11;
	movlw	(0Bh)&0ffh
	goto	l177
	line	62
	
l185:
;matrix_keypad.c: 60: };matrix_keypad.c: 62: PORTBbits.RB5 = 1;
	bsf	((c:3969))^0f00h,c,5	;volatile
	line	63
;matrix_keypad.c: 63: PORTBbits.RB6 = 1;
	bsf	((c:3969))^0f00h,c,6	;volatile
	line	64
;matrix_keypad.c: 64: PORTBbits.RB7 = 0;
	bcf	((c:3969))^0f00h,c,7	;volatile
	line	66
;matrix_keypad.c: 66: PORTBbits.RB7 = 0;
	bcf	((c:3969))^0f00h,c,7	;volatile
	line	68
;matrix_keypad.c: 68: if (PORTBbits.RB1 == 0)
	btfsc	((c:3969))^0f00h,c,1	;volatile
	goto	u2001
	goto	u2000
u2001:
	goto	l191
u2000:
	line	70
	
l3133:
;matrix_keypad.c: 69: {;matrix_keypad.c: 70: return 3;
	movlw	(03h)&0ffh
	goto	l177
	line	72
	
l191:
;matrix_keypad.c: 72: else if (PORTBbits.RB2 == 0)
	btfsc	((c:3969))^0f00h,c,2	;volatile
	goto	u2011
	goto	u2010
u2011:
	goto	l193
u2010:
	line	74
	
l3139:
;matrix_keypad.c: 73: {;matrix_keypad.c: 74: return 6;
	movlw	(06h)&0ffh
	goto	l177
	line	76
	
l193:
;matrix_keypad.c: 76: else if (PORTBbits.RB3 == 0)
	btfsc	((c:3969))^0f00h,c,3	;volatile
	goto	u2021
	goto	u2020
u2021:
	goto	l195
u2020:
	line	78
	
l3145:
;matrix_keypad.c: 77: {;matrix_keypad.c: 78: return 9;
	movlw	(09h)&0ffh
	goto	l177
	line	80
	
l195:
;matrix_keypad.c: 80: else if (PORTBbits.RB4 == 0)
	btfsc	((c:3969))^0f00h,c,4	;volatile
	goto	u2031
	goto	u2030
u2031:
	goto	l194
u2030:
	line	82
	
l3151:
;matrix_keypad.c: 81: {;matrix_keypad.c: 82: return 12;
	movlw	(0Ch)&0ffh
	goto	l177
	line	85
	
l194:
	
l3155:
;matrix_keypad.c: 83: };matrix_keypad.c: 85: return 0xFF;
	movlw	(0FFh)&0ffh
	line	86
	
l177:
	return	;funcret
	callstack 0
GLOBAL	__end_of_scan_key
	__end_of_scan_key:
	signat	_scan_key,89
	global	_read_adc

;; *************** function _read_adc *****************
;; Defined at:
;;		line 43 in file "adc.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    6[COMRAM] unsigned char 
;;  reg_val         2    4[COMRAM] unsigned short 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned short 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2,group=0
	file	"adc.c"
	line	43
global __ptext6
__ptext6:
psect	text6
	file	"adc.c"
	line	43
	
_read_adc:
;incstack = 0
	callstack 29
;read_adc@channel stored from wreg
	movwf	((c:read_adc@channel))^00h,c
	line	48
	
l3393:
;adc.c: 45: unsigned short reg_val;;adc.c: 48: ADCON0 = (ADCON0 & 0xC3) | (channel << 2);
	movff	(c:read_adc@channel),??_read_adc+0+0
	bcf	status,0
	rlcf	(??_read_adc+0+0)^00h,c
	bcf	status,0
	rlcf	(??_read_adc+0+0)^00h,c

	movf	((c:4034))^0f00h,c,w	;volatile
	andlw	low(0C3h)
	iorwf	(??_read_adc+0+0)^00h,c,w
	movwf	((c:4034))^0f00h,c	;volatile
	line	51
	
l3395:
;adc.c: 51: GO = 1;
	bsf	c:(32273/8),(32273)&7	;volatile
	line	52
;adc.c: 52: while (GO);
	
l36:
	btfsc	c:(32273/8),(32273)&7	;volatile
	goto	u2291
	goto	u2290
u2291:
	goto	l36
u2290:
	line	53
	
l3397:
;adc.c: 53: reg_val = (ADRESH << 8) | ADRESL;
	movf	((c:4035))^0f00h,c,w	;volatile
	movff	(c:4036),??_read_adc+0+0	;volatile
	clrf	(??_read_adc+0+0+1)^00h,c
	movff	??_read_adc+0+0,??_read_adc+0+1
	clrf	(??_read_adc+0+0)^00h,c
	iorwf	(??_read_adc+0+0)^00h,c,w
	movwf	((c:read_adc@reg_val))^00h,c
	movf	(??_read_adc+0+1)^00h,c,w
	movwf	1+((c:read_adc@reg_val))^00h,c
	line	55
	
l3399:
;adc.c: 55: return reg_val;
	movff	(c:read_adc@reg_val),(c:?_read_adc)
	movff	(c:read_adc@reg_val+1),(c:?_read_adc+1)
	line	56
	
l39:
	return	;funcret
	callstack 0
GLOBAL	__end_of_read_adc
	__end_of_read_adc:
	signat	_read_adc,4218
	global	_password_screen

;; *************** function _password_screen *****************
;; Defined at:
;;		line 102 in file "newmain.c"
;; Parameters:    Size  Location     Type
;;  key1            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  key1            1   17[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
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
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		_clcd_print
;;		_clcd_putch
;;		_clcd_write
;;		_compare
;;		_copy
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2,group=0
	file	"newmain.c"
	line	102
global __ptext7
__ptext7:
psect	text7
	file	"newmain.c"
	line	102
	
_password_screen:
;incstack = 0
	callstack 24
;password_screen@key1 stored from wreg
	movwf	((c:password_screen@key1))^00h,c
	line	106
	
l3523:
;newmain.c: 103: static unsigned char i = 0;;newmain.c: 104: static char attempt = 2;;newmain.c: 106: if (i < 4) {
		movlw	04h-0
	cpfslt	((c:password_screen@i))^00h,c
	goto	u2411
	goto	u2410

u2411:
	goto	l3579
u2410:
	line	107
	
l3525:
;newmain.c: 107: if (wrong_sec == 5) {
		movlw	5
	movlb	0	; () banked
	xorwf	((_wrong_sec))&0ffh,w
iorwf	((_wrong_sec+1))&0ffh,w
	btfss	status,2
	goto	u2421
	goto	u2420

u2421:
	goto	l3541
u2420:
	line	108
	
l3527:; BSR set to: 0

;newmain.c: 108: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	109
	
l3529:
;newmain.c: 109: i = 0;
	movlw	low(0)
	movwf	((c:password_screen@i))^00h,c
	line	110
	
l3531:
;newmain.c: 110: count = 0;
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_count+1))&0ffh
	movlw	low(0)
	movwf	((_count))&0ffh
	line	111
	
l3533:; BSR set to: 0

;newmain.c: 111: changemenu = 1;
	movlw	low(01h)
	movwf	((c:_changemenu))^00h,c
	line	112
	
l3535:; BSR set to: 0

;newmain.c: 112: wrong_sec = 0;
	movlw	high(0)
	movwf	((_wrong_sec+1))&0ffh
	movlw	low(0)
	movwf	((_wrong_sec))&0ffh
	line	113
	
l3537:; BSR set to: 0

;newmain.c: 113: attempt = 2;
	movlw	low(02h)
	movwf	((c:password_screen@attempt))^00h,c
	goto	l515
	line	114
	
l3539:
;newmain.c: 114: return;
	goto	l515
	line	117
	
l3541:; BSR set to: 0

;newmain.c: 115: };newmain.c: 117: clcd_print("Enter Password  ", (0x80 + (0)));
		movlw	low(STR_12)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_12)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	118
	
l3543:
;newmain.c: 118: wait++;
	movlw	low(01h)
	movlb	0	; () banked
	addwf	((_wait))&0ffh
	movlw	0
	addwfc	((_wait+1))&0ffh
	addwfc	((_wait+2))&0ffh
	addwfc	((_wait+3))&0ffh
	line	119
	
l3545:; BSR set to: 0

;newmain.c: 119: if (wait < 500) {
		movf	((_wait+3))&0ffh,w
	iorwf	((_wait+2))&0ffh,w
	bnz	u2431
	movlw	244
	subwf	 ((_wait))&0ffh,w
	movlw	1
	subwfb	((_wait+1))&0ffh,w
	btfsc	status,0
	goto	u2431
	goto	u2430

u2431:
	goto	l3549
u2430:
	line	120
	
l3547:; BSR set to: 0

;newmain.c: 120: clcd_putch('_', (0xC0 + (i)));
	movf	((c:password_screen@i))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(05Fh)&0ffh
	
	call	_clcd_putch
	line	121
;newmain.c: 121: } else if (wait < 800) {
	goto	l3555
	
l3549:; BSR set to: 0

		movf	((_wait+3))&0ffh,w
	iorwf	((_wait+2))&0ffh,w
	bnz	u2441
	movlw	32
	subwf	 ((_wait))&0ffh,w
	movlw	3
	subwfb	((_wait+1))&0ffh,w
	btfsc	status,0
	goto	u2441
	goto	u2440

u2441:
	goto	l3553
u2440:
	line	122
	
l3551:; BSR set to: 0

;newmain.c: 122: clcd_putch(' ', (0xC0 + (i)));
	movf	((c:password_screen@i))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	123
;newmain.c: 123: } else {
	goto	l3555
	line	124
	
l3553:; BSR set to: 0

;newmain.c: 124: wait = 0;
	movlw	low(0)
	movwf	((_wait))&0ffh
	movlw	high(0)
	movwf	((_wait+1))&0ffh
	movlw	low highword(0)
	movwf	((_wait+2))&0ffh
	movlw	high highword(0)
	movwf	((_wait+3))&0ffh
	line	127
	
l3555:
;newmain.c: 125: };newmain.c: 127: if (key1 == 11) {
		movlw	11
	xorwf	((c:password_screen@key1))^00h,c,w
	btfss	status,2
	goto	u2451
	goto	u2450

u2451:
	goto	l3567
u2450:
	line	128
	
l3557:
;newmain.c: 128: str[i] = '1';
	movf	((c:password_screen@i))^00h,c,w
	addlw	low(_str)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(031h)
	movwf	indf2
	line	129
	
l3559:
;newmain.c: 129: clcd_putch('*', (0xC0 + (i)));
	movf	((c:password_screen@i))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	line	130
	
l3561:
;newmain.c: 130: i++;
	incf	((c:password_screen@i))^00h,c
	line	131
	
l3563:
;newmain.c: 131: wrong_sec = 0;
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_wrong_sec+1))&0ffh
	movlw	low(0)
	movwf	((_wrong_sec))&0ffh
	line	132
	
l3565:; BSR set to: 0

;newmain.c: 132: count = 0;
	movlw	high(0)
	movwf	((_count+1))&0ffh
	movlw	low(0)
	movwf	((_count))&0ffh
	line	133
;newmain.c: 133: } else if (key1 == 12) {
	goto	l515
	
l3567:
		movlw	12
	xorwf	((c:password_screen@key1))^00h,c,w
	btfss	status,2
	goto	u2461
	goto	u2460

u2461:
	goto	l515
u2460:
	line	134
	
l3569:
;newmain.c: 134: str[i] = '0';
	movf	((c:password_screen@i))^00h,c,w
	addlw	low(_str)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(030h)
	movwf	indf2
	line	135
	
l3571:
;newmain.c: 135: clcd_putch('*', (0xC0 + (i)));
	movf	((c:password_screen@i))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	goto	l3561
	line	140
	
l3579:
		movlw	4
	xorwf	((c:password_screen@i))^00h,c,w
	btfss	status,2
	goto	u2471
	goto	u2470

u2471:
	goto	l515
u2470:
	line	142
	
l3581:
;newmain.c: 142: if (compare(str, password)) {
		movlw	low(_str)
	movwf	((c:compare@str1))^00h,c

		movlw	low(_password)
	movwf	((c:compare@str2))^00h,c

	call	_compare	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u2481
	goto	u2480
u2481:
	goto	l3593
u2480:
	line	143
	
l3583:
;newmain.c: 143: changemenu = 2;
	movlw	low(02h)
	movwf	((c:_changemenu))^00h,c
	line	144
	
l3585:
;newmain.c: 144: copy();
	call	_copy	;wreg free
	line	145
	
l3587:
;newmain.c: 145: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	goto	l515
	line	149
	
l3593:
;newmain.c: 149: if (attempt == 0 || attempt == 1 || attempt == 2) {
	movf	((c:password_screen@attempt))^00h,c,w
	btfsc	status,2
	goto	u2491
	goto	u2490
u2491:
	goto	l3599
u2490:
	
l3595:
		decf	((c:password_screen@attempt))^00h,c,w
	btfsc	status,2
	goto	u2501
	goto	u2500

u2501:
	goto	l3599
u2500:
	
l3597:
		movlw	2
	xorwf	((c:password_screen@attempt))^00h,c,w
	btfss	status,2
	goto	u2511
	goto	u2510

u2511:
	goto	l3619
u2510:
	line	150
	
l3599:
;newmain.c: 150: if (wait3++ == 1000) {
	movlw	low(01h)
	movlb	0	; () banked
	addwf	((_wait3))&0ffh
	movlw	0
	addwfc	((_wait3+1))&0ffh
	addwfc	((_wait3+2))&0ffh
	addwfc	((_wait3+3))&0ffh
		movlw	233
	xorwf	((_wait3))&0ffh,w
	bnz	u2521
	movlw	3
	xorwf	((_wait3+1))&0ffh,w
iorwf	((_wait3+2))&0ffh,w
iorwf	((_wait3+3))&0ffh,w
	btfss	status,2
	goto	u2521
	goto	u2520

u2521:
	goto	l3613
u2520:
	line	151
	
l3601:; BSR set to: 0

;newmain.c: 151: wait3 = 0;
	movlw	low(0)
	movwf	((_wait3))&0ffh
	movlw	high(0)
	movwf	((_wait3+1))&0ffh
	movlw	low highword(0)
	movwf	((_wait3+2))&0ffh
	movlw	high highword(0)
	movwf	((_wait3+3))&0ffh
	line	152
	
l3603:; BSR set to: 0

;newmain.c: 152: attempt--;
	decf	((c:password_screen@attempt))^00h,c
	line	153
	
l3605:; BSR set to: 0

;newmain.c: 153: i = 0;
	movlw	low(0)
	movwf	((c:password_screen@i))^00h,c
	line	154
	
l3607:; BSR set to: 0

;newmain.c: 154: count = 0;
	movlw	high(0)
	movwf	((_count+1))&0ffh
	movlw	low(0)
	movwf	((_count))&0ffh
	line	155
	
l3609:; BSR set to: 0

;newmain.c: 155: wrong_sec = 0;
	movlw	high(0)
	movwf	((_wrong_sec+1))&0ffh
	movlw	low(0)
	movwf	((_wrong_sec))&0ffh
	line	156
	
l3611:; BSR set to: 0

;newmain.c: 156: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	157
;newmain.c: 157: } else {
	goto	l515
	line	158
	
l3613:; BSR set to: 0

;newmain.c: 158: clcd_print("Wrong Password", (0x80 + (0)));
		movlw	low(STR_13)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_13)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	159
	
l3615:
;newmain.c: 159: clcd_putch('0' + attempt, (0xC0 + (0)));
	movlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movf	((c:password_screen@attempt))^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	160
	
l3617:
;newmain.c: 160: clcd_print("  attempts left", (0xC0 + (1)));
		movlw	low(STR_14)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_14)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C1h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	goto	l515
	line	164
	
l3619:
;newmain.c: 164: if (ok == 0) {
	movf	((c:_ok))^00h,c,w
	btfss	status,2
	goto	u2531
	goto	u2530
u2531:
	goto	l3623
u2530:
	line	165
	
l3621:
;newmain.c: 165: ok = 1;
	movlw	low(01h)
	movwf	((c:_ok))^00h,c
	line	166
;newmain.c: 166: count1 = 0;
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_count1+1))&0ffh
	movlw	low(0)
	movwf	((_count1))&0ffh
	line	170
	
l3623:
;newmain.c: 168: };newmain.c: 170: clcd_print("Wrong Password  ", (0x80 + (0)));
		movlw	low(STR_15)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_15)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	171
	
l3625:
;newmain.c: 171: clcd_putch(('0' + (sec % 10)), (0xC0 + (2)));
	movlw	low(0C2h)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	(c:_sec),(c:___lwmod@dividend)
	movff	(c:_sec+1),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	172
	
l3627:
;newmain.c: 172: clcd_putch('0' + ((sec / 10) % 10), (0xC0 + (1)));
	movlw	low(0C1h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	movff	(c:_sec),(c:___lwdiv@dividend)
	movff	(c:_sec+1),(c:___lwdiv@dividend+1)
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(c:___lwmod@dividend)
	movff	1+?___lwdiv,(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	173
	
l3629:
;newmain.c: 173: clcd_putch('0' + (sec / 100), (0xC0 + (0)));
	movlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	(c:_sec),(c:___lwdiv@dividend)
	movff	(c:_sec+1),(c:___lwdiv@dividend+1)
	movlw	high(064h)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(064h)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	174
	
l3631:
;newmain.c: 174: clcd_print("   Sec Left ", (0xC0 + (3)));
		movlw	low(STR_16)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_16)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C3h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	176
	
l3633:
;newmain.c: 176: if (sec == 0) {
	movf	((c:_sec))^00h,c,w
iorwf	((c:_sec+1))^00h,c,w
	btfss	status,2
	goto	u2541
	goto	u2540

u2541:
	goto	l3539
u2540:
	line	177
	
l3635:
;newmain.c: 177: sec = 120;
	movlw	high(078h)
	movwf	((c:_sec+1))^00h,c
	movlw	low(078h)
	movwf	((c:_sec))^00h,c
	line	178
;newmain.c: 178: changemenu = 1;
	movlw	low(01h)
	movwf	((c:_changemenu))^00h,c
	line	179
;newmain.c: 179: ok = 0;
	movlw	low(0)
	movwf	((c:_ok))^00h,c
	line	180
;newmain.c: 180: i = 0;
	movlw	low(0)
	movwf	((c:password_screen@i))^00h,c
	line	181
;newmain.c: 181: attempt = 2;
	movlw	low(02h)
	movwf	((c:password_screen@attempt))^00h,c
	line	182
	
l3637:
;newmain.c: 182: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	188
	
l515:
	return	;funcret
	callstack 0
GLOBAL	__end_of_password_screen
	__end_of_password_screen:
	signat	_password_screen,4217
	global	_copy

;; *************** function _copy *****************
;; Defined at:
;;		line 59 in file "newmain.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  j               2   13[COMRAM] int 
;;  j               2   11[COMRAM] int 
;;  j               2    9[COMRAM] int 
;;  i               2   15[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         8       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:        11       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		___wmul
;;		_read_external_eeprom
;; This function is called by:
;;		_password_screen
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2,group=0
	line	59
global __ptext8
__ptext8:
psect	text8
	file	"newmain.c"
	line	59
	
_copy:
;incstack = 0
	callstack 24
	line	60
	
l3229:
;newmain.c: 60: for (int i = 0; i < total; i++) {
	movlw	high(0)
	movwf	((c:copy@i+1))^00h,c
	movlw	low(0)
	movwf	((c:copy@i))^00h,c
	goto	l3291
	line	62
	
l3231:
;newmain.c: 62: for (int j = 0; j < 2; j++) {
	movlw	high(0)
	movwf	((c:copy@j+1))^00h,c
	movlw	low(0)
	movwf	((c:copy@j))^00h,c
	line	63
	
l3237:
;newmain.c: 63: viewdisplay[i][j] = read_external_eeprom(adr);
	movff	(c:copy@i),(c:___wmul@multiplier)
	movff	(c:copy@i+1),(c:___wmul@multiplier+1)
	movlw	high(0Dh)
	movwf	((c:___wmul@multiplicand+1))^00h,c
	movlw	low(0Dh)
	movwf	((c:___wmul@multiplicand))^00h,c
	call	___wmul	;wreg free
	movlw	low(_viewdisplay)
	addwf	(0+?___wmul)^00h,c,w
	movwf	(??_copy+0+0)^00h,c
	movlw	high(_viewdisplay)
	addwfc	(1+?___wmul)^00h,c,w
	movwf	1+(??_copy+0+0)^00h,c
	movf	((c:copy@j))^00h,c,w
	addwf	(??_copy+0+0)^00h,c,w
	movwf	c:fsr2l
	movf	((c:copy@j+1))^00h,c,w
	addwfc	(??_copy+0+1)^00h,c,w
	movwf	1+c:fsr2l
	movf	((c:_adr))^00h,c,w
	
	call	_read_external_eeprom
	movwf	indf2,c

	line	64
	
l3239:
;newmain.c: 64: adr++;
	incf	((c:_adr))^00h,c
	line	62
	
l3241:
	infsnz	((c:copy@j))^00h,c
	incf	((c:copy@j+1))^00h,c
	
l3243:
	btfsc	((c:copy@j+1))^00h,c,7
	goto	u2081
	movf	((c:copy@j+1))^00h,c,w
	bnz	u2080
	movlw	2
	subwf	 ((c:copy@j))^00h,c,w
	btfss	status,0
	goto	u2081
	goto	u2080

u2081:
	goto	l3237
u2080:
	line	66
	
l3245:
;newmain.c: 65: };newmain.c: 66: viewdisplay[i][2] = ':';
	movff	(c:copy@i),(c:___wmul@multiplier)
	movff	(c:copy@i+1),(c:___wmul@multiplier+1)
	movlw	high(0Dh)
	movwf	((c:___wmul@multiplicand+1))^00h,c
	movlw	low(0Dh)
	movwf	((c:___wmul@multiplicand))^00h,c
	call	___wmul	;wreg free
	movlw	low(_viewdisplay+02h)
	addwf	(0+?___wmul)^00h,c,w
	movwf	c:fsr2l
	movlw	high(_viewdisplay+02h)
	addwfc	(1+?___wmul)^00h,c,w
	movwf	1+c:fsr2l
	movlw	low(03Ah)
	movwf	indf2
	line	67
	
l3247:
;newmain.c: 67: for (int j = 3; j < 5; j++) {
	movlw	high(03h)
	movwf	((c:copy@j_469+1))^00h,c
	movlw	low(03h)
	movwf	((c:copy@j_469))^00h,c
	line	68
	
l3253:
;newmain.c: 68: viewdisplay[i][j] = read_external_eeprom(adr);
	movff	(c:copy@i),(c:___wmul@multiplier)
	movff	(c:copy@i+1),(c:___wmul@multiplier+1)
	movlw	high(0Dh)
	movwf	((c:___wmul@multiplicand+1))^00h,c
	movlw	low(0Dh)
	movwf	((c:___wmul@multiplicand))^00h,c
	call	___wmul	;wreg free
	movlw	low(_viewdisplay)
	addwf	(0+?___wmul)^00h,c,w
	movwf	(??_copy+0+0)^00h,c
	movlw	high(_viewdisplay)
	addwfc	(1+?___wmul)^00h,c,w
	movwf	1+(??_copy+0+0)^00h,c
	movf	((c:copy@j_469))^00h,c,w
	addwf	(??_copy+0+0)^00h,c,w
	movwf	c:fsr2l
	movf	((c:copy@j_469+1))^00h,c,w
	addwfc	(??_copy+0+1)^00h,c,w
	movwf	1+c:fsr2l
	movf	((c:_adr))^00h,c,w
	
	call	_read_external_eeprom
	movwf	indf2,c

	line	69
	
l3255:
;newmain.c: 69: adr++;
	incf	((c:_adr))^00h,c
	line	67
	
l3257:
	infsnz	((c:copy@j_469))^00h,c
	incf	((c:copy@j_469+1))^00h,c
	
l3259:
	btfsc	((c:copy@j_469+1))^00h,c,7
	goto	u2091
	movf	((c:copy@j_469+1))^00h,c,w
	bnz	u2090
	movlw	5
	subwf	 ((c:copy@j_469))^00h,c,w
	btfss	status,0
	goto	u2091
	goto	u2090

u2091:
	goto	l3253
u2090:
	line	71
	
l3261:
;newmain.c: 70: };newmain.c: 71: viewdisplay[i][5] = ':';
	movff	(c:copy@i),(c:___wmul@multiplier)
	movff	(c:copy@i+1),(c:___wmul@multiplier+1)
	movlw	high(0Dh)
	movwf	((c:___wmul@multiplicand+1))^00h,c
	movlw	low(0Dh)
	movwf	((c:___wmul@multiplicand))^00h,c
	call	___wmul	;wreg free
	movlw	low(_viewdisplay+05h)
	addwf	(0+?___wmul)^00h,c,w
	movwf	c:fsr2l
	movlw	high(_viewdisplay+05h)
	addwfc	(1+?___wmul)^00h,c,w
	movwf	1+c:fsr2l
	movlw	low(03Ah)
	movwf	indf2
	line	72
	
l3263:
;newmain.c: 72: for (int j = 6; j < 8; j++) {
	movlw	high(06h)
	movwf	((c:copy@j_470+1))^00h,c
	movlw	low(06h)
	movwf	((c:copy@j_470))^00h,c
	line	73
	
l3269:
;newmain.c: 73: viewdisplay[i][j] = read_external_eeprom(adr);
	movff	(c:copy@i),(c:___wmul@multiplier)
	movff	(c:copy@i+1),(c:___wmul@multiplier+1)
	movlw	high(0Dh)
	movwf	((c:___wmul@multiplicand+1))^00h,c
	movlw	low(0Dh)
	movwf	((c:___wmul@multiplicand))^00h,c
	call	___wmul	;wreg free
	movlw	low(_viewdisplay)
	addwf	(0+?___wmul)^00h,c,w
	movwf	(??_copy+0+0)^00h,c
	movlw	high(_viewdisplay)
	addwfc	(1+?___wmul)^00h,c,w
	movwf	1+(??_copy+0+0)^00h,c
	movf	((c:copy@j_470))^00h,c,w
	addwf	(??_copy+0+0)^00h,c,w
	movwf	c:fsr2l
	movf	((c:copy@j_470+1))^00h,c,w
	addwfc	(??_copy+0+1)^00h,c,w
	movwf	1+c:fsr2l
	movf	((c:_adr))^00h,c,w
	
	call	_read_external_eeprom
	movwf	indf2,c

	line	74
	
l3271:
;newmain.c: 74: adr++;
	incf	((c:_adr))^00h,c
	line	72
	
l3273:
	infsnz	((c:copy@j_470))^00h,c
	incf	((c:copy@j_470+1))^00h,c
	
l3275:
	btfsc	((c:copy@j_470+1))^00h,c,7
	goto	u2101
	movf	((c:copy@j_470+1))^00h,c,w
	bnz	u2100
	movlw	8
	subwf	 ((c:copy@j_470))^00h,c,w
	btfss	status,0
	goto	u2101
	goto	u2100

u2101:
	goto	l3269
u2100:
	line	77
	
l3277:
;newmain.c: 75: };newmain.c: 77: viewdisplay[i][8] = read_external_eeprom(adr);
	movff	(c:copy@i),(c:___wmul@multiplier)
	movff	(c:copy@i+1),(c:___wmul@multiplier+1)
	movlw	high(0Dh)
	movwf	((c:___wmul@multiplicand+1))^00h,c
	movlw	low(0Dh)
	movwf	((c:___wmul@multiplicand))^00h,c
	call	___wmul	;wreg free
	movlw	low(_viewdisplay+08h)
	addwf	(0+?___wmul)^00h,c,w
	movwf	c:fsr2l
	movlw	high(_viewdisplay+08h)
	addwfc	(1+?___wmul)^00h,c,w
	movwf	1+c:fsr2l
	movf	((c:_adr))^00h,c,w
	
	call	_read_external_eeprom
	movwf	indf2,c

	line	78
	
l3279:
;newmain.c: 78: adr++;
	incf	((c:_adr))^00h,c
	line	79
	
l3281:
;newmain.c: 79: viewdisplay[i][9] = read_external_eeprom(adr);
	movff	(c:copy@i),(c:___wmul@multiplier)
	movff	(c:copy@i+1),(c:___wmul@multiplier+1)
	movlw	high(0Dh)
	movwf	((c:___wmul@multiplicand+1))^00h,c
	movlw	low(0Dh)
	movwf	((c:___wmul@multiplicand))^00h,c
	call	___wmul	;wreg free
	movlw	low(_viewdisplay+09h)
	addwf	(0+?___wmul)^00h,c,w
	movwf	c:fsr2l
	movlw	high(_viewdisplay+09h)
	addwfc	(1+?___wmul)^00h,c,w
	movwf	1+c:fsr2l
	movf	((c:_adr))^00h,c,w
	
	call	_read_external_eeprom
	movwf	indf2,c

	line	80
;newmain.c: 80: adr++;
	incf	((c:_adr))^00h,c
	line	81
	
l3283:
;newmain.c: 81: viewdisplay[i][10] = read_external_eeprom(adr);
	movff	(c:copy@i),(c:___wmul@multiplier)
	movff	(c:copy@i+1),(c:___wmul@multiplier+1)
	movlw	high(0Dh)
	movwf	((c:___wmul@multiplicand+1))^00h,c
	movlw	low(0Dh)
	movwf	((c:___wmul@multiplicand))^00h,c
	call	___wmul	;wreg free
	movlw	low(_viewdisplay+0Ah)
	addwf	(0+?___wmul)^00h,c,w
	movwf	c:fsr2l
	movlw	high(_viewdisplay+0Ah)
	addwfc	(1+?___wmul)^00h,c,w
	movwf	1+c:fsr2l
	movf	((c:_adr))^00h,c,w
	
	call	_read_external_eeprom
	movwf	indf2,c

	line	82
	
l3285:
;newmain.c: 82: adr++;
	incf	((c:_adr))^00h,c
	line	83
;newmain.c: 83: viewdisplay[i][11] = read_external_eeprom(adr);
	movff	(c:copy@i),(c:___wmul@multiplier)
	movff	(c:copy@i+1),(c:___wmul@multiplier+1)
	movlw	high(0Dh)
	movwf	((c:___wmul@multiplicand+1))^00h,c
	movlw	low(0Dh)
	movwf	((c:___wmul@multiplicand))^00h,c
	call	___wmul	;wreg free
	movlw	low(_viewdisplay+0Bh)
	addwf	(0+?___wmul)^00h,c,w
	movwf	c:fsr2l
	movlw	high(_viewdisplay+0Bh)
	addwfc	(1+?___wmul)^00h,c,w
	movwf	1+c:fsr2l
	movf	((c:_adr))^00h,c,w
	
	call	_read_external_eeprom
	movwf	indf2,c

	line	84
	
l3287:
;newmain.c: 84: adr++;
	incf	((c:_adr))^00h,c
	line	86
	
l3289:
;newmain.c: 86: viewdisplay[i][12] = '\0';
	movff	(c:copy@i),(c:___wmul@multiplier)
	movff	(c:copy@i+1),(c:___wmul@multiplier+1)
	movlw	high(0Dh)
	movwf	((c:___wmul@multiplicand+1))^00h,c
	movlw	low(0Dh)
	movwf	((c:___wmul@multiplicand))^00h,c
	call	___wmul	;wreg free
	movlw	low(_viewdisplay+0Ch)
	addwf	(0+?___wmul)^00h,c,w
	movwf	c:fsr2l
	movlw	high(_viewdisplay+0Ch)
	addwfc	(1+?___wmul)^00h,c,w
	movwf	1+c:fsr2l
	clrf	indf2
	line	60
	infsnz	((c:copy@i))^00h,c
	incf	((c:copy@i+1))^00h,c
	
l3291:
	movf	((c:_total))^00h,c,w
	movwf	(??_copy+0+0)^00h,c
	clrf	(??_copy+0+0+1)^00h,c

		movf	(??_copy+0+0)^00h,c,w
	subwf	((c:copy@i))^00h,c,w
	movf	((c:copy@i+1))^00h,c,w
	xorlw	80h
	movwf	(??_copy+2+0)^00h,c
	movf	(??_copy+0+1)^00h,c,w
	xorlw	80h
	subwfb	(??_copy+2+0)^00h,c,w
	btfss	status,0
	goto	u2111
	goto	u2110

u2111:
	goto	l3231
u2110:
	line	88
	
l503:
	return	;funcret
	callstack 0
GLOBAL	__end_of_copy
	__end_of_copy:
	signat	_copy,89
	global	_main_menu

;; *************** function _main_menu *****************
;; Defined at:
;;		line 28 in file "Scrolling.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
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
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_clcd_print
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2,group=0
	file	"Scrolling.c"
	line	28
global __ptext9
__ptext9:
psect	text9
	file	"Scrolling.c"
	line	28
	
_main_menu:
;incstack = 0
	callstack 27
	line	30
	
l3651:
;Scrolling.c: 30: if (op == 0) {
	movf	((c:_op))^00h,c,w
	btfss	status,2
	goto	u2551
	goto	u2550
u2551:
	goto	l3655
u2550:
	line	32
	
l3653:
;Scrolling.c: 32: clcd_print("->", (0x80 + (0)));
		movlw	low(STR_24)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_24)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	33
;Scrolling.c: 33: clcd_print("   ", (0xC0 + (0)));
		movlw	low(STR_25)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_25)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	34
;Scrolling.c: 34: clcd_print(menu[0], (0x80 + (3)));
		movff	(_menu),(c:clcd_print@data)
	movff	(_menu+1),(c:clcd_print@data+1)

	movlw	low(083h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	35
;Scrolling.c: 35: clcd_print(menu[1], (0xC0 + (3)));
		movff	0+(_menu+02h),(c:clcd_print@data)
	movff	1+(_menu+02h),(c:clcd_print@data+1)

	movlw	low(0C3h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	37
;Scrolling.c: 37: } else {
	goto	l700
	line	39
	
l3655:
;Scrolling.c: 39: if (up == 0) {
	movf	((c:_up))^00h,c,w
	btfss	status,2
	goto	u2561
	goto	u2560
u2561:
	goto	l3663
u2560:
	line	41
	
l3657:
;Scrolling.c: 41: clcd_print(menu[op - 1], (0x80 + (3)));
	movf	((c:_op))^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_menu+0FEh)
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(c:clcd_print@data)
	movff	postdec2,(c:clcd_print@data+1)
	movlw	low(083h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	42
;Scrolling.c: 42: clcd_print(menu[op], (0xC0 + (3)));
	movf	((c:_op))^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_menu)
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(c:clcd_print@data)
	movff	postdec2,(c:clcd_print@data+1)
	movlw	low(0C3h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	43
	
l3659:
;Scrolling.c: 43: clcd_print("   ", (0x80 + (0)));
		movlw	low(STR_26)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_26)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	44
	
l3661:
;Scrolling.c: 44: clcd_print("-> ", (0xC0 + (0)));
		movlw	low(STR_27)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_27)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	45
;Scrolling.c: 45: } else if (up == 1) {
	goto	l700
	
l3663:
		decf	((c:_up))^00h,c,w
	btfss	status,2
	goto	u2571
	goto	u2570

u2571:
	goto	l700
u2570:
	line	47
	
l3665:
;Scrolling.c: 47: clcd_print(menu[op], (0x80 + (3)));
	movf	((c:_op))^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_menu)
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(c:clcd_print@data)
	movff	postdec2,(c:clcd_print@data+1)
	movlw	low(083h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	48
;Scrolling.c: 48: clcd_print(menu[op + 1], (0xC0 + (3)));
	movf	((c:_op))^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_menu+02h)
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(c:clcd_print@data)
	movff	postdec2,(c:clcd_print@data+1)
	movlw	low(0C3h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	49
	
l3667:
;Scrolling.c: 49: clcd_print("-> ", (0x80 + (0)));
		movlw	low(STR_28)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_28)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	50
	
l3669:
;Scrolling.c: 50: clcd_print("   ", (0xC0 + (0)));
		movlw	low(STR_29)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_29)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	54
	
l700:
	return	;funcret
	callstack 0
GLOBAL	__end_of_main_menu
	__end_of_main_menu:
	signat	_main_menu,89
	global	_init_config

;; *************** function _init_config *****************
;; Defined at:
;;		line 189 in file "newmain.c"
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
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_init_adc
;;		_init_clcd
;;		_init_ds1307
;;		_init_i2c
;;		_init_matrix_keypad
;;		_init_timer0
;;		_init_uart
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2,group=0
	file	"newmain.c"
	line	189
global __ptext10
__ptext10:
psect	text10
	file	"newmain.c"
	line	189
	
_init_config:
;incstack = 0
	callstack 24
	line	191
	
l3641:
;newmain.c: 191: GIE = 1;
	bsf	c:(32663/8),(32663)&7	;volatile
	line	192
;newmain.c: 192: PEIE = 1;
	bsf	c:(32662/8),(32662)&7	;volatile
	line	194
	
l3643:
;newmain.c: 194: init_clcd();
	call	_init_clcd	;wreg free
	line	195
	
l3645:
;newmain.c: 195: init_adc();
	call	_init_adc	;wreg free
	line	196
	
l3647:
;newmain.c: 196: init_matrix_keypad();
	call	_init_matrix_keypad	;wreg free
	line	197
;newmain.c: 197: init_timer0();
	call	_init_timer0	;wreg free
	line	198
;newmain.c: 198: init_i2c();
	call	_init_i2c	;wreg free
	line	199
;newmain.c: 199: init_uart();
	call	_init_uart	;wreg free
	line	200
	
l3649:
;newmain.c: 200: init_ds1307();
	call	_init_ds1307	;wreg free
	line	202
	
l537:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_config
	__end_of_init_config:
	signat	_init_config,89
	global	_init_uart

;; *************** function _init_uart *****************
;; Defined at:
;;		line 4 in file "uart.c"
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
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2,group=0
	file	"uart.c"
	line	4
global __ptext11
__ptext11:
psect	text11
	file	"uart.c"
	line	4
	
_init_uart:
;incstack = 0
	callstack 28
	line	7
	
l3159:
;uart.c: 7: TRISC7 = 1;
	bsf	c:(31911/8),(31911)&7	;volatile
	line	8
;uart.c: 8: TRISC6 = 0;
	bcf	c:(31910/8),(31910)&7	;volatile
	line	11
;uart.c: 11: BRGH = 1;
	bsf	c:(32098/8),(32098)&7	;volatile
	line	12
;uart.c: 12: SPEN = 1;
	bsf	c:(32095/8),(32095)&7	;volatile
	line	16
;uart.c: 16: CREN = 1;
	bsf	c:(32092/8),(32092)&7	;volatile
	line	22
	
l3161:
;uart.c: 22: SPBRG = 129;
	movlw	low(081h)
	movwf	((c:4015))^0f00h,c	;volatile
	line	24
	
l3163:
;uart.c: 24: RCIE = 1;
	bsf	c:(31981/8),(31981)&7	;volatile
	line	27
	
l235:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_uart
	__end_of_init_uart:
	signat	_init_uart,89
	global	_init_timer0

;; *************** function _init_timer0 *****************
;; Defined at:
;;		line 4 in file "timer0.c"
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
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2,group=0
	file	"timer0.c"
	line	4
global __ptext12
__ptext12:
psect	text12
	file	"timer0.c"
	line	4
	
_init_timer0:
;incstack = 0
	callstack 28
	line	12
	
l3311:
;timer0.c: 12: T08BIT = 1;
	bsf	c:(32430/8),(32430)&7	;volatile
	line	15
;timer0.c: 15: T0CS = 0;
	bcf	c:(32429/8),(32429)&7	;volatile
	line	18
;timer0.c: 18: TMR0ON = 1;
	bsf	c:(32431/8),(32431)&7	;volatile
	line	21
;timer0.c: 21: PSA = 0;
	bcf	c:(32427/8),(32427)&7	;volatile
	line	22
;timer0.c: 22: T0PS2=0;
	bcf	c:(32426/8),(32426)&7	;volatile
	line	23
;timer0.c: 23: T0PS1=0;
	bcf	c:(32425/8),(32425)&7	;volatile
	line	24
;timer0.c: 24: T0PS0=1;
	bsf	c:(32424/8),(32424)&7	;volatile
	line	26
	
l3313:
;timer0.c: 26: TMR0 = 6;
	movlw	high(06h)
	movwf	((c:4054+1))^0f00h,c	;volatile
	movlw	low(06h)
	movwf	((c:4054))^0f00h,c	;volatile
	line	29
	
l3315:
;timer0.c: 29: TMR0IF = 0;
	bcf	c:(32658/8),(32658)&7	;volatile
	line	32
	
l3317:
;timer0.c: 32: TMR0IE = 1;
	bsf	c:(32661/8),(32661)&7	;volatile
	line	33
	
l823:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_timer0
	__end_of_init_timer0:
	signat	_init_timer0,89
	global	_init_matrix_keypad

;; *************** function _init_matrix_keypad *****************
;; Defined at:
;;		line 4 in file "matrix_keypad.c"
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
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2,group=0
	file	"matrix_keypad.c"
	line	4
global __ptext13
__ptext13:
psect	text13
	file	"matrix_keypad.c"
	line	4
	
_init_matrix_keypad:
;incstack = 0
	callstack 28
	line	7
	
l3081:
;matrix_keypad.c: 7: ADCON1 = 0x0F;
	movlw	low(0Fh)
	movwf	((c:4033))^0f00h,c	;volatile
	line	10
;matrix_keypad.c: 10: TRISB = 0x1E;
	movlw	low(01Eh)
	movwf	((c:3987))^0f00h,c	;volatile
	line	13
	
l3083:
;matrix_keypad.c: 13: RBPU = 0;
	bcf	c:(32655/8),(32655)&7	;volatile
	line	15
	
l3085:
;matrix_keypad.c: 15: PORTB = PORTB | 0xE0;
	movf	((c:3969))^0f00h,c,w	;volatile
	iorlw	low(0E0h)
	movwf	((c:3969))^0f00h,c	;volatile
	line	16
	
l173:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_matrix_keypad
	__end_of_init_matrix_keypad:
	signat	_init_matrix_keypad,89
	global	_init_i2c

;; *************** function _init_i2c *****************
;; Defined at:
;;		line 5 in file "i2c.c"
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
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2,group=0
	file	"i2c.c"
	line	5
global __ptext14
__ptext14:
psect	text14
	file	"i2c.c"
	line	5
	
_init_i2c:
;incstack = 0
	callstack 28
	line	8
	
l3059:
;i2c.c: 8: TRISC3 = 1;
	bsf	c:(31907/8),(31907)&7	;volatile
	line	9
;i2c.c: 9: TRISC4 = 1;
	bsf	c:(31908/8),(31908)&7	;volatile
	line	11
	
l3061:
;i2c.c: 11: SSPCON1 = 0x28;
	movlw	low(028h)
	movwf	((c:4038))^0f00h,c	;volatile
	line	13
;i2c.c: 13: SSPADD = 0x31;
	movlw	low(031h)
	movwf	((c:4040))^0f00h,c	;volatile
	line	15
	
l3063:
;i2c.c: 15: CKE = 0;
	bcf	c:(32318/8),(32318)&7	;volatile
	line	17
	
l3065:
;i2c.c: 17: SMP = 1;
	bsf	c:(32319/8),(32319)&7	;volatile
	line	19
	
l3067:
;i2c.c: 19: SSPIF = 0;
	bcf	c:(31987/8),(31987)&7	;volatile
	line	21
	
l3069:
;i2c.c: 21: BCLIF = 0;
	bcf	c:(32011/8),(32011)&7	;volatile
	line	22
	
l74:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_i2c
	__end_of_init_i2c:
	signat	_init_i2c,89
	global	_init_ds1307

;; *************** function _init_ds1307 *****************
;; Defined at:
;;		line 12 in file "ds1307.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  dummy           1   14[COMRAM] unsigned char 
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
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_read_ds1307
;;		_write_ds1307
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2,group=0
	file	"ds1307.c"
	line	12
global __ptext15
__ptext15:
psect	text15
	file	"ds1307.c"
	line	12
	
_init_ds1307:
;incstack = 0
	callstack 24
	line	17
	
l3071:
;ds1307.c: 14: unsigned char dummy;;ds1307.c: 17: dummy = read_ds1307(0x00);
	movlw	(0)&0ffh
	
	call	_read_ds1307
	movwf	((c:init_ds1307@dummy))^00h,c
	line	18
	
l3073:
;ds1307.c: 18: write_ds1307(0x00, dummy | 0x80);
	movf	((c:init_ds1307@dummy))^00h,c,w
	iorlw	low(080h)
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(0)&0ffh
	
	call	_write_ds1307
	line	21
	
l3075:
;ds1307.c: 21: dummy = read_ds1307(0x02);
	movlw	(02h)&0ffh
	
	call	_read_ds1307
	movwf	((c:init_ds1307@dummy))^00h,c
	line	22
;ds1307.c: 22: write_ds1307(0x02, dummy | 0x40);
	movf	((c:init_ds1307@dummy))^00h,c,w
	iorlw	low(040h)
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(02h)&0ffh
	
	call	_write_ds1307
	line	38
	
l3077:
;ds1307.c: 38: write_ds1307(0x07, 0x13);
	movlw	low(013h)
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(07h)&0ffh
	
	call	_write_ds1307
	line	41
	
l3079:
;ds1307.c: 41: dummy = read_ds1307(0x00);
	movlw	(0)&0ffh
	
	call	_read_ds1307
	movwf	((c:init_ds1307@dummy))^00h,c
	line	42
;ds1307.c: 42: write_ds1307(0x00, dummy & 0x7F);
	movf	((c:init_ds1307@dummy))^00h,c,w
	andlw	low(07Fh)
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(0)&0ffh
	
	call	_write_ds1307
	line	44
	
l122:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_ds1307
	__end_of_init_ds1307:
	signat	_init_ds1307,89
	global	_write_ds1307

;; *************** function _write_ds1307 *****************
;; Defined at:
;;		line 46 in file "ds1307.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;;  data            1   12[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1   13[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_write
;; This function is called by:
;;		_init_ds1307
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2,group=0
	line	46
global __ptext16
__ptext16:
psect	text16
	file	"ds1307.c"
	line	46
	
_write_ds1307:
;incstack = 0
	callstack 27
;write_ds1307@address stored from wreg
	movwf	((c:write_ds1307@address))^00h,c
	line	48
	
l2985:
;ds1307.c: 48: i2c_start();
	call	_i2c_start	;wreg free
	line	49
	
l2987:
;ds1307.c: 49: i2c_write(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_i2c_write
	line	50
	
l2989:
;ds1307.c: 50: i2c_write(address);
	movf	((c:write_ds1307@address))^00h,c,w
	
	call	_i2c_write
	line	51
	
l2991:
;ds1307.c: 51: i2c_write(data);
	movf	((c:write_ds1307@data))^00h,c,w
	
	call	_i2c_write
	line	52
	
l2993:
;ds1307.c: 52: i2c_stop();
	call	_i2c_stop	;wreg free
	line	53
	
l125:
	return	;funcret
	callstack 0
GLOBAL	__end_of_write_ds1307
	__end_of_write_ds1307:
	signat	_write_ds1307,8313
	global	_init_clcd

;; *************** function _init_clcd *****************
;; Defined at:
;;		line 27 in file "clcd.c"
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
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2,group=0
	file	"clcd.c"
	line	27
global __ptext17
__ptext17:
psect	text17
	file	"clcd.c"
	line	27
	
_init_clcd:
;incstack = 0
	callstack 27
	line	30
	
l3173:
;clcd.c: 30: TRISD = 0x00;
	movlw	low(0)
	movwf	((c:3989))^0f00h,c	;volatile
	line	32
	
l3175:
;clcd.c: 32: TRISC = TRISC & 0xF8;
	movf	((c:3988))^0f00h,c,w	;volatile
	andlw	low(0F8h)
	movwf	((c:3988))^0f00h,c	;volatile
	line	34
	
l3177:
;clcd.c: 34: RC0 = 0;
	bcf	c:(31760/8),(31760)&7	;volatile
	line	38
	
l3179:
;clcd.c: 38: _delay((unsigned long)((30)*(20000000/4000.0)));
	asmopt push
asmopt off
movlw	195
movwf	(??_init_clcd+0+0)^00h,c
	movlw	205
u3717:
decfsz	wreg,f
	bra	u3717
	decfsz	(??_init_clcd+0+0)^00h,c,f
	bra	u3717
	nop
asmopt pop

	line	41
	
l3181:
;clcd.c: 41: clcd_write(0x33, 0 );
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(033h)&0ffh
	
	call	_clcd_write
	line	42
	
l3183:
;clcd.c: 42: _delay((unsigned long)((4100)*(20000000/4000000.0)));
	asmopt push
asmopt off
movlw	27
movwf	(??_init_clcd+0+0)^00h,c
	movlw	158
u3727:
decfsz	wreg,f
	bra	u3727
	decfsz	(??_init_clcd+0+0)^00h,c,f
	bra	u3727
	nop2
asmopt pop

	line	43
	
l3185:
;clcd.c: 43: clcd_write(0x33, 0 );
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(033h)&0ffh
	
	call	_clcd_write
	line	44
	
l3187:
;clcd.c: 44: _delay((unsigned long)((100)*(20000000/4000000.0)));
	asmopt push
asmopt off
	movlw	166
u3737:
decfsz	wreg,f
	bra	u3737
	nop2
asmopt pop

	line	45
	
l3189:
;clcd.c: 45: clcd_write(0x33, 0 );
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(033h)&0ffh
	
	call	_clcd_write
	line	46
	
l3191:
;clcd.c: 46: _delay((unsigned long)((1)*(20000000/4000000.0)));
		asmopt push
	asmopt off
	nop2	;2 cycle nop
	nop2	;2 cycle nop
	nop
	asmopt pop

	line	48
	
l3193:
;clcd.c: 48: clcd_write(0x02, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(02h)&0ffh
	
	call	_clcd_write
	line	49
	
l3195:
;clcd.c: 49: _delay((unsigned long)((100)*(20000000/4000000.0)));
	asmopt push
asmopt off
	movlw	166
u3747:
decfsz	wreg,f
	bra	u3747
	nop2
asmopt pop

	line	50
	
l3197:
;clcd.c: 50: clcd_write(0x38, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(038h)&0ffh
	
	call	_clcd_write
	line	51
	
l3199:
;clcd.c: 51: _delay((unsigned long)((100)*(20000000/4000000.0)));
	asmopt push
asmopt off
	movlw	166
u3757:
decfsz	wreg,f
	bra	u3757
	nop2
asmopt pop

	line	52
	
l3201:
;clcd.c: 52: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	53
	
l3203:
;clcd.c: 53: _delay((unsigned long)((500)*(20000000/4000000.0)));
	asmopt push
asmopt off
movlw	4
movwf	(??_init_clcd+0+0)^00h,c
	movlw	62
u3767:
decfsz	wreg,f
	bra	u3767
	decfsz	(??_init_clcd+0+0)^00h,c,f
	bra	u3767
asmopt pop

	line	54
	
l3205:
;clcd.c: 54: clcd_write(0x0C, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(0Ch)&0ffh
	
	call	_clcd_write
	line	55
	
l3207:
;clcd.c: 55: _delay((unsigned long)((100)*(20000000/4000000.0)));
	asmopt push
asmopt off
	movlw	166
u3777:
decfsz	wreg,f
	bra	u3777
	nop2
asmopt pop

	line	56
	
l282:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_clcd
	__end_of_init_clcd:
	signat	_init_clcd,89
	global	_init_adc

;; *************** function _init_adc *****************
;; Defined at:
;;		line 4 in file "adc.c"
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
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2,group=0
	file	"adc.c"
	line	4
global __ptext18
__ptext18:
psect	text18
	file	"adc.c"
	line	4
	
_init_adc:
;incstack = 0
	callstack 28
	line	7
	
l3053:
;adc.c: 7: ADFM = 1;
	bsf	c:(32263/8),(32263)&7	;volatile
	line	13
;adc.c: 13: ACQT2 = 0;
	bcf	c:(32261/8),(32261)&7	;volatile
	line	14
;adc.c: 14: ACQT1 = 1;
	bsf	c:(32260/8),(32260)&7	;volatile
	line	15
;adc.c: 15: ACQT0 = 0;
	bcf	c:(32259/8),(32259)&7	;volatile
	line	21
;adc.c: 21: ADCS0 = 0;
	bcf	c:(32256/8),(32256)&7	;volatile
	line	22
;adc.c: 22: ADCS1 = 1;
	bsf	c:(32257/8),(32257)&7	;volatile
	line	23
;adc.c: 23: ADCS2 = 0;
	bcf	c:(32258/8),(32258)&7	;volatile
	line	26
;adc.c: 26: GODONE = 0;
	bcf	c:(32273/8),(32273)&7	;volatile
	line	31
;adc.c: 31: VCFG1 = 0;
	bcf	c:(32269/8),(32269)&7	;volatile
	line	33
;adc.c: 33: VCFG0 = 0;
	bcf	c:(32268/8),(32268)&7	;volatile
	line	36
	
l3055:
;adc.c: 36: ADRESH = 0;
	movlw	low(0)
	movwf	((c:4036))^0f00h,c	;volatile
	line	37
;adc.c: 37: ADRESL = 0;
	movlw	low(0)
	movwf	((c:4035))^0f00h,c	;volatile
	line	40
	
l3057:
;adc.c: 40: ADON = 1;
	bsf	c:(32272/8),(32272)&7	;volatile
	line	41
	
l33:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_adc
	__end_of_init_adc:
	signat	_init_adc,89
	global	_get_time

;; *************** function _get_time *****************
;; Defined at:
;;		line 8 in file "time.c"
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
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_read_ds1307
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2,group=0
	file	"time.c"
	line	8
global __ptext19
__ptext19:
psect	text19
	file	"time.c"
	line	8
	
_get_time:
;incstack = 0
	callstack 25
	line	10
	
l3403:
;time.c: 10: clock_reg[0] = read_ds1307(0x02);
	movlw	(02h)&0ffh
	
	call	_read_ds1307
	movwf	((c:_clock_reg))^00h,c
	line	11
;time.c: 11: clock_reg[1] = read_ds1307(0x01);
	movlw	(01h)&0ffh
	
	call	_read_ds1307
	movwf	(0+((c:_clock_reg)+01h))^00h,c
	line	12
;time.c: 12: clock_reg[2] = read_ds1307(0x00);
	movlw	(0)&0ffh
	
	call	_read_ds1307
	movwf	(0+((c:_clock_reg)+02h))^00h,c
	line	14
	
l3405:
;time.c: 14: if (clock_reg[0] & 0x40)
	
	btfss	((c:_clock_reg))^00h,c,(6)&7
	goto	u2301
	goto	u2300
u2301:
	goto	l3409
u2300:
	line	16
	
l3407:
;time.c: 15: {;time.c: 16: timer[0] = '0' + ((clock_reg[0] >> 4) & 0x01);
	swapf	((c:_clock_reg))^00h,c,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(01h)
	addlw	low(030h)
	movlb	0	; () banked
	movwf	((_timer))&0ffh
	line	17
;time.c: 17: timer[1] = '0' + (clock_reg[0] & 0x0F);
	movf	((c:_clock_reg))^00h,c,w
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+(_timer+01h))&0ffh
	line	18
;time.c: 18: }
	goto	l3411
	line	21
	
l3409:
;time.c: 19: else;time.c: 20: {;time.c: 21: timer[0] = '0' + ((clock_reg[0] >> 4) & 0x03);
	swapf	((c:_clock_reg))^00h,c,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(03h)
	addlw	low(030h)
	movlb	0	; () banked
	movwf	((_timer))&0ffh
	line	22
;time.c: 22: timer[1] = '0' + (clock_reg[0] & 0x0F);
	movf	((c:_clock_reg))^00h,c,w
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+(_timer+01h))&0ffh
	line	24
	
l3411:; BSR set to: 0

;time.c: 23: };time.c: 24: timer[2] = ':';
	movlw	low(03Ah)
	movwf	(0+(_timer+02h))&0ffh
	line	25
	
l3413:; BSR set to: 0

;time.c: 25: timer[3] = '0' + ((clock_reg[1] >> 4) & 0x0F);
	swapf	(0+((c:_clock_reg)+01h))^00h,c,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+(_timer+03h))&0ffh
	line	26
	
l3415:; BSR set to: 0

;time.c: 26: timer[4] = '0' + (clock_reg[1] & 0x0F);
	movf	(0+((c:_clock_reg)+01h))^00h,c,w
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+(_timer+04h))&0ffh
	line	27
	
l3417:; BSR set to: 0

;time.c: 27: timer[5] = ':';
	movlw	low(03Ah)
	movwf	(0+(_timer+05h))&0ffh
	line	28
;time.c: 28: timer[6] = '0' + ((clock_reg[2] >> 4) & 0x07);
	swapf	(0+((c:_clock_reg)+02h))^00h,c,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(07h)
	addlw	low(030h)
	movwf	(0+(_timer+06h))&0ffh
	line	29
;time.c: 29: timer[7] = '0' + (clock_reg[2] & 0x0F);
	movf	(0+((c:_clock_reg)+02h))^00h,c,w
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+(_timer+07h))&0ffh
	line	30
	
l3419:; BSR set to: 0

;time.c: 30: timer[8] = '\0';
	movlw	low(0)
	movwf	(0+(_timer+08h))&0ffh
	line	31
	
l139:; BSR set to: 0

	return	;funcret
	callstack 0
GLOBAL	__end_of_get_time
	__end_of_get_time:
	signat	_get_time,89
	global	_read_ds1307

;; *************** function _read_ds1307 *****************
;; Defined at:
;;		line 55 in file "ds1307.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    1[COMRAM] unsigned char 
;;  data            1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_i2c_read
;;		_i2c_rep_start
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_write
;; This function is called by:
;;		_init_ds1307
;;		_get_time
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2,group=0
	file	"ds1307.c"
	line	55
global __ptext20
__ptext20:
psect	text20
	file	"ds1307.c"
	line	55
	
_read_ds1307:; BSR set to: 0

;incstack = 0
	callstack 24
;read_ds1307@address stored from wreg
	movwf	((c:read_ds1307@address))^00h,c
	line	59
	
l2971:
;ds1307.c: 57: unsigned char data;;ds1307.c: 59: i2c_start();
	call	_i2c_start	;wreg free
	line	60
	
l2973:
;ds1307.c: 60: i2c_write(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_i2c_write
	line	61
	
l2975:
;ds1307.c: 61: i2c_write(address);
	movf	((c:read_ds1307@address))^00h,c,w
	
	call	_i2c_write
	line	62
	
l2977:
;ds1307.c: 62: i2c_rep_start();
	call	_i2c_rep_start	;wreg free
	line	63
	
l2979:
;ds1307.c: 63: i2c_write(0xD1);
	movlw	(0D1h)&0ffh
	
	call	_i2c_write
	line	64
;ds1307.c: 64: data = i2c_read();
	call	_i2c_read	;wreg free
	movwf	((c:read_ds1307@data))^00h,c
	line	65
	
l2981:
;ds1307.c: 65: i2c_stop();
	call	_i2c_stop	;wreg free
	line	67
;ds1307.c: 67: return data;
	movf	((c:read_ds1307@data))^00h,c,w
	line	68
	
l128:
	return	;funcret
	callstack 0
GLOBAL	__end_of_read_ds1307
	__end_of_read_ds1307:
	signat	_read_ds1307,4217
	global	_download

;; *************** function _download *****************
;; Defined at:
;;		line 86 in file "Scrolling.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  j               2   13[COMRAM] int 
;;  i               2   15[COMRAM] int 
;;  w               4    9[COMRAM] unsigned long 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         8       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:        11       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		___wmul
;;		_clcd_print
;;		_clcd_write
;;		_putch
;;		_puts
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2,group=0
	file	"Scrolling.c"
	line	86
global __ptext21
__ptext21:
psect	text21
	file	"Scrolling.c"
	line	86
	
_download:
;incstack = 0
	callstack 27
	line	88
	
l3707:
;Scrolling.c: 88: if (rotation > 0) {
	movf	((c:_rotation))^00h,c,w
	btfsc	status,2
	goto	u2611
	goto	u2610
u2611:
	goto	l3731
u2610:
	line	89
	
l3709:
;Scrolling.c: 89: for (int i = 0; i < total; i++) {
	movlw	high(0)
	movwf	((c:download@i+1))^00h,c
	movlw	low(0)
	movwf	((c:download@i))^00h,c
	goto	l3729
	line	90
	
l3711:
;Scrolling.c: 90: for (int j = 0; j <= 9; j++) {
	movlw	high(0)
	movwf	((c:download@j+1))^00h,c
	movlw	low(0)
	movwf	((c:download@j))^00h,c
	line	91
	
l3717:
;Scrolling.c: 91: putch(viewdisplay[i][j]);
	movff	(c:download@i),(c:___wmul@multiplier)
	movff	(c:download@i+1),(c:___wmul@multiplier+1)
	movlw	high(0Dh)
	movwf	((c:___wmul@multiplicand+1))^00h,c
	movlw	low(0Dh)
	movwf	((c:___wmul@multiplicand))^00h,c
	call	___wmul	;wreg free
	movlw	low(_viewdisplay)
	addwf	(0+?___wmul)^00h,c,w
	movwf	(??_download+0+0)^00h,c
	movlw	high(_viewdisplay)
	addwfc	(1+?___wmul)^00h,c,w
	movwf	1+(??_download+0+0)^00h,c
	movf	((c:download@j))^00h,c,w
	addwf	(??_download+0+0)^00h,c,w
	movwf	c:fsr2l
	movf	((c:download@j+1))^00h,c,w
	addwfc	(??_download+0+1)^00h,c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	
	call	_putch
	line	90
	
l3719:
	infsnz	((c:download@j))^00h,c
	incf	((c:download@j+1))^00h,c
	
l3721:
	btfsc	((c:download@j+1))^00h,c,7
	goto	u2621
	movf	((c:download@j+1))^00h,c,w
	bnz	u2620
	movlw	10
	subwf	 ((c:download@j))^00h,c,w
	btfss	status,0
	goto	u2621
	goto	u2620

u2621:
	goto	l3717
u2620:
	line	93
	
l3723:
;Scrolling.c: 92: };Scrolling.c: 93: putch(viewdisplay[i][10] + '0');
	movff	(c:download@i),(c:___wmul@multiplier)
	movff	(c:download@i+1),(c:___wmul@multiplier+1)
	movlw	high(0Dh)
	movwf	((c:___wmul@multiplicand+1))^00h,c
	movlw	low(0Dh)
	movwf	((c:___wmul@multiplicand))^00h,c
	call	___wmul	;wreg free
	movlw	low(_viewdisplay+0Ah)
	addwf	(0+?___wmul)^00h,c,w
	movwf	c:fsr2l
	movlw	high(_viewdisplay+0Ah)
	addwfc	(1+?___wmul)^00h,c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	addlw	low(030h)
	
	call	_putch
	line	94
;Scrolling.c: 94: putch(viewdisplay[i][11] + '0');
	movff	(c:download@i),(c:___wmul@multiplier)
	movff	(c:download@i+1),(c:___wmul@multiplier+1)
	movlw	high(0Dh)
	movwf	((c:___wmul@multiplicand+1))^00h,c
	movlw	low(0Dh)
	movwf	((c:___wmul@multiplicand))^00h,c
	call	___wmul	;wreg free
	movlw	low(_viewdisplay+0Bh)
	addwf	(0+?___wmul)^00h,c,w
	movwf	c:fsr2l
	movlw	high(_viewdisplay+0Bh)
	addwfc	(1+?___wmul)^00h,c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	addlw	low(030h)
	
	call	_putch
	line	95
	
l3725:
;Scrolling.c: 95: puts("\n\r");
		movlw	low(STR_34)
	movwf	((c:puts@s))^00h,c
	movlw	high(STR_34)
	movwf	((c:puts@s+1))^00h,c

	call	_puts	;wreg free
	line	89
	
l3727:
	infsnz	((c:download@i))^00h,c
	incf	((c:download@i+1))^00h,c
	
l3729:
	movf	((c:_total))^00h,c,w
	movwf	(??_download+0+0)^00h,c
	clrf	(??_download+0+0+1)^00h,c

		movf	(??_download+0+0)^00h,c,w
	subwf	((c:download@i))^00h,c,w
	movf	((c:download@i+1))^00h,c,w
	xorlw	80h
	movwf	(??_download+2+0)^00h,c
	movf	(??_download+0+1)^00h,c,w
	xorlw	80h
	subwfb	(??_download+2+0)^00h,c,w
	btfss	status,0
	goto	u2631
	goto	u2630

u2631:
	goto	l3711
u2630:
	goto	l3733
	line	99
	
l3731:
;Scrolling.c: 99: puts("NO LOG AVAIABLE\n\r");
		movlw	low(STR_35)
	movwf	((c:puts@s))^00h,c
	movlw	high(STR_35)
	movwf	((c:puts@s+1))^00h,c

	call	_puts	;wreg free
	line	102
	
l3733:
;Scrolling.c: 100: };Scrolling.c: 102: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	103
	
l3735:
;Scrolling.c: 103: clcd_print("DOWNLOAD", (0x80 + (0)));
		movlw	low(STR_36)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_36)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	104
	
l3737:
;Scrolling.c: 104: clcd_print("COMPLETED", (0xC0 + (6)));
		movlw	low(STR_37)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_37)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C6h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	105
	
l3739:
;Scrolling.c: 105: for (unsigned long int w = 500000; w--;);
	movlw	low(07A120h)
	movwf	((c:download@w))^00h,c
	movlw	high(07A120h)
	movwf	((c:download@w+1))^00h,c
	movlw	low highword(07A120h)
	movwf	((c:download@w+2))^00h,c
	movlw	high highword(07A120h)
	movwf	((c:download@w+3))^00h,c
	
l3741:
	decf	((c:download@w))^00h,c
	movlw	0
	subwfb	((c:download@w+1))^00h,c
	subwfb	((c:download@w+2))^00h,c
	subwfb	((c:download@w+3))^00h,c
		incf	((c:download@w))^00h,c,w
	bnz	u2641
	incf	((c:download@w+1))^00h,c,w
	bnz	u2641
	incf	((c:download@w+2))^00h,c,w
	bnz	u2641
	incf	((c:download@w+3))^00h,c,w
	btfss	status,2
	goto	u2641
	goto	u2640

u2641:
	goto	l3741
u2640:
	line	106
	
l3743:
;Scrolling.c: 106: changemenu = 2;
	movlw	low(02h)
	movwf	((c:_changemenu))^00h,c
	line	108
	
l726:
	return	;funcret
	callstack 0
GLOBAL	__end_of_download
	__end_of_download:
	signat	_download,89
	global	_puts

;; *************** function _puts *****************
;; Defined at:
;;		line 40 in file "uart.c"
;; Parameters:    Size  Location     Type
;;  s               2    1[COMRAM] PTR const unsigned char 
;;		 -> STR_35(18), STR_34(3), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    1[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_putch
;; This function is called by:
;;		_download
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2,group=0
	file	"uart.c"
	line	40
global __ptext22
__ptext22:
psect	text22
	file	"uart.c"
	line	40
	
_puts:
;incstack = 0
	callstack 27
	line	42
	
l3165:
;uart.c: 42: while(*s)
	goto	l3171
	line	44
	
l3167:
;uart.c: 43: {;uart.c: 44: putch(*s++);
	movff	(c:puts@s),tblptrl
	movff	(c:puts@s+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_putch
	
l3169:
	infsnz	((c:puts@s))^00h,c
	incf	((c:puts@s+1))^00h,c
	line	42
	
l3171:
	movff	(c:puts@s),tblptrl
	movff	(c:puts@s+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	iorlw	0
	btfss	status,2
	goto	u2041
	goto	u2040
u2041:
	goto	l3167
u2040:
	line	48
	
l247:
	return	;funcret
	callstack 0
GLOBAL	__end_of_puts
	__end_of_puts:
	signat	_puts,4218
	global	_putch

;; *************** function _putch *****************
;; Defined at:
;;		line 29 in file "uart.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
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
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_puts
;;		_download
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2,group=0
	line	29
global __ptext23
__ptext23:
psect	text23
	file	"uart.c"
	line	29
	
_putch:
;incstack = 0
	callstack 27
;putch@byte stored from wreg
	movwf	((c:putch@byte))^00h,c
	line	33
	
l2995:
	line	36
;uart.c: 33: while(!TXIF)
	
l238:
	line	33
	btfss	c:(31988/8),(31988)&7	;volatile
	goto	u1871
	goto	u1870
u1871:
	goto	l238
u1870:
	line	37
	
l2997:
;uart.c: 36: };uart.c: 37: TXREG = byte;
	movff	(c:putch@byte),(c:4013)	;volatile
	line	38
	
l241:
	return	;funcret
	callstack 0
GLOBAL	__end_of_putch
	__end_of_putch:
	signat	_putch,4217
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files\Microchip\xc8\v2.46\pic\sources\c90\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMRAM] unsigned int 
;;  multiplicand    2    2[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned int 
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
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_copy
;;		_download
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c90\common\Umul16.c"
	line	15
global __ptext24
__ptext24:
psect	text24
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c90\common\Umul16.c"
	line	15
	
___wmul:
;incstack = 0
	callstack 27
	line	37
	
l3047:
	movf	((c:___wmul@multiplier))^00h,c,w
	mulwf	((c:___wmul@multiplicand))^00h,c
	movff	prodl,(c:___wmul@product)
	movff	prodh,(c:___wmul@product+1)
	line	38
	movf	((c:___wmul@multiplier))^00h,c,w
	mulwf	(0+((c:___wmul@multiplicand)+01h))^00h,c
	movf	(prodl)^0f00h,c,w
	addwf	((c:___wmul@product+1))^00h,c

	line	39
	movf	(0+((c:___wmul@multiplier)+01h))^00h,c,w
	mulwf	((c:___wmul@multiplicand))^00h,c
	movf	(prodl)^0f00h,c,w
	addwf	((c:___wmul@product+1))^00h,c

	line	52
	
l3049:
	movff	(c:___wmul@product),(c:?___wmul)
	movff	(c:___wmul@product+1),(c:?___wmul+1)
	line	53
	
l826:
	return	;funcret
	callstack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	_dashboard

;; *************** function _dashboard *****************
;; Defined at:
;;		line 90 in file "newmain.c"
;; Parameters:    Size  Location     Type
;;  i               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  i               1   14[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
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
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		_clcd_print
;;		_clcd_putch
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2,group=0
	file	"newmain.c"
	line	90
global __ptext25
__ptext25:
psect	text25
	file	"newmain.c"
	line	90
	
_dashboard:
;incstack = 0
	callstack 27
;dashboard@i stored from wreg
	movwf	((c:dashboard@i))^00h,c
	line	91
	
l3513:
;newmain.c: 91: clcd_print("Time", (0x80 + (0)));
		movlw	low(STR_9)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_9)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	92
;newmain.c: 92: clcd_print("Gear", (0x80 + (8)));
		movlw	low(STR_10)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_10)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(088h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	93
;newmain.c: 93: clcd_print("Spd", (0x80 + (13)));
		movlw	low(STR_11)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_11)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(08Dh)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	95
	
l3515:
;newmain.c: 95: clcd_putch((speed % 10) + '0', (0xC0 + (14)));
	movlw	low(0CEh)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	(c:_speed),(c:___lwmod@dividend)
	movff	(c:_speed+1),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	96
	
l3517:
;newmain.c: 96: clcd_putch((speed / 10) + '0', (0xC0 + (13)));
	movlw	low(0CDh)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	(c:_speed),(c:___lwdiv@dividend)
	movff	(c:_speed+1),(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	98
	
l3519:
;newmain.c: 98: clcd_print(gear[i], (0xC0 + (9)));
	movf	((c:dashboard@i))^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(_gear)
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(c:clcd_print@data)
	movff	postdec2,(c:clcd_print@data+1)
	movlw	low(0C9h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	99
	
l3521:
;newmain.c: 99: clcd_print(timer, (0xC0 + (0)));
		movlw	low(_timer)
	movwf	((c:clcd_print@data))^00h,c
	clrf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	100
	
l506:
	return	;funcret
	callstack 0
GLOBAL	__end_of_dashboard
	__end_of_dashboard:
	signat	_dashboard,4217
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v2.46\pic\sources\c90\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    7[COMRAM] unsigned int 
;;  divisor         2    9[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   11[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_view_save
;;		_dashboard
;;		_password_screen
;;		_main
;;		_set_time
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c90\common\lwmod.c"
	line	7
global __ptext26
__ptext26:
psect	text26
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c90\common\lwmod.c"
	line	7
	
___lwmod:
;incstack = 0
	callstack 28
	line	12
	
l3377:
	movf	((c:___lwmod@divisor))^00h,c,w
iorwf	((c:___lwmod@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u2261
	goto	u2260

u2261:
	goto	l1315
u2260:
	line	13
	
l3379:
	movlw	low(01h)
	movwf	((c:___lwmod@counter))^00h,c
	line	14
	goto	l3383
	line	15
	
l3381:
	bcf	status,0
	rlcf	((c:___lwmod@divisor))^00h,c
	rlcf	((c:___lwmod@divisor+1))^00h,c
	line	16
	incf	((c:___lwmod@counter))^00h,c
	line	14
	
l3383:
	
	btfss	((c:___lwmod@divisor+1))^00h,c,(15)&7
	goto	u2271
	goto	u2270
u2271:
	goto	l3381
u2270:
	line	19
	
l3385:
		movf	((c:___lwmod@divisor))^00h,c,w
	subwf	((c:___lwmod@dividend))^00h,c,w
	movf	((c:___lwmod@divisor+1))^00h,c,w
	subwfb	((c:___lwmod@dividend+1))^00h,c,w
	btfss	status,0
	goto	u2281
	goto	u2280

u2281:
	goto	l3389
u2280:
	line	20
	
l3387:
	movf	((c:___lwmod@divisor))^00h,c,w
	subwf	((c:___lwmod@dividend))^00h,c
	movf	((c:___lwmod@divisor+1))^00h,c,w
	subwfb	((c:___lwmod@dividend+1))^00h,c

	line	21
	
l3389:
	bcf	status,0
	rrcf	((c:___lwmod@divisor+1))^00h,c
	rrcf	((c:___lwmod@divisor))^00h,c
	line	22
	
l3391:
	decfsz	((c:___lwmod@counter))^00h,c
	
	goto	l3385
	line	23
	
l1315:
	line	24
	movff	(c:___lwmod@dividend),(c:?___lwmod)
	movff	(c:___lwmod@dividend+1),(c:?___lwmod+1)
	line	25
	
l1322:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v2.46\pic\sources\c90\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] unsigned int 
;;  divisor         2    2[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    4[COMRAM] unsigned int 
;;  counter         1    6[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_view_save
;;		_dashboard
;;		_password_screen
;;		_main
;;		_set_time
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c90\common\lwdiv.c"
	line	7
global __ptext27
__ptext27:
psect	text27
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c90\common\lwdiv.c"
	line	7
	
___lwdiv:
;incstack = 0
	callstack 28
	line	13
	
l3355:
	movlw	high(0)
	movwf	((c:___lwdiv@quotient+1))^00h,c
	movlw	low(0)
	movwf	((c:___lwdiv@quotient))^00h,c
	line	14
	
l3357:
	movf	((c:___lwdiv@divisor))^00h,c,w
iorwf	((c:___lwdiv@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u2231
	goto	u2230

u2231:
	goto	l1305
u2230:
	line	15
	
l3359:
	movlw	low(01h)
	movwf	((c:___lwdiv@counter))^00h,c
	line	16
	goto	l3363
	line	17
	
l3361:
	bcf	status,0
	rlcf	((c:___lwdiv@divisor))^00h,c
	rlcf	((c:___lwdiv@divisor+1))^00h,c
	line	18
	incf	((c:___lwdiv@counter))^00h,c
	line	16
	
l3363:
	
	btfss	((c:___lwdiv@divisor+1))^00h,c,(15)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l3361
u2240:
	line	21
	
l3365:
	bcf	status,0
	rlcf	((c:___lwdiv@quotient))^00h,c
	rlcf	((c:___lwdiv@quotient+1))^00h,c
	line	22
	
l3367:
		movf	((c:___lwdiv@divisor))^00h,c,w
	subwf	((c:___lwdiv@dividend))^00h,c,w
	movf	((c:___lwdiv@divisor+1))^00h,c,w
	subwfb	((c:___lwdiv@dividend+1))^00h,c,w
	btfss	status,0
	goto	u2251
	goto	u2250

u2251:
	goto	l3373
u2250:
	line	23
	
l3369:
	movf	((c:___lwdiv@divisor))^00h,c,w
	subwf	((c:___lwdiv@dividend))^00h,c
	movf	((c:___lwdiv@divisor+1))^00h,c,w
	subwfb	((c:___lwdiv@dividend+1))^00h,c

	line	24
	
l3371:
	bsf	(0+(0/8)+(c:___lwdiv@quotient))^00h,c,(0)&7
	line	26
	
l3373:
	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1))^00h,c
	rrcf	((c:___lwdiv@divisor))^00h,c
	line	27
	
l3375:
	decfsz	((c:___lwdiv@counter))^00h,c
	
	goto	l3365
	line	28
	
l1305:
	line	29
	movff	(c:___lwdiv@quotient),(c:?___lwdiv)
	movff	(c:___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	30
	
l1312:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_clear

;; *************** function _clear *****************
;; Defined at:
;;		line 73 in file "Scrolling.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  w               4    5[COMRAM] unsigned long 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_clcd_print
;;		_clcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2,group=0
	file	"Scrolling.c"
	line	73
global __ptext28
__ptext28:
psect	text28
	file	"Scrolling.c"
	line	73
	
_clear:
;incstack = 0
	callstack 27
	line	75
	
l3691:
;Scrolling.c: 75: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	76
	
l3693:
;Scrolling.c: 76: clcd_print("LOG CLEARED", (0x80 + (0)));
		movlw	low(STR_32)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_32)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	77
	
l3695:
;Scrolling.c: 77: clcd_print("SUCCESSFULLY", (0xC0 + (5)));
		movlw	low(STR_33)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_33)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C5h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	78
	
l3697:
;Scrolling.c: 78: for (unsigned long int w = 500000; w--;);
	movlw	low(07A120h)
	movwf	((c:clear@w))^00h,c
	movlw	high(07A120h)
	movwf	((c:clear@w+1))^00h,c
	movlw	low highword(07A120h)
	movwf	((c:clear@w+2))^00h,c
	movlw	high highword(07A120h)
	movwf	((c:clear@w+3))^00h,c
	
l3699:
	decf	((c:clear@w))^00h,c
	movlw	0
	subwfb	((c:clear@w+1))^00h,c
	subwfb	((c:clear@w+2))^00h,c
	subwfb	((c:clear@w+3))^00h,c
		incf	((c:clear@w))^00h,c,w
	bnz	u2601
	incf	((c:clear@w+1))^00h,c,w
	bnz	u2601
	incf	((c:clear@w+2))^00h,c,w
	bnz	u2601
	incf	((c:clear@w+3))^00h,c,w
	btfss	status,2
	goto	u2601
	goto	u2600

u2601:
	goto	l3699
u2600:
	line	80
	
l3701:
;Scrolling.c: 80: rotation = 0;
	movlw	low(0)
	movwf	((c:_rotation))^00h,c
	line	81
;Scrolling.c: 81: total = 0;
	movlw	low(0)
	movwf	((c:_total))^00h,c
	line	82
;Scrolling.c: 82: changemenu = 2;
	movlw	low(02h)
	movwf	((c:_changemenu))^00h,c
	line	83
	
l3703:
;Scrolling.c: 83: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	85
	
l713:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clear
	__end_of_clear:
	signat	_clear,89
	global	_change_password

;; *************** function _change_password *****************
;; Defined at:
;;		line 157 in file "Scrolling.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  key             1   29[COMRAM] unsigned char 
;;  w               4   21[COMRAM] unsigned long 
;;  w               4   17[COMRAM] unsigned long 
;;  w               4   25[COMRAM] unsigned long 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:        13       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:        13       0       0       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_clcd_print
;;		_clcd_putch
;;		_clcd_write
;;		_compare
;;		_get
;;		_write_eeprom
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2,group=0
	line	157
global __ptext29
__ptext29:
psect	text29
	file	"Scrolling.c"
	line	157
	
_change_password:
;incstack = 0
	callstack 24
;change_password@key stored from wreg
	movwf	((c:change_password@key))^00h,c
	line	161
	
l3797:
;Scrolling.c: 159: static unsigned char i = 0, j = 0, j1 = 0;;Scrolling.c: 161: if (i < 4) {
		movlw	04h-0
	cpfslt	((c:change_password@i))^00h,c
	goto	u2761
	goto	u2760

u2761:
	goto	l3833
u2760:
	line	162
	
l3799:
;Scrolling.c: 162: clcd_print("OLD PASSWORD", (0x80 + (0)));
		movlw	low(STR_42)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_42)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	164
	
l3801:
;Scrolling.c: 164: wait_c++;
	movlw	low(01h)
	addwf	((c:_wait_c))^00h,c
	movlw	0
	addwfc	((c:_wait_c+1))^00h,c
	addwfc	((c:_wait_c+2))^00h,c
	addwfc	((c:_wait_c+3))^00h,c
	line	165
	
l3803:
;Scrolling.c: 165: if (wait_c < 500) {
		movf	((c:_wait_c+3))^00h,c,w
	iorwf	((c:_wait_c+2))^00h,c,w
	bnz	u2771
	movlw	244
	subwf	 ((c:_wait_c))^00h,c,w
	movlw	1
	subwfb	((c:_wait_c+1))^00h,c,w
	btfsc	status,0
	goto	u2771
	goto	u2770

u2771:
	goto	l3807
u2770:
	line	166
	
l3805:
;Scrolling.c: 166: clcd_putch('_', (0xC0 + (i)));
	movf	((c:change_password@i))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(05Fh)&0ffh
	
	call	_clcd_putch
	line	167
;Scrolling.c: 167: } else if (wait_c < 800) {
	goto	l3813
	
l3807:
		movf	((c:_wait_c+3))^00h,c,w
	iorwf	((c:_wait_c+2))^00h,c,w
	bnz	u2781
	movlw	32
	subwf	 ((c:_wait_c))^00h,c,w
	movlw	3
	subwfb	((c:_wait_c+1))^00h,c,w
	btfsc	status,0
	goto	u2781
	goto	u2780

u2781:
	goto	l3811
u2780:
	line	168
	
l3809:
;Scrolling.c: 168: clcd_putch(' ', (0xC0 + (i)));
	movf	((c:change_password@i))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	169
;Scrolling.c: 169: } else {
	goto	l3813
	line	170
	
l3811:
;Scrolling.c: 170: wait_c = 0;
	movlw	low(0)
	movwf	((c:_wait_c))^00h,c
	movlw	high(0)
	movwf	((c:_wait_c+1))^00h,c
	movlw	low highword(0)
	movwf	((c:_wait_c+2))^00h,c
	movlw	high highword(0)
	movwf	((c:_wait_c+3))^00h,c
	line	174
	
l3813:
;Scrolling.c: 171: };Scrolling.c: 174: if (key == 11) {
		movlw	11
	xorwf	((c:change_password@key))^00h,c,w
	btfss	status,2
	goto	u2791
	goto	u2790

u2791:
	goto	l3821
u2790:
	line	175
	
l3815:
;Scrolling.c: 175: str[i] = '1';
	movf	((c:change_password@i))^00h,c,w
	addlw	low(_str)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(031h)
	movwf	indf2
	line	176
	
l3817:
;Scrolling.c: 176: clcd_putch('*', (0xC0 + (i)));
	movf	((c:change_password@i))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	line	177
	
l3819:
;Scrolling.c: 177: i++;
	incf	((c:change_password@i))^00h,c
	line	179
;Scrolling.c: 179: } else if (key == 12) {
	goto	l3829
	
l3821:
		movlw	12
	xorwf	((c:change_password@key))^00h,c,w
	btfss	status,2
	goto	u2801
	goto	u2800

u2801:
	goto	l3829
u2800:
	line	180
	
l3823:
;Scrolling.c: 180: str[i] = '0';
	movf	((c:change_password@i))^00h,c,w
	addlw	low(_str)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(030h)
	movwf	indf2
	line	181
	
l3825:
;Scrolling.c: 181: clcd_putch('*', (0xC0 + (i)));
	movf	((c:change_password@i))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	goto	l3819
	line	185
	
l3829:
;Scrolling.c: 184: };Scrolling.c: 185: if (i == 4) {
		movlw	4
	xorwf	((c:change_password@i))^00h,c,w
	btfss	status,2
	goto	u2811
	goto	u2810

u2811:
	goto	l792
u2810:
	line	186
	
l3831:
;Scrolling.c: 186: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	goto	l792
	line	187
	
l763:
	line	188
;Scrolling.c: 187: };Scrolling.c: 188: } else if (i == 4) {
	goto	l792
	
l3833:
		movlw	4
	xorwf	((c:change_password@i))^00h,c,w
	btfss	status,2
	goto	u2821
	goto	u2820

u2821:
	goto	l792
u2820:
	line	189
	
l3835:
;Scrolling.c: 189: if (compare(str, password)) {
		movlw	low(_str)
	movwf	((c:compare@str1))^00h,c

		movlw	low(_password)
	movwf	((c:compare@str2))^00h,c

	call	_compare	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u2831
	goto	u2830
u2831:
	goto	l3949
u2830:
	line	190
	
l3837:
;Scrolling.c: 190: if (j < 4) {
		movlw	04h-0
	cpfslt	((c:change_password@j))^00h,c
	goto	u2841
	goto	u2840

u2841:
	goto	l3873
u2840:
	line	191
	
l3839:
;Scrolling.c: 191: clcd_print("NEW PASSWORD", (0x80 + (0)));
		movlw	low(STR_43)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_43)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	192
	
l3841:
;Scrolling.c: 192: wait_c++;
	movlw	low(01h)
	addwf	((c:_wait_c))^00h,c
	movlw	0
	addwfc	((c:_wait_c+1))^00h,c
	addwfc	((c:_wait_c+2))^00h,c
	addwfc	((c:_wait_c+3))^00h,c
	line	193
	
l3843:
;Scrolling.c: 193: if (wait_c < 500) {
		movf	((c:_wait_c+3))^00h,c,w
	iorwf	((c:_wait_c+2))^00h,c,w
	bnz	u2851
	movlw	244
	subwf	 ((c:_wait_c))^00h,c,w
	movlw	1
	subwfb	((c:_wait_c+1))^00h,c,w
	btfsc	status,0
	goto	u2851
	goto	u2850

u2851:
	goto	l3847
u2850:
	line	194
	
l3845:
;Scrolling.c: 194: clcd_putch('_', (0xC0 + (j)));
	movf	((c:change_password@j))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(05Fh)&0ffh
	
	call	_clcd_putch
	line	195
;Scrolling.c: 195: } else if (wait_c < 800) {
	goto	l3853
	
l3847:
		movf	((c:_wait_c+3))^00h,c,w
	iorwf	((c:_wait_c+2))^00h,c,w
	bnz	u2861
	movlw	32
	subwf	 ((c:_wait_c))^00h,c,w
	movlw	3
	subwfb	((c:_wait_c+1))^00h,c,w
	btfsc	status,0
	goto	u2861
	goto	u2860

u2861:
	goto	l3851
u2860:
	line	196
	
l3849:
;Scrolling.c: 196: clcd_putch(' ', (0xC0 + (j)));
	movf	((c:change_password@j))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	197
;Scrolling.c: 197: } else {
	goto	l3853
	line	198
	
l3851:
;Scrolling.c: 198: wait_c = 0;
	movlw	low(0)
	movwf	((c:_wait_c))^00h,c
	movlw	high(0)
	movwf	((c:_wait_c+1))^00h,c
	movlw	low highword(0)
	movwf	((c:_wait_c+2))^00h,c
	movlw	high highword(0)
	movwf	((c:_wait_c+3))^00h,c
	line	202
	
l3853:
;Scrolling.c: 199: };Scrolling.c: 202: if (key == 11) {
		movlw	11
	xorwf	((c:change_password@key))^00h,c,w
	btfss	status,2
	goto	u2871
	goto	u2870

u2871:
	goto	l3861
u2870:
	line	203
	
l3855:
;Scrolling.c: 203: str2[j] = '1';
	movf	((c:change_password@j))^00h,c,w
	addlw	low(_str2)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(031h)
	movwf	indf2
	line	204
	
l3857:
;Scrolling.c: 204: clcd_putch('*', (0xC0 + (j)));
	movf	((c:change_password@j))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	line	205
	
l3859:
;Scrolling.c: 205: j++;
	incf	((c:change_password@j))^00h,c
	line	207
;Scrolling.c: 207: } else if (key == 12) {
	goto	l3869
	
l3861:
		movlw	12
	xorwf	((c:change_password@key))^00h,c,w
	btfss	status,2
	goto	u2881
	goto	u2880

u2881:
	goto	l3869
u2880:
	line	208
	
l3863:
;Scrolling.c: 208: str2[j] = '0';
	movf	((c:change_password@j))^00h,c,w
	addlw	low(_str2)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(030h)
	movwf	indf2
	line	209
	
l3865:
;Scrolling.c: 209: clcd_putch('*', (0xC0 + (j)));
	movf	((c:change_password@j))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	goto	l3859
	line	213
	
l3869:
;Scrolling.c: 212: };Scrolling.c: 213: if (j == 4) {
		movlw	4
	xorwf	((c:change_password@j))^00h,c,w
	btfss	status,2
	goto	u2891
	goto	u2890

u2891:
	goto	l792
u2890:
	line	214
	
l3871:
;Scrolling.c: 214: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	goto	l792
	line	216
	
l3873:
		movlw	4
	xorwf	((c:change_password@j))^00h,c,w
	btfss	status,2
	goto	u2901
	goto	u2900

u2901:
	goto	l763
u2900:
	line	217
	
l3875:
;Scrolling.c: 217: str2[j] = '\0';
	movf	((c:change_password@j))^00h,c,w
	addlw	low(_str2)
	movwf	fsr2l
	clrf	fsr2h
	clrf	indf2
	line	218
	
l3877:
;Scrolling.c: 218: if (j1 < 4) {
		movlw	04h-0
	cpfslt	((c:change_password@j1))^00h,c
	goto	u2911
	goto	u2910

u2911:
	goto	l3909
u2910:
	line	219
	
l3879:
;Scrolling.c: 219: clcd_print("R-ENTER PASSWORD", (0x80 + (0)));
		movlw	low(STR_44)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_44)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	220
	
l3881:
;Scrolling.c: 220: wait_c++;
	movlw	low(01h)
	addwf	((c:_wait_c))^00h,c
	movlw	0
	addwfc	((c:_wait_c+1))^00h,c
	addwfc	((c:_wait_c+2))^00h,c
	addwfc	((c:_wait_c+3))^00h,c
	line	221
	
l3883:
;Scrolling.c: 221: if (wait_c < 500) {
		movf	((c:_wait_c+3))^00h,c,w
	iorwf	((c:_wait_c+2))^00h,c,w
	bnz	u2921
	movlw	244
	subwf	 ((c:_wait_c))^00h,c,w
	movlw	1
	subwfb	((c:_wait_c+1))^00h,c,w
	btfsc	status,0
	goto	u2921
	goto	u2920

u2921:
	goto	l3887
u2920:
	line	222
	
l3885:
;Scrolling.c: 222: clcd_putch('_', (0xC0 + (j1)));
	movf	((c:change_password@j1))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(05Fh)&0ffh
	
	call	_clcd_putch
	line	223
;Scrolling.c: 223: } else if (wait_c < 800) {
	goto	l3893
	
l3887:
		movf	((c:_wait_c+3))^00h,c,w
	iorwf	((c:_wait_c+2))^00h,c,w
	bnz	u2931
	movlw	32
	subwf	 ((c:_wait_c))^00h,c,w
	movlw	3
	subwfb	((c:_wait_c+1))^00h,c,w
	btfsc	status,0
	goto	u2931
	goto	u2930

u2931:
	goto	l3891
u2930:
	line	224
	
l3889:
;Scrolling.c: 224: clcd_putch(' ', (0xC0 + (j1)));
	movf	((c:change_password@j1))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	225
;Scrolling.c: 225: } else {
	goto	l3893
	line	226
	
l3891:
;Scrolling.c: 226: wait_c = 0;
	movlw	low(0)
	movwf	((c:_wait_c))^00h,c
	movlw	high(0)
	movwf	((c:_wait_c+1))^00h,c
	movlw	low highword(0)
	movwf	((c:_wait_c+2))^00h,c
	movlw	high highword(0)
	movwf	((c:_wait_c+3))^00h,c
	line	230
	
l3893:
;Scrolling.c: 227: };Scrolling.c: 230: if (key == 11) {
		movlw	11
	xorwf	((c:change_password@key))^00h,c,w
	btfss	status,2
	goto	u2941
	goto	u2940

u2941:
	goto	l3901
u2940:
	line	231
	
l3895:
;Scrolling.c: 231: str1[j1] = '1';
	movf	((c:change_password@j1))^00h,c,w
	addlw	low(_str1)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(031h)
	movwf	indf2
	line	232
	
l3897:
;Scrolling.c: 232: clcd_putch('*', (0xC0 + (j1)));
	movf	((c:change_password@j1))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	line	233
	
l3899:
;Scrolling.c: 233: j1++;
	incf	((c:change_password@j1))^00h,c
	line	235
;Scrolling.c: 235: } else if (key == 12) {
	goto	l792
	
l3901:
		movlw	12
	xorwf	((c:change_password@key))^00h,c,w
	btfss	status,2
	goto	u2951
	goto	u2950

u2951:
	goto	l763
u2950:
	line	236
	
l3903:
;Scrolling.c: 236: str1[j1] = '0';
	movf	((c:change_password@j1))^00h,c,w
	addlw	low(_str1)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(030h)
	movwf	indf2
	line	237
	
l3905:
;Scrolling.c: 237: clcd_putch('*', (0xC0 + (j1)));
	movf	((c:change_password@j1))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	goto	l3899
	line	241
	
l3909:
		movlw	4
	xorwf	((c:change_password@j1))^00h,c,w
	btfss	status,2
	goto	u2961
	goto	u2960

u2961:
	goto	l763
u2960:
	line	242
	
l3911:
;Scrolling.c: 242: str1[j1] = '\0';
	movf	((c:change_password@j1))^00h,c,w
	addlw	low(_str1)
	movwf	fsr2l
	clrf	fsr2h
	clrf	indf2
	line	243
	
l3913:
;Scrolling.c: 243: if (compare(str2, str1)) {
		movlw	low(_str2)
	movwf	((c:compare@str1))^00h,c

		movlw	low(_str1)
	movwf	((c:compare@str2))^00h,c

	call	_compare	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u2971
	goto	u2970
u2971:
	goto	l3937
u2970:
	line	244
	
l3915:
;Scrolling.c: 244: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	245
	
l3917:
;Scrolling.c: 245: clcd_print("PASSWORD SET ", (0x80 + (0)));
		movlw	low(STR_45)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_45)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	246
	
l3919:
;Scrolling.c: 246: clcd_print("SUCCESSFULLY", (0xC0 + (2)));
		movlw	low(STR_46)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_46)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C2h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	247
	
l3921:
;Scrolling.c: 247: write_eeprom(str1);
		movlw	low(_str1)
	movwf	((c:write_eeprom@str))^00h,c

	call	_write_eeprom	;wreg free
	line	248
	
l3923:
;Scrolling.c: 248: get();
	call	_get	;wreg free
	line	249
	
l3925:; BSR set to: 0

;Scrolling.c: 249: for (unsigned long int w = 500000; w--;);
	movlw	low(07A120h)
	movwf	((c:change_password@w))^00h,c
	movlw	high(07A120h)
	movwf	((c:change_password@w+1))^00h,c
	movlw	low highword(07A120h)
	movwf	((c:change_password@w+2))^00h,c
	movlw	high highword(07A120h)
	movwf	((c:change_password@w+3))^00h,c
	
l3927:
	decf	((c:change_password@w))^00h,c
	movlw	0
	subwfb	((c:change_password@w+1))^00h,c
	subwfb	((c:change_password@w+2))^00h,c
	subwfb	((c:change_password@w+3))^00h,c
		incf	((c:change_password@w))^00h,c,w
	bnz	u2981
	incf	((c:change_password@w+1))^00h,c,w
	bnz	u2981
	incf	((c:change_password@w+2))^00h,c,w
	bnz	u2981
	incf	((c:change_password@w+3))^00h,c,w
	btfss	status,2
	goto	u2981
	goto	u2980

u2981:
	goto	l3927
u2980:
	line	250
	
l3929:
;Scrolling.c: 250: changemenu = 2;
	movlw	low(02h)
	movwf	((c:_changemenu))^00h,c
	line	251
	
l3931:
;Scrolling.c: 251: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	goto	l792
	line	254
	
l3937:
;Scrolling.c: 254: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	255
	
l3939:
;Scrolling.c: 255: clcd_print("WRONG PASSWORD", (0x80 + (0)));
		movlw	low(STR_47)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_47)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	256
	
l3941:
;Scrolling.c: 256: for (unsigned long int w = 500000; w--;);
	movlw	low(07A120h)
	movwf	((c:change_password@w_607))^00h,c
	movlw	high(07A120h)
	movwf	((c:change_password@w_607+1))^00h,c
	movlw	low highword(07A120h)
	movwf	((c:change_password@w_607+2))^00h,c
	movlw	high highword(07A120h)
	movwf	((c:change_password@w_607+3))^00h,c
	
l3943:
	decf	((c:change_password@w_607))^00h,c
	movlw	0
	subwfb	((c:change_password@w_607+1))^00h,c
	subwfb	((c:change_password@w_607+2))^00h,c
	subwfb	((c:change_password@w_607+3))^00h,c
		incf	((c:change_password@w_607))^00h,c,w
	bnz	u2991
	incf	((c:change_password@w_607+1))^00h,c,w
	bnz	u2991
	incf	((c:change_password@w_607+2))^00h,c,w
	bnz	u2991
	incf	((c:change_password@w_607+3))^00h,c,w
	btfss	status,2
	goto	u2991
	goto	u2990

u2991:
	goto	l3943
u2990:
	line	257
	
l3945:
;Scrolling.c: 257: changemenu = 2;
	movlw	low(02h)
	movwf	((c:_changemenu))^00h,c
	line	258
;Scrolling.c: 258: i = 0;
	movlw	low(0)
	movwf	((c:change_password@i))^00h,c
	line	259
;Scrolling.c: 259: j = 0;
	movlw	low(0)
	movwf	((c:change_password@j))^00h,c
	line	260
;Scrolling.c: 260: j1 = 0;
	movlw	low(0)
	movwf	((c:change_password@j1))^00h,c
	goto	l792
	line	266
	
l3949:
;Scrolling.c: 266: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	267
	
l3951:
;Scrolling.c: 267: clcd_print("WRONG PASSWORD", (0x80 + (0)));
		movlw	low(STR_48)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_48)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	268
	
l3953:
;Scrolling.c: 268: for (unsigned long int w = 500000; w--;);
	movlw	low(07A120h)
	movwf	((c:change_password@w_609))^00h,c
	movlw	high(07A120h)
	movwf	((c:change_password@w_609+1))^00h,c
	movlw	low highword(07A120h)
	movwf	((c:change_password@w_609+2))^00h,c
	movlw	high highword(07A120h)
	movwf	((c:change_password@w_609+3))^00h,c
	
l3955:
	decf	((c:change_password@w_609))^00h,c
	movlw	0
	subwfb	((c:change_password@w_609+1))^00h,c
	subwfb	((c:change_password@w_609+2))^00h,c
	subwfb	((c:change_password@w_609+3))^00h,c
		incf	((c:change_password@w_609))^00h,c,w
	bnz	u3001
	incf	((c:change_password@w_609+1))^00h,c,w
	bnz	u3001
	incf	((c:change_password@w_609+2))^00h,c,w
	bnz	u3001
	incf	((c:change_password@w_609+3))^00h,c,w
	btfss	status,2
	goto	u3001
	goto	u3000

u3001:
	goto	l3955
u3000:
	goto	l3945
	line	276
	
l792:
	return	;funcret
	callstack 0
GLOBAL	__end_of_change_password
	__end_of_change_password:
	signat	_change_password,4217
	global	_write_eeprom

;; *************** function _write_eeprom *****************
;; Defined at:
;;		line 19 in file "changepass.c"
;; Parameters:    Size  Location     Type
;;  str             1   16[COMRAM] PTR unsigned char 
;;		 -> str1(5), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_write_external_eeprom
;; This function is called by:
;;		_change_password
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2,group=0
	file	"changepass.c"
	line	19
global __ptext30
__ptext30:
psect	text30
	file	"changepass.c"
	line	19
	
_write_eeprom:
;incstack = 0
	callstack 25
	line	20
	
l3219:
;changepass.c: 20: write_external_eeprom(0x96, str[0]);
	movf	((c:write_eeprom@str))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:write_external_eeprom@data))^00h,c
	movlw	(096h)&0ffh
	
	call	_write_external_eeprom
	line	21
;changepass.c: 21: write_external_eeprom(0x97, str[1]);
	movf	((c:write_eeprom@str))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movf	indf2,w
	movwf	((c:write_external_eeprom@data))^00h,c
	movlw	(097h)&0ffh
	
	call	_write_external_eeprom
	line	22
;changepass.c: 22: write_external_eeprom(0x98, str[2]);
	movf	((c:write_eeprom@str))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	movf	indf2,w
	movwf	((c:write_external_eeprom@data))^00h,c
	movlw	(098h)&0ffh
	
	call	_write_external_eeprom
	line	23
;changepass.c: 23: write_external_eeprom(0x99, str[3]);
	movf	((c:write_eeprom@str))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(03h)
	addwf	fsr2l

	movf	indf2,w
	movwf	((c:write_external_eeprom@data))^00h,c
	movlw	(099h)&0ffh
	
	call	_write_external_eeprom
	line	25
	
l373:
	return	;funcret
	callstack 0
GLOBAL	__end_of_write_eeprom
	__end_of_write_eeprom:
	signat	_write_eeprom,4217
	global	_write_external_eeprom

;; *************** function _write_external_eeprom *****************
;; Defined at:
;;		line 6 in file "external_eeprom.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;;  data            1   12[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1   15[COMRAM] unsigned char 
;;  w               2   13[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_write
;; This function is called by:
;;		_write_eeprom
;;		_view_save
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2,group=0
	file	"external_eeprom.c"
	line	6
global __ptext31
__ptext31:
psect	text31
	file	"external_eeprom.c"
	line	6
	
_write_external_eeprom:
;incstack = 0
	callstack 26
;write_external_eeprom@address stored from wreg
	movwf	((c:write_external_eeprom@address))^00h,c
	line	8
	
l3019:
;external_eeprom.c: 8: i2c_start();
	call	_i2c_start	;wreg free
	line	9
	
l3021:
;external_eeprom.c: 9: i2c_write(0xA0);
	movlw	(0A0h)&0ffh
	
	call	_i2c_write
	line	10
	
l3023:
;external_eeprom.c: 10: i2c_write(address);
	movf	((c:write_external_eeprom@address))^00h,c,w
	
	call	_i2c_write
	line	11
	
l3025:
;external_eeprom.c: 11: i2c_write(data);
	movf	((c:write_external_eeprom@data))^00h,c,w
	
	call	_i2c_write
	line	12
	
l3027:
;external_eeprom.c: 12: i2c_stop();
	call	_i2c_stop	;wreg free
	line	13
	
l3029:
;external_eeprom.c: 13: for(unsigned int w=3000;w--;);
	movlw	high(0BB8h)
	movwf	((c:write_external_eeprom@w+1))^00h,c
	movlw	low(0BB8h)
	movwf	((c:write_external_eeprom@w))^00h,c
	
l3031:
	decf	((c:write_external_eeprom@w))^00h,c
	btfss	status,0
	decf	((c:write_external_eeprom@w+1))^00h,c
		incf	((c:write_external_eeprom@w))^00h,c,w
	bnz	u1911
	incf	((c:write_external_eeprom@w+1))^00h,c,w
	btfss	status,2
	goto	u1911
	goto	u1910

u1911:
	goto	l3031
u1910:
	line	14
	
l307:
	return	;funcret
	callstack 0
GLOBAL	__end_of_write_external_eeprom
	__end_of_write_external_eeprom:
	signat	_write_external_eeprom,8313
	global	_get

;; *************** function _get *****************
;; Defined at:
;;		line 26 in file "changepass.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_read_external_eeprom
;; This function is called by:
;;		_main
;;		_change_password
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2,group=0
	file	"changepass.c"
	line	26
global __ptext32
__ptext32:
psect	text32
	file	"changepass.c"
	line	26
	
_get:
;incstack = 0
	callstack 25
	line	27
	
l3223:
;changepass.c: 27: password[0] = read_external_eeprom(0x96);
	movlw	(096h)&0ffh
	
	call	_read_external_eeprom
	movlb	0	; () banked
	movwf	((_password))&0ffh
	line	28
;changepass.c: 28: password[1] = read_external_eeprom(0x97);
	movlw	(097h)&0ffh
	
	call	_read_external_eeprom
	movlb	0	; () banked
	movwf	(0+(_password+01h))&0ffh
	line	29
;changepass.c: 29: password[2] = read_external_eeprom(0x98);
	movlw	(098h)&0ffh
	
	call	_read_external_eeprom
	movlb	0	; () banked
	movwf	(0+(_password+02h))&0ffh
	line	30
;changepass.c: 30: password[3] = read_external_eeprom(0x99);
	movlw	(099h)&0ffh
	
	call	_read_external_eeprom
	movlb	0	; () banked
	movwf	(0+(_password+03h))&0ffh
	line	31
	
l3225:; BSR set to: 0

;changepass.c: 31: password[4] = '\0';
	movlw	low(0)
	movwf	(0+(_password+04h))&0ffh
	line	34
	
l376:; BSR set to: 0

	return	;funcret
	callstack 0
GLOBAL	__end_of_get
	__end_of_get:
	signat	_get,89
	global	_read_external_eeprom

;; *************** function _read_external_eeprom *****************
;; Defined at:
;;		line 16 in file "external_eeprom.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    1[COMRAM] unsigned char 
;;  data            1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_i2c_read
;;		_i2c_rep_start
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_write
;; This function is called by:
;;		_get
;;		_copy
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2,group=0
	file	"external_eeprom.c"
	line	16
global __ptext33
__ptext33:
psect	text33
	file	"external_eeprom.c"
	line	16
	
_read_external_eeprom:; BSR set to: 0

;incstack = 0
	callstack 24
;read_external_eeprom@address stored from wreg
	movwf	((c:read_external_eeprom@address))^00h,c
	line	20
	
l3033:
;external_eeprom.c: 18: unsigned char data;;external_eeprom.c: 20: i2c_start();
	call	_i2c_start	;wreg free
	line	21
	
l3035:
;external_eeprom.c: 21: i2c_write(0xA0);
	movlw	(0A0h)&0ffh
	
	call	_i2c_write
	line	22
	
l3037:
;external_eeprom.c: 22: i2c_write(address);
	movf	((c:read_external_eeprom@address))^00h,c,w
	
	call	_i2c_write
	line	23
	
l3039:
;external_eeprom.c: 23: i2c_rep_start();
	call	_i2c_rep_start	;wreg free
	line	24
	
l3041:
;external_eeprom.c: 24: i2c_write(0xA1);
	movlw	(0A1h)&0ffh
	
	call	_i2c_write
	line	25
;external_eeprom.c: 25: data = i2c_read();
	call	_i2c_read	;wreg free
	movwf	((c:read_external_eeprom@data))^00h,c
	line	26
	
l3043:
;external_eeprom.c: 26: i2c_stop();
	call	_i2c_stop	;wreg free
	line	28
;external_eeprom.c: 28: return data;
	movf	((c:read_external_eeprom@data))^00h,c,w
	line	29
	
l310:
	return	;funcret
	callstack 0
GLOBAL	__end_of_read_external_eeprom
	__end_of_read_external_eeprom:
	signat	_read_external_eeprom,4217
	global	_i2c_write

;; *************** function _i2c_write *****************
;; Defined at:
;;		line 56 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, cstack
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
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_write_ds1307
;;		_read_ds1307
;;		_write_external_eeprom
;;		_read_external_eeprom
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2,group=0
	file	"i2c.c"
	line	56
global __ptext34
__ptext34:
psect	text34
	file	"i2c.c"
	line	56
	
_i2c_write:
;incstack = 0
	callstack 27
;i2c_write@data stored from wreg
	movwf	((c:i2c_write@data))^00h,c
	line	58
	
l2961:
;i2c.c: 58: SSPBUF = data;
	movff	(c:i2c_write@data),(c:4041)	;volatile
	line	59
	
l2963:
;i2c.c: 59: i2c_idle();
	call	_i2c_idle	;wreg free
	line	60
	
l96:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_write
	__end_of_i2c_write:
	signat	_i2c_write,4217
	global	_i2c_stop

;; *************** function _i2c_stop *****************
;; Defined at:
;;		line 44 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
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
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_write_ds1307
;;		_read_ds1307
;;		_write_external_eeprom
;;		_read_external_eeprom
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2,group=0
	line	44
global __ptext35
__ptext35:
psect	text35
	file	"i2c.c"
	line	44
	
_i2c_stop:
;incstack = 0
	callstack 27
	line	46
	
l2953:
;i2c.c: 46: PEN = 1;
	bsf	c:(32298/8),(32298)&7	;volatile
	line	47
	
l2955:
;i2c.c: 47: i2c_idle();
	call	_i2c_idle	;wreg free
	line	48
	
l90:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_stop
	__end_of_i2c_stop:
	signat	_i2c_stop,89
	global	_i2c_start

;; *************** function _i2c_start *****************
;; Defined at:
;;		line 38 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
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
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_write_ds1307
;;		_read_ds1307
;;		_write_external_eeprom
;;		_read_external_eeprom
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2,group=0
	line	38
global __ptext36
__ptext36:
psect	text36
	file	"i2c.c"
	line	38
	
_i2c_start:
;incstack = 0
	callstack 27
	line	40
	
l2949:
;i2c.c: 40: SEN = 1;
	bsf	c:(32296/8),(32296)&7	;volatile
	line	41
	
l2951:
;i2c.c: 41: i2c_idle();
	call	_i2c_idle	;wreg free
	line	42
	
l87:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_start
	__end_of_i2c_start:
	signat	_i2c_start,89
	global	_i2c_rep_start

;; *************** function _i2c_rep_start *****************
;; Defined at:
;;		line 50 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
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
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_read_ds1307
;;		_read_external_eeprom
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2,group=0
	line	50
global __ptext37
__ptext37:
psect	text37
	file	"i2c.c"
	line	50
	
_i2c_rep_start:
;incstack = 0
	callstack 25
	line	52
	
l2957:
;i2c.c: 52: RSEN = 1;
	bsf	c:(32297/8),(32297)&7	;volatile
	line	53
	
l2959:
;i2c.c: 53: i2c_idle();
	call	_i2c_idle	;wreg free
	line	54
	
l93:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_rep_start
	__end_of_i2c_rep_start:
	signat	_i2c_rep_start,89
	global	_i2c_read

;; *************** function _i2c_read *****************
;; Defined at:
;;		line 74 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
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
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_i2c_no_ack
;;		_i2c_rx_mode
;; This function is called by:
;;		_read_ds1307
;;		_read_external_eeprom
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2,group=0
	line	74
global __ptext38
__ptext38:
psect	text38
	file	"i2c.c"
	line	74
	
_i2c_read:
;incstack = 0
	callstack 24
	line	76
	
l2965:
;i2c.c: 76: i2c_rx_mode();
	call	_i2c_rx_mode	;wreg free
	line	77
;i2c.c: 77: i2c_no_ack();
	call	_i2c_no_ack	;wreg free
	line	79
	
l2967:
;i2c.c: 79: return SSPBUF;
	movf	((c:4041))^0f00h,c,w	;volatile
	line	80
	
l105:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_read
	__end_of_i2c_read:
	signat	_i2c_read,89
	global	_i2c_rx_mode

;; *************** function _i2c_rx_mode *****************
;; Defined at:
;;		line 62 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
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
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_i2c_read
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2,group=0
	line	62
global __ptext39
__ptext39:
psect	text39
	file	"i2c.c"
	line	62
	
_i2c_rx_mode:
;incstack = 0
	callstack 24
	line	64
	
l2943:
;i2c.c: 64: RCEN = 1;
	bsf	c:(32299/8),(32299)&7	;volatile
	line	65
	
l2945:
;i2c.c: 65: i2c_idle();
	call	_i2c_idle	;wreg free
	line	66
	
l99:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_rx_mode
	__end_of_i2c_rx_mode:
	signat	_i2c_rx_mode,89
	global	_i2c_idle

;; *************** function _i2c_idle *****************
;; Defined at:
;;		line 24 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_rep_start
;;		_i2c_write
;;		_i2c_rx_mode
;; This function uses a non-reentrant model
;;
psect	text40,class=CODE,space=0,reloc=2,group=0
	line	24
global __ptext40
__ptext40:
psect	text40
	file	"i2c.c"
	line	24
	
_i2c_idle:
;incstack = 0
	callstack 27
	line	26
	
l2941:
;i2c.c: 26: while (!SSPIF);
	
l77:
	btfss	c:(31987/8),(31987)&7	;volatile
	goto	u1861
	goto	u1860
u1861:
	goto	l77
u1860:
	
l79:
	line	27
;i2c.c: 27: SSPIF = 0;
	bcf	c:(31987/8),(31987)&7	;volatile
	line	28
	
l80:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_idle
	__end_of_i2c_idle:
	signat	_i2c_idle,89
	global	_i2c_no_ack

;; *************** function _i2c_no_ack *****************
;; Defined at:
;;		line 68 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
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
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_i2c_read
;; This function uses a non-reentrant model
;;
psect	text41,class=CODE,space=0,reloc=2,group=0
	line	68
global __ptext41
__ptext41:
psect	text41
	file	"i2c.c"
	line	68
	
_i2c_no_ack:
;incstack = 0
	callstack 25
	line	70
	
l2947:
;i2c.c: 70: ACKDT = 1;
	bsf	c:(32301/8),(32301)&7	;volatile
	line	71
;i2c.c: 71: ACKEN = 1;
	bsf	c:(32300/8),(32300)&7	;volatile
	line	72
	
l102:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_no_ack
	__end_of_i2c_no_ack:
	signat	_i2c_no_ack,89
	global	_compare

;; *************** function _compare *****************
;; Defined at:
;;		line 19 in file "Scrolling.c"
;; Parameters:    Size  Location     Type
;;  str1            1    0[COMRAM] PTR unsigned char 
;;		 -> str2(5), str(5), 
;;  str2            1    1[COMRAM] PTR unsigned char 
;;		 -> str1(5), password(5), 
;; Auto vars:     Size  Location     Type
;;  i               1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_password_screen
;;		_change_password
;; This function uses a non-reentrant model
;;
psect	text42,class=CODE,space=0,reloc=2,group=0
	file	"Scrolling.c"
	line	19
global __ptext42
__ptext42:
psect	text42
	file	"Scrolling.c"
	line	19
	
_compare:
;incstack = 0
	callstack 28
	line	20
	
l3293:
;Scrolling.c: 20: char i = 0;
	movlw	low(0)
	movwf	((c:compare@i))^00h,c
	line	21
;Scrolling.c: 21: while (str2[i]) {
	goto	l3305
	line	22
	
l3295:
;Scrolling.c: 22: if ((str1[i] < str2[i]) || (str1[i] > str2[i]))
	movf	((c:compare@str2))^00h,c,w
	addwf	((c:compare@i))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	((c:compare@str1))^00h,c,w
	addwf	((c:compare@i))^00h,c,w
	movwf	fsr1l
	clrf	fsr1h
		movf	postinc2,w
	subwf	postinc1,w
	btfss	status,0
	goto	u2121
	goto	u2120

u2121:
	goto	l3299
u2120:
	
l3297:
	movf	((c:compare@str1))^00h,c,w
	addwf	((c:compare@i))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	((c:compare@str2))^00h,c,w
	addwf	((c:compare@i))^00h,c,w
	movwf	fsr1l
	clrf	fsr1h
		movf	postinc2,w
	subwf	postinc1,w
	btfsc	status,0
	goto	u2131
	goto	u2130

u2131:
	goto	l3303
u2130:
	line	23
	
l3299:
;Scrolling.c: 23: return 0;
	movlw	(0)&0ffh
	goto	l691
	line	24
	
l3303:
;Scrolling.c: 24: i++;
	incf	((c:compare@i))^00h,c
	line	21
	
l3305:
	movf	((c:compare@str2))^00h,c,w
	addwf	((c:compare@i))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	btfss	status,2
	goto	u2141
	goto	u2140
u2141:
	goto	l3295
u2140:
	line	26
	
l3307:
;Scrolling.c: 25: };Scrolling.c: 26: return 1;
	movlw	(01h)&0ffh
	line	27
	
l691:
	return	;funcret
	callstack 0
GLOBAL	__end_of_compare
	__end_of_compare:
	signat	_compare,8313
	global	_clcd_putch

;; *************** function _clcd_putch *****************
;; Defined at:
;;		line 67 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     const unsigned char 
;;  addr            1   12[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1   13[COMRAM] const unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_dashboard
;;		_password_screen
;;		_view_log
;;		_set_time
;;		_change_password
;; This function uses a non-reentrant model
;;
psect	text43,class=CODE,space=0,reloc=2,group=0
	file	"clcd.c"
	line	67
global __ptext43
__ptext43:
psect	text43
	file	"clcd.c"
	line	67
	
_clcd_putch:
;incstack = 0
	callstack 27
;clcd_putch@data stored from wreg
	movwf	((c:clcd_putch@data))^00h,c
	line	69
	
l3217:
;clcd.c: 69: clcd_write(addr, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movf	((c:clcd_putch@addr))^00h,c,w
	
	call	_clcd_write
	line	70
;clcd.c: 70: clcd_write(data, 1);
	movlw	low(01h)
	movwf	((c:clcd_write@control_bit))^00h,c
	movf	((c:clcd_putch@data))^00h,c,w
	
	call	_clcd_write
	line	71
	
l291:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clcd_putch
	__end_of_clcd_putch:
	signat	_clcd_putch,8313
	global	_clcd_print

;; *************** function _clcd_print *****************
;; Defined at:
;;		line 58 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  data            2    2[COMRAM] PTR const unsigned char 
;;		 -> STR_48(15), STR_47(15), STR_46(13), STR_45(14), 
;;		 -> STR_44(17), STR_43(13), STR_42(13), STR_41(3), 
;;		 -> STR_40(3), STR_39(3), STR_38(9), STR_37(10), 
;;		 -> STR_36(9), STR_33(13), STR_32(12), STR_31(16), 
;;		 -> STR_30(9), STR_29(4), STR_28(4), STR_27(4), 
;;		 -> STR_26(4), STR_25(4), STR_24(3), STR_23(14), 
;;		 -> STR_22(14), STR_21(13), STR_20(13), STR_19(13), 
;;		 -> STR_18(13), STR_17(9), STR_16(13), STR_15(17), 
;;		 -> STR_14(16), STR_13(15), STR_12(17), STR_11(4), 
;;		 -> STR_10(5), STR_9(5), STR_8(4), STR_7(3), 
;;		 -> STR_6(3), STR_5(3), STR_4(3), STR_3(4), 
;;		 -> STR_2(4), STR_1(3), timer(9), 
;;  addr            1    4[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
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
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_dashboard
;;		_password_screen
;;		_main
;;		_main_menu
;;		_view_log
;;		_clear
;;		_download
;;		_set_time
;;		_change_password
;; This function uses a non-reentrant model
;;
psect	text44,class=CODE,space=0,reloc=2,group=0
	line	58
global __ptext44
__ptext44:
psect	text44
	file	"clcd.c"
	line	58
	
_clcd_print:
;incstack = 0
	callstack 27
	line	60
	
l3209:
;clcd.c: 60: clcd_write(addr, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movf	((c:clcd_print@addr))^00h,c,w
	
	call	_clcd_write
	line	61
;clcd.c: 61: while (*data != '\0')
	goto	l3215
	line	63
	
l3211:
;clcd.c: 62: {;clcd.c: 63: clcd_write(*data++, 1);
	movlw	low(01h)
	movwf	((c:clcd_write@control_bit))^00h,c
	movff	(c:clcd_print@data),tblptrl
	movff	(c:clcd_print@data+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u2057
	tblrd	*
	
	movf	tablat,w
	bra	u2050
u2057:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u2050:
	
	call	_clcd_write
	
l3213:
	infsnz	((c:clcd_print@data))^00h,c
	incf	((c:clcd_print@data+1))^00h,c
	line	61
	
l3215:
	movff	(c:clcd_print@data),tblptrl
	movff	(c:clcd_print@data+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u2067
	tblrd	*
	
	movf	tablat,w
	bra	u2060
u2067:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u2060:
	iorlw	0
	btfss	status,2
	goto	u2071
	goto	u2070
u2071:
	goto	l3211
u2070:
	line	65
	
l288:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clcd_print
	__end_of_clcd_print:
	signat	_clcd_print,8313
	global	_clcd_write

;; *************** function _clcd_write *****************
;; Defined at:
;;		line 4 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;;  control_bit     1    0[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_clcd
;;		_clcd_print
;;		_clcd_putch
;;		_password_screen
;;		_main
;;		_clear
;;		_download
;;		_change_password
;; This function uses a non-reentrant model
;;
psect	text45,class=CODE,space=0,reloc=2,group=0
	line	4
global __ptext45
__ptext45:
psect	text45
	file	"clcd.c"
	line	4
	
_clcd_write:
;incstack = 0
	callstack 27
;clcd_write@byte stored from wreg
	movwf	((c:clcd_write@byte))^00h,c
	line	6
	
l2999:
;clcd.c: 6: RC1 = control_bit;
	btfsc	((c:clcd_write@control_bit))^00h,c,0
	goto	u1881
	goto	u1880
u1881:
	bsf	c:(31761/8),(31761)&7	;volatile
	goto	u1895
u1880:
	bcf	c:(31761/8),(31761)&7	;volatile
u1895:
	line	7
	
l3001:
;clcd.c: 7: PORTD = byte;
	movff	(c:clcd_write@byte),(c:3971)	;volatile
	line	10
	
l3003:
;clcd.c: 10: RC2 = 1;
	bsf	c:(31762/8),(31762)&7	;volatile
	line	11
	
l3005:
;clcd.c: 11: RC2 = 0;
	bcf	c:(31762/8),(31762)&7	;volatile
	line	13
	
l3007:
;clcd.c: 13: TRISD7 = 0xFF;
	bsf	c:(31919/8),(31919)&7	;volatile
	line	14
	
l3009:
;clcd.c: 14: RC0 = 1;
	bsf	c:(31760/8),(31760)&7	;volatile
	line	15
	
l3011:
;clcd.c: 15: RC1 = 0;
	bcf	c:(31761/8),(31761)&7	;volatile
	line	19
	
l3013:
;clcd.c: 18: {;clcd.c: 19: RC2 = 1;
	bsf	c:(31762/8),(31762)&7	;volatile
	line	20
	
l3015:
;clcd.c: 20: RC2 = 0;
	bcf	c:(31762/8),(31762)&7	;volatile
	line	21
	
l3017:
;clcd.c: 21: } while (RD7);
	btfsc	c:(31775/8),(31775)&7	;volatile
	goto	u1901
	goto	u1900
u1901:
	goto	l3013
u1900:
	
l278:
	line	23
;clcd.c: 23: RC0 = 0;
	bcf	c:(31760/8),(31760)&7	;volatile
	line	24
;clcd.c: 24: TRISD7 = 0x00;
	bcf	c:(31919/8),(31919)&7	;volatile
	line	25
	
l279:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clcd_write
	__end_of_clcd_write:
	signat	_clcd_write,8313
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files\Microchip\xc8\v2.46\pic\sources\c90\common\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[COMRAM] float 
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
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text46,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c90\common\lwtoft.c"
	line	28
global __ptext46
__ptext46:
psect	text46
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c90\common\lwtoft.c"
	line	28
	
___lwtoft:
;incstack = 0
	callstack 28
	line	30
	
l4053:
	movff	(c:___lwtoft@c),(c:___ftpack@arg)
	movff	(c:___lwtoft@c+1),(c:___ftpack@arg+1)
	clrf	((c:___ftpack@arg+2))^00h,c
	movlw	low(08Eh)
	movwf	((c:___ftpack@exp))^00h,c
	movlw	low(0)
	movwf	((c:___ftpack@sign))^00h,c
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___lwtoft)
	movff	1+?___ftpack,(c:?___lwtoft+1)
	movff	2+?___ftpack,(c:?___lwtoft+2)
	line	31
	
l1327:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files\Microchip\xc8\v2.46\pic\sources\c90\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   26[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   36[COMRAM] unsigned long 
;;  exp1            1   40[COMRAM] unsigned char 
;;  sign1           1   35[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   26[COMRAM] long 
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
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text47,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c90\common\fttol.c"
	line	44
global __ptext47
__ptext47:
psect	text47
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c90\common\fttol.c"
	line	44
	
___fttol:
;incstack = 0
	callstack 29
	line	49
	
l4007:
	movff	(c:___fttol@f1+2),??___fttol+0+0
	clrf	(??___fttol+0+0+1)^00h,c
	clrf	(??___fttol+0+0+2)^00h,c
	rlcf	((c:___fttol@f1+1))^00h,c,w
	rlcf	(??___fttol+0+0)^00h,c
	bnc	u3061
	bsf	(??___fttol+0+0+1)^00h,c,0
u3061:
	movf	(??___fttol+0+0)^00h,c,w
	movwf	((c:___fttol@exp1))^00h,c
	movf	((c:___fttol@exp1))^00h,c,w
	btfss	status,2
	goto	u3071
	goto	u3070
u3071:
	goto	l4013
u3070:
	line	50
	
l4009:
	movlw	low(0)
	movwf	((c:?___fttol))^00h,c
	movlw	high(0)
	movwf	((c:?___fttol+1))^00h,c
	movlw	low highword(0)
	movwf	((c:?___fttol+2))^00h,c
	movlw	high highword(0)
	movwf	((c:?___fttol+3))^00h,c
	goto	l1200
	line	51
	
l4013:
	movlw	(017h)&0ffh
	movwf	(??___fttol+0+0)^00h,c
	movff	(c:___fttol@f1),??___fttol+1+0
	movff	(c:___fttol@f1+1),??___fttol+1+0+1
	movff	(c:___fttol@f1+2),??___fttol+1+0+2
	incf	((??___fttol+0+0))^00h,c,w
	movwf	(??___fttol+4+0)^00h,c
	goto	u3080
u3085:
	bcf	status,0
	rrcf	(??___fttol+1+2)^00h,c
	rrcf	(??___fttol+1+1)^00h,c
	rrcf	(??___fttol+1+0)^00h,c
u3080:
	decfsz	(??___fttol+4+0)^00h,c
	goto	u3085
	movf	(??___fttol+1+0)^00h,c,w
	movwf	((c:___fttol@sign1))^00h,c
	line	52
	
l4015:
	bsf	(0+(15/8)+(c:___fttol@f1))^00h,c,(15)&7
	line	53
	
l4017:
	movlw	low(0FFFFh)
	andwf	((c:___fttol@f1))^00h,c
	movlw	high(0FFFFh)
	andwf	((c:___fttol@f1+1))^00h,c
	movlw	low highword(0FFFFh)
	andwf	((c:___fttol@f1+2))^00h,c

	line	54
	
l4019:
	movf	((c:___fttol@f1))^00h,c,w
	movwf	((c:___fttol@lval))^00h,c
	movf	((c:___fttol@f1+1))^00h,c,w
	movwf	1+((c:___fttol@lval))^00h,c
	
	movf	((c:___fttol@f1+2))^00h,c,w
	movwf	2+((c:___fttol@lval))^00h,c
	
	clrf	3+((c:___fttol@lval))^00h,c
	
	line	55
	
l4021:
	movlw	(08Eh)&0ffh
	subwf	((c:___fttol@exp1))^00h,c
	line	56
	
l4023:
	btfsc	((c:___fttol@exp1))^00h,c,7
	goto	u3090
	goto	u3091

u3091:
	goto	l4035
u3090:
	line	57
	
l4025:
		movf	((c:___fttol@exp1))^00h,c,w
	xorlw	80h
	addlw	-(80h^-15)
	btfsc	status,0
	goto	u3101
	goto	u3100

u3101:
	goto	l4031
u3100:
	goto	l4009
	line	60
	
l4031:
	bcf	status,0
	rrcf	((c:___fttol@lval+3))^00h,c
	rrcf	((c:___fttol@lval+2))^00h,c
	rrcf	((c:___fttol@lval+1))^00h,c
	rrcf	((c:___fttol@lval))^00h,c
	line	61
	
l4033:
	incfsz	((c:___fttol@exp1))^00h,c
	
	goto	l4031
	goto	l4045
	line	63
	
l4035:
		movlw	018h-1
	cpfsgt	((c:___fttol@exp1))^00h,c
	goto	u3111
	goto	u3110

u3111:
	goto	l4043
u3110:
	goto	l4009
	line	66
	
l4041:
	bcf	status,0
	rlcf	((c:___fttol@lval))^00h,c
	rlcf	((c:___fttol@lval+1))^00h,c
	rlcf	((c:___fttol@lval+2))^00h,c
	rlcf	((c:___fttol@lval+3))^00h,c
	line	67
	decf	((c:___fttol@exp1))^00h,c
	line	65
	
l4043:
	movf	((c:___fttol@exp1))^00h,c,w
	btfss	status,2
	goto	u3121
	goto	u3120
u3121:
	goto	l4041
u3120:
	line	70
	
l4045:
	movf	((c:___fttol@sign1))^00h,c,w
	btfsc	status,2
	goto	u3131
	goto	u3130
u3131:
	goto	l4049
u3130:
	line	71
	
l4047:
	comf	((c:___fttol@lval+3))^00h,c
	comf	((c:___fttol@lval+2))^00h,c
	comf	((c:___fttol@lval+1))^00h,c
	negf	((c:___fttol@lval))^00h,c
	movlw	0
	addwfc	((c:___fttol@lval+1))^00h,c
	addwfc	((c:___fttol@lval+2))^00h,c
	addwfc	((c:___fttol@lval+3))^00h,c
	line	72
	
l4049:
	movff	(c:___fttol@lval),(c:?___fttol)
	movff	(c:___fttol@lval+1),(c:?___fttol+1)
	movff	(c:___fttol@lval+2),(c:?___fttol+2)
	movff	(c:___fttol@lval+3),(c:?___fttol+3)
	line	73
	
l1200:
	return	;funcret
	callstack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 54 in file "C:\Program Files\Microchip\xc8\v2.46\pic\sources\c90\common\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f1              3   11[COMRAM] float 
;;  f2              3   14[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   21[COMRAM] float 
;;  sign            1   25[COMRAM] unsigned char 
;;  exp             1   24[COMRAM] unsigned char 
;;  cntr            1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   11[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         6       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text48,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c90\common\ftdiv.c"
	line	54
global __ptext48
__ptext48:
psect	text48
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c90\common\ftdiv.c"
	line	54
	
___ftdiv:
;incstack = 0
	callstack 28
	line	63
	
l3961:
	movff	(c:___ftdiv@f1+2),??___ftdiv+0+0
	clrf	(??___ftdiv+0+0+1)^00h,c
	clrf	(??___ftdiv+0+0+2)^00h,c
	rlcf	((c:___ftdiv@f1+1))^00h,c,w
	rlcf	(??___ftdiv+0+0)^00h,c
	bnc	u3011
	bsf	(??___ftdiv+0+0+1)^00h,c,0
u3011:
	movf	(??___ftdiv+0+0)^00h,c,w
	movwf	((c:___ftdiv@exp))^00h,c
	movf	((c:___ftdiv@exp))^00h,c,w
	btfss	status,2
	goto	u3021
	goto	u3020
u3021:
	goto	l3967
u3020:
	line	64
	
l3963:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftdiv))^00h,c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+1))^00h,c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+2))^00h,c

	goto	l1164
	line	65
	
l3967:
	movff	(c:___ftdiv@f2+2),??___ftdiv+0+0
	clrf	(??___ftdiv+0+0+1)^00h,c
	clrf	(??___ftdiv+0+0+2)^00h,c
	rlcf	((c:___ftdiv@f2+1))^00h,c,w
	rlcf	(??___ftdiv+0+0)^00h,c
	bnc	u3031
	bsf	(??___ftdiv+0+0+1)^00h,c,0
u3031:
	movf	(??___ftdiv+0+0)^00h,c,w
	movwf	((c:___ftdiv@sign))^00h,c
	movf	((c:___ftdiv@sign))^00h,c,w
	btfss	status,2
	goto	u3041
	goto	u3040
u3041:
	goto	l3973
u3040:
	line	66
	
l3969:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftdiv))^00h,c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+1))^00h,c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+2))^00h,c

	goto	l1164
	line	67
	
l3973:
	movlw	low(0)
	movwf	((c:___ftdiv@f3))^00h,c
	movlw	high(0)
	movwf	((c:___ftdiv@f3+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___ftdiv@f3+2))^00h,c

	line	68
	
l3975:
	movf	((c:___ftdiv@sign))^00h,c,w
	addlw	low(089h)
	subwf	((c:___ftdiv@exp))^00h,c
	line	69
	
l3977:
	movff	0+((c:___ftdiv@f1)+02h),(c:___ftdiv@sign)
	line	70
	
l3979:
	movf	(0+((c:___ftdiv@f2)+02h))^00h,c,w
	xorwf	((c:___ftdiv@sign))^00h,c
	line	71
	
l3981:
	movlw	(080h)&0ffh
	andwf	((c:___ftdiv@sign))^00h,c
	line	72
	
l3983:
	bsf	(0+(15/8)+(c:___ftdiv@f1))^00h,c,(15)&7
	line	73
	
l3985:
	movlw	low(0FFFFh)
	andwf	((c:___ftdiv@f1))^00h,c
	movlw	high(0FFFFh)
	andwf	((c:___ftdiv@f1+1))^00h,c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftdiv@f1+2))^00h,c

	line	74
	
l3987:
	bsf	(0+(15/8)+(c:___ftdiv@f2))^00h,c,(15)&7
	line	75
	
l3989:
	movlw	low(0FFFFh)
	andwf	((c:___ftdiv@f2))^00h,c
	movlw	high(0FFFFh)
	andwf	((c:___ftdiv@f2+1))^00h,c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftdiv@f2+2))^00h,c

	line	76
	
l3991:
	movlw	low(018h)
	movwf	((c:___ftdiv@cntr))^00h,c
	line	78
	
l3993:
	bcf	status,0
	rlcf	((c:___ftdiv@f3))^00h,c
	rlcf	((c:___ftdiv@f3+1))^00h,c
	rlcf	((c:___ftdiv@f3+2))^00h,c
	line	79
	
l3995:
		movf	((c:___ftdiv@f2))^00h,c,w
	subwf	((c:___ftdiv@f1))^00h,c,w
	movf	((c:___ftdiv@f2+1))^00h,c,w
	subwfb	((c:___ftdiv@f1+1))^00h,c,w
	movf	((c:___ftdiv@f2+2))^00h,c,w
	subwfb	((c:___ftdiv@f1+2))^00h,c,w
	btfss	status,0
	goto	u3051
	goto	u3050

u3051:
	goto	l1167
u3050:
	line	80
	
l3997:
	movf	((c:___ftdiv@f2))^00h,c,w
	subwf	((c:___ftdiv@f1))^00h,c
	movf	((c:___ftdiv@f2+1))^00h,c,w
	subwfb	((c:___ftdiv@f1+1))^00h,c
	movf	((c:___ftdiv@f2+2))^00h,c,w
	subwfb	((c:___ftdiv@f1+2))^00h,c

	line	81
	
l3999:
	bsf	(0+(0/8)+(c:___ftdiv@f3))^00h,c,(0)&7
	line	82
	
l1167:
	line	83
	bcf	status,0
	rlcf	((c:___ftdiv@f1))^00h,c
	rlcf	((c:___ftdiv@f1+1))^00h,c
	rlcf	((c:___ftdiv@f1+2))^00h,c
	line	84
	
l4001:
	decfsz	((c:___ftdiv@cntr))^00h,c
	
	goto	l3993
	line	85
	
l4003:
	movff	(c:___ftdiv@f3),(c:___ftpack@arg)
	movff	(c:___ftdiv@f3+1),(c:___ftpack@arg+1)
	movff	(c:___ftdiv@f3+2),(c:___ftpack@arg+2)
	movff	(c:___ftdiv@exp),(c:___ftpack@exp)
	movff	(c:___ftdiv@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftdiv)
	movff	1+?___ftpack,(c:?___ftdiv+1)
	movff	2+?___ftpack,(c:?___ftdiv+2)
	line	86
	
l1164:
	return	;funcret
	callstack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files\Microchip\xc8\v2.46\pic\sources\c90\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMRAM] unsigned um
;;  exp             1    3[COMRAM] unsigned char 
;;  sign            1    4[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMRAM] float 
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
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftdiv
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text49,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c90\common\float.c"
	line	62
global __ptext49
__ptext49:
psect	text49
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c90\common\float.c"
	line	62
	
___ftpack:
;incstack = 0
	callstack 28
	line	64
	
l3319:
	movf	((c:___ftpack@exp))^00h,c,w
	btfsc	status,2
	goto	u2151
	goto	u2150
u2151:
	goto	l3323
u2150:
	
l3321:
	movf	((c:___ftpack@arg))^00h,c,w
iorwf	((c:___ftpack@arg+1))^00h,c,w
iorwf	((c:___ftpack@arg+2))^00h,c,w
	btfss	status,2
	goto	u2161
	goto	u2160

u2161:
	goto	l3329
u2160:
	line	65
	
l3323:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftpack))^00h,c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftpack+1))^00h,c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftpack+2))^00h,c

	goto	l1098
	line	67
	
l3327:
	incf	((c:___ftpack@exp))^00h,c
	line	68
	bcf	status,0
	rrcf	((c:___ftpack@arg+2))^00h,c
	rrcf	((c:___ftpack@arg+1))^00h,c
	rrcf	((c:___ftpack@arg))^00h,c
	line	66
	
l3329:
	movlw	low(0FE0000h)
	andwf	((c:___ftpack@arg))^00h,c,w
	movwf	(??___ftpack+0+0)^00h,c
	movlw	0
	andwf	((c:___ftpack@arg+1))^00h,c,w
	movwf	1+(??___ftpack+0+0)^00h,c
	
	movlw	0FEh
	andwf	((c:___ftpack@arg+2))^00h,c,w
	movwf	2+(??___ftpack+0+0)^00h,c

	movf	(??___ftpack+0+0)^00h,c,w
iorwf	(??___ftpack+0+1)^00h,c,w
iorwf	(??___ftpack+0+2)^00h,c,w
	btfss	status,2
	goto	u2171
	goto	u2170

u2171:
	goto	l3327
u2170:
	goto	l3335
	line	71
	
l3331:
	incf	((c:___ftpack@exp))^00h,c
	line	72
	
l3333:
	movlw	low(01h)
	addwf	((c:___ftpack@arg))^00h,c
	movlw	high(01h)
	addwfc	((c:___ftpack@arg+1))^00h,c
	movlw	low highword(01h)
	addwfc	((c:___ftpack@arg+2))^00h,c

	line	73
	bcf	status,0
	rrcf	((c:___ftpack@arg+2))^00h,c
	rrcf	((c:___ftpack@arg+1))^00h,c
	rrcf	((c:___ftpack@arg))^00h,c
	line	70
	
l3335:
	movlw	low(0FF0000h)
	andwf	((c:___ftpack@arg))^00h,c,w
	movwf	(??___ftpack+0+0)^00h,c
	movlw	0
	andwf	((c:___ftpack@arg+1))^00h,c,w
	movwf	1+(??___ftpack+0+0)^00h,c
	
	movlw	0FFh
	andwf	((c:___ftpack@arg+2))^00h,c,w
	movwf	2+(??___ftpack+0+0)^00h,c

	movf	(??___ftpack+0+0)^00h,c,w
iorwf	(??___ftpack+0+1)^00h,c,w
iorwf	(??___ftpack+0+2)^00h,c,w
	btfss	status,2
	goto	u2181
	goto	u2180

u2181:
	goto	l3331
u2180:
	goto	l3339
	line	76
	
l3337:
	decf	((c:___ftpack@exp))^00h,c
	line	77
	bcf	status,0
	rlcf	((c:___ftpack@arg))^00h,c
	rlcf	((c:___ftpack@arg+1))^00h,c
	rlcf	((c:___ftpack@arg+2))^00h,c
	line	75
	
l3339:
	
	btfsc	((c:___ftpack@arg+1))^00h,c,(15)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l1109
u2190:
	
l3341:
		movlw	02h-0
	cpfslt	((c:___ftpack@exp))^00h,c
	goto	u2201
	goto	u2200

u2201:
	goto	l3337
u2200:
	
l1109:
	line	79
	
	btfsc	((c:___ftpack@exp))^00h,c,(0)&7
	goto	u2211
	goto	u2210
u2211:
	goto	l3345
u2210:
	line	80
	
l3343:
	bcf	(0+(15/8)+(c:___ftpack@arg))^00h,c,(15)&7
	line	81
	
l3345:
	bcf status,0
	rrcf	((c:___ftpack@exp))^00h,c

	line	82
	movf	((c:___ftpack@exp))^00h,c,w
	iorwf	((c:___ftpack@arg+2))^00h,c

	line	83
	
l3347:
	movf	((c:___ftpack@sign))^00h,c,w
	btfsc	status,2
	goto	u2221
	goto	u2220
u2221:
	goto	l3351
u2220:
	line	84
	
l3349:
	bsf	(0+(23/8)+(c:___ftpack@arg))^00h,c,(23)&7
	line	85
	
l3351:
	movff	(c:___ftpack@arg),(c:?___ftpack)
	movff	(c:___ftpack@arg+1),(c:?___ftpack+1)
	movff	(c:___ftpack@arg+2),(c:?___ftpack+2)
	line	86
	
l1098:
	return	;funcret
	callstack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 5 in file "isr.c"
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
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
	file	"pic18F4580.as"
	line	#
global __pintcode
__pintcode:
psect	intcode
	file	"isr.c"
	line	5
	
_isr:
;incstack = 0
	callstack 24
	bsf int$flags,1,c ;set compiler interrupt flag (level 2)
	global	int_func
	call	int_func,f	;refresh shadow registers
psect	intcode_body,class=CODE,space=0,reloc=2
global __pintcode_body
__pintcode_body:
int_func:

	pop	; remove dummy address from shadow register refresh
	line	9
	
i2l4057:
;isr.c: 7: static unsigned int count2;;isr.c: 9: if (RCIF == 1)
	btfss	c:(31989/8),(31989)&7	;volatile
	goto	i2u314_41
	goto	i2u314_40
i2u314_41:
	goto	i2l339
i2u314_40:
	line	12
	
i2l4059:
;isr.c: 10: {;isr.c: 12: if (OERR == 1)
	btfss	c:(32089/8),(32089)&7	;volatile
	goto	i2u315_41
	goto	i2u315_40
i2u315_41:
	goto	i2l340
i2u315_40:
	line	13
	
i2l4061:
;isr.c: 13: OERR = 0;
	bcf	c:(32089/8),(32089)&7	;volatile
	
i2l340:
	line	15
;isr.c: 15: ch = RCREG;
	movff	(c:4014),(_ch)	;volatile
	line	17
;isr.c: 17: RCIF = 0;
	bcf	c:(31989/8),(31989)&7	;volatile
	line	18
	
i2l339:
	line	20
;isr.c: 18: };isr.c: 20: if (TMR0IF)
	btfss	c:(32658/8),(32658)&7	;volatile
	goto	i2u316_41
	goto	i2u316_40
i2u316_41:
	goto	i2l345
i2u316_40:
	line	22
	
i2l4063:
;isr.c: 21: {;isr.c: 22: TMR0 = TMR0 + 8;
	movlw	low(08h)
	addwf	((c:4054))^0f00h,c,w	;volatile
	movwf	((c:4054))^0f00h,c	;volatile
	movlw	high(08h)
	addwfc	((c:4054+1))^0f00h,c,w	;volatile
	movwf	1+((c:4054))^0f00h,c	;volatile
	line	23
	
i2l4065:
;isr.c: 23: count++;
	movlb	0	; () banked
	infsnz	((_count))&0ffh
	incf	((_count+1))&0ffh
	line	24
	
i2l4067:; BSR set to: 0

;isr.c: 24: count1++;
	infsnz	((_count1))&0ffh
	incf	((_count1+1))&0ffh
	line	25
;isr.c: 25: TMR0 = TMR0 + 8;
	movlw	low(08h)
	addwf	((c:4054))^0f00h,c,w	;volatile
	movwf	((c:4054))^0f00h,c	;volatile
	movlw	high(08h)
	addwfc	((c:4054+1))^0f00h,c,w	;volatile
	movwf	1+((c:4054))^0f00h,c	;volatile
	line	26
;isr.c: 26: if(count1 == 5000)
		movlw	136
	xorwf	((_count1))&0ffh,w
	bnz	i2u317_41
	movlw	19
	xorwf	((_count1+1))&0ffh,w
	btfss	status,2
	goto	i2u317_41
	goto	i2u317_40

i2u317_41:
	goto	i2l4073
i2u317_40:
	line	28
	
i2l4069:; BSR set to: 0

;isr.c: 27: {;isr.c: 28: count1=0;
	movlw	high(0)
	movwf	((_count1+1))&0ffh
	movlw	low(0)
	movwf	((_count1))&0ffh
	line	29
;isr.c: 29: if(ok)
	movf	((c:_ok))^00h,c,w
	btfsc	status,2
	goto	i2u318_41
	goto	i2u318_40
i2u318_41:
	goto	i2l4073
i2u318_40:
	line	31
	
i2l4071:; BSR set to: 0

;isr.c: 30: {;isr.c: 31: sec--;
	decf	((c:_sec))^00h,c
	btfss	status,0
	decf	((c:_sec+1))^00h,c
	line	36
	
i2l4073:; BSR set to: 0

;isr.c: 32: };isr.c: 35: };isr.c: 36: if (count == 5000)
		movlw	136
	xorwf	((_count))&0ffh,w
	bnz	i2u319_41
	movlw	19
	xorwf	((_count+1))&0ffh,w
	btfss	status,2
	goto	i2u319_41
	goto	i2u319_40

i2u319_41:
	goto	i2l4079
i2u319_40:
	line	38
	
i2l4075:; BSR set to: 0

;isr.c: 37: {;isr.c: 38: count = 0;
	movlw	high(0)
	movwf	((_count+1))&0ffh
	movlw	low(0)
	movwf	((_count))&0ffh
	line	39
	
i2l4077:; BSR set to: 0

;isr.c: 39: wrong_sec++;
	infsnz	((_wrong_sec))&0ffh
	incf	((_wrong_sec+1))&0ffh
	line	42
	
i2l4079:; BSR set to: 0

;isr.c: 41: };isr.c: 42: TMR0IF = 0;
	bcf	c:(32658/8),(32658)&7	;volatile
	line	44
	
i2l345:
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	retfie f
	callstack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,89
psect	mediumconst
	db 0	; dummy byte at the end
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
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
       psect   temp,common,ovrld,class=COMRAM,space=1,lowdata
	global	btemp
btemp:
	ds	1
	global	int$flags
	int$flags	set btemp
	global	wtemp8
	wtemp8 set btemp+1
	global	ttemp5
	ttemp5 set btemp+1
	global	ttemp6
	ttemp6 set btemp+4
	global	ttemp7
	ttemp7 set btemp+8
	end
