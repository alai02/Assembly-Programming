DUART	EQU	$C001
ISR 	EQU	$A
STOP   	EQU	$1E
OPR_SET	EQU	$1C
OPR_CLR	EQU	$1E
ACR	    EQU	8
CTUR	EQU	12
CTLR	EQU	14
OPCR	EQU	26
PRE	equ	14400

	org $8000
EIHZ	MOVEA.L	    #DUART,A0
	    MOVE.W	    PRE,D0
	    movep.w D0,CTUR(a0)
	    MOVE.B	#$70,ACR(a0)
	    MOVE.B 	#$04,OPCR(a0)
loop	MOVE.B	ISR(A0),D0
	    AND.B	#8,D0
	    MOVE.B	D0,OPR_CLR(A0)
	    BEQ	LOOP
	    NOT.B	D0
	    MOVE.B	D0,OPR_SET(A0)
	    BRA LOOP
	END EIHZ


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
