    ORG $9000
RESULT  DC.L 0
    ORG $9500
START   
    MOVE.L $12345678,D0
    MOVE.L $9ABCDEF0,D1
    MOVE.L $0FEDCBA9,D2
    ANDI.W #%1101111111111111,SR
    LEA $8010,A7
    JSR GENMUL
    TRAP #14
GENMUL  MOVE.L D0,-(A7)
    MOVE.L D1,D0
    MULS D2,D0
    MOVE.L D0,RESULT
    MOVE.L (A7)+,D0
    RTS
    END START
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
