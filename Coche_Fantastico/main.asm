/**************************************************************************
	Autor: Javier Plaza Sisqués
***************************************************************************/


SER R16											;Inicializamos R16 con todo unos
OUT DDRD, R16									;Inicializamos puerto D como salida

LDI R16, 1										;Guardamos el valor 1 en R16

izquierda: 
	
	CALL delay_100								;Llamamos a la funcion delay

	OUT PORTD, R16								;Sacamos R16 por los pines D
	LSL R16										;Multiplicamos por 2 el numero binario para cambiar el LED
	CPI R16, 128								;Comparamos R16 con 128
	BREQ derecha								;Si es igual lo anterior accedemos a la etiqueta derecha
	RJMP izquierda								;Saltamos a la etiqueta izquierda
	
derecha:

	CALL delay_100								;Llamamos a la funcion delay

	OUT PORTD, R16								;Sacamos R16 por los pines D
	LSR R16										;Dividimos entre 2 el numero binario para cambiar el LED
	CPI R16, 1									;Comparamos R16 con 1
	BREQ izquierda								;Si lo anterior es igual accedemos a la etiqueta izquierda
	RJMP derecha								;Saltamos a la etiqueta derecha


/**************************************************************************

	Fin del programa principal

***************************************************************************/

/**************************************************************************

	Funcion Delay 100ms

***************************************************************************/
delay_100:
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

	RET											;RET es el equivalente al return, antes deberemos de haber guardado el PC (Program Counter)		
