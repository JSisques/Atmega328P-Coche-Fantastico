
SER R16
OUT DDRD, R16

LDI R16, 1

izquierda: 
	
; Assembly code auto-generated
; by utility from Bret Mulvey
; Delay 1 600 000 cycles
; 100ms at 16 MHz

    ldi  r20, 9
    ldi  r21, 30
    ldi  r22, 229
L1: dec  r22
    brne L1
    dec  r21
    brne L1
    dec  r20
    brne L1
    nop



	OUT PORTD, R16
	LSL R16
	CPI R16, 128
	BREQ derecha
	RJMP izquierda
	
derecha:

		
; Assembly code auto-generated
; by utility from Bret Mulvey
; Delay 1 600 000 cycles
; 100ms at 16 MHz

    ldi  r20, 9
    ldi  r21, 30
    ldi  r22, 229
L2: dec  r22
    brne L2
    dec  r21
    brne L2
    dec  r20
    brne L2
    nop


	
	OUT PORTD, R16
	LSR R16
	CPI R16, 1
	BREQ izquierda
	RJMP derecha

