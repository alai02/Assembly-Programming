  	  ORG		$8000
START	  LEA MATRIX,A0
          MOVE.B #0,D0
OUTSIDE   CMP #2,D0
          BGT EXIT          
          MOVE.B D0,D1
          ADD.B #1,D1
INSIDE    CMP #3,D1
          BGT DONE
          MOVE.B #4,D2
          MOVE.B #4,D3
          MULU D0,D2
          MULU D1,D3
          ADD.L D1,D2
          ADD.L D0,D3
          MOVE.B (A0,D2.L),TEMP
          MOVE.B (A0,D3.L),(A0,D2.L)
          MOVE.B TEMP,(A0,D3.L)
          ADD.B #1,D0
          BRA INSIDE
DONE      ADD.B #1,D0
          BRA OUTSIDE
EXIT      TRAP #14

        ORG $9000
MATRIX  DC.B 1,2,3,4
        DC.B 5,6,7,8
        DC.B 9,10,11,12
        DC.B 13,14,15,16
TEMP    DC.B 1

    END START        



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
