  	  ORG		$8000
START	  LEA STRING1,A0
          LEA STRING2,A1
          MOVE.B #$FF,D0
LOOP      MOVE.B (A0)+,D1
          MOVE.B (A1)+,D2
          CMP D1,D2
          BEQ LC1
          CLR D0
LC1       CMP.B #$0D,D1
          BEQ EXIT
          BRA LC2
LC2       CMP.B #$FF,D0
          BNE EXIT
          BRA LOOP
EXIT TRAP #14

    ORG $9000
STRING1   DC.B 'STRINGY',$0D
    ORG $9020
STRING2   DC.B 

/]./\. [GY',$0D
    END START



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
