Start
DUART	EQU	$00C001             ;base address of the 68681
IPR	    EQU	$1A                 ;input port register
OPR_SET	EQU	$1C                 ;set bit command register
OPR_CLR	EQU	$1E                 ;clear bit command register
SRA	    EQU	2                   ;STATUS REGISTER A
RBA	    EQU	6                   ;RECIEVE BUFFER a

	ORG	$8000
WIRE681	MOVEA.L	#DUART,A0       ;A0 points to 68681

LOOP	MOVE.B	SRA(A0),D7
	    ANDI.B	#1,D7
	    BEQ	    LOOP            ;loop until equal
	    MOVE.B	RBA(A0),D0      ;update bits of d0
	    CMP.B	#113,D0     
	    BEQ     EXIT            
	    BSR	    OUT681          ;update the output port
	    BRA	    LOOP            ;repeat

OUT681	MOVE.B	D0,OPR_CLR(A0)  ;clear the bits to set the pins
	    NOT.B	D0              ;restore d0
	    MOVE.B	D0,OPR_SET(A0)  ;set bits, clear pins
	    RTS                     ;return from the out681 subroutine
EXIT	TRAP	#14             ;return to the mon68kmb
	
    END	WIRE681


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
