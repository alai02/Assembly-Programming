.0  	  ORG		$8000
START	  LEA		LIST,A0
	  CLR.W	D2
	  MOVE.L	#INDEX,D1
LOOP	  BEQ		DONE
	  ADD.W		(A0)+,D2
	  SUBQ.B	#1,D1
	  BRA		LOOP
DONE	  MOVE.W	D2,(A0)
	  TRAP	#14

	  ORG	$9000
LIST	  DC.W	1,2,3,4,5,6,7,8
SUM	  DS.W	1
INDEX	  EQU	(SUM-LIST)/2
	  END	START	

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
