
START

DUART    EQU      $00C001  ;68681 base address
ACR      EQU      4*2      ;auxiliary control reg.
CTUR     EQU      6*2      ;counter/timer upper reg.
CTLR     EQU      7*2      ;counter/timer lower reg.
OPCR     EQU      13*2     ;output port config. reg.
COUNT    EQU      57600    ;2 Hz count (see above)

         ORG      $8000
TWOHZ    MOVEA.L  #DUART,A0
         MOVE.L   #COUNT,D0
         MOVEP.W  D0,CTUR(A0)
         MOVE.B   #$70,ACR(A0)   ;crystal clock / 16
         MOVE.B   #$04,OPCR(A0)  ;timer output to OP3
         BRA      TWOHZ              ;now relax a bit
         END      TWOHZ


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
