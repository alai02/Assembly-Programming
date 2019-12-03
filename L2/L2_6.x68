*template


	ORG	$8000

PROGRAM CLR.L D0
    MOVE.W #10,D0
    MOVE.W #5,D1
    MOVE.W #9,D2
    MOVE.W #32,D3
    MULS    D2,D0
    DIVS.W  D1,D0
    ADD.B   D3,D0
    TRAP	#14
	
    END	$8000

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
