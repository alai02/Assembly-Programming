    ORG $8000
START    
    MOVE.W #-5,D0
    JSR SOLVE
EXIT 
    TRAP #14
SOLVE:
    MOVE.W D0,D1
    MOVE.W D1,D2
    MULU D1,D1
    MULU #5,D1
    MULU #2,D2
    SUB.W D2,D1
    ADD.W #6,D1
    RTS       
    END START


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
