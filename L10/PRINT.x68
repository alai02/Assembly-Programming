
DUART   EQU      $00C001     ;base address of 68681
SRA     EQU     2
TBA     EQU 6
CR      EQU $0D
CF      EQU  $0A

         ORG      $8000
MAIN        MOVEA.L  #DUART,A0  
            BSR OUTSTR
            TRAP    #14
TEXT   DC.B    CR,CF
       DC.B    'ALEX',0
        ORG $8100  
OUTSTR:     MOVE.L D0,-(A7)
OUTSTR2:    MOVE.B     (A1)+,D0
            BEQ EXIT
            BSR OUTCHR
            BRA OUTSTR2
EXIT        MOVE.L (A7)+,D0
            RTS
OUTCHR:     MOVE.L  A0,-(A7)
            MOVE.W  D7,-(A7)
            MOVEA.L #DUART,A0
OUTCHR2:    MOVE.B  SRA(A0),D7
            ANDI.B  #4,D7
            BEQ OUTCHR2
            MOVE.B D0,TBA(A0)
RESTORE:    MOVE.W (A7)+,D7
            MOVE.L  (A7)+,A0
            RTS
      END MAIN

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
