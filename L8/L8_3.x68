    ORG $8000
START
    PEA W
    PEA X
    PEA Y
    PEA X
    JSR SOLVE
    LEA 16(SP),SP
    TRAP #14
SOLVE 
    MOVEM.W A0,-(SP)
    MOVEA.L 16(SP),A0
    MOVEM.W D0-D2,-(SP)
    MOVE.W #5,D0
    MULU 2(A0),D0
    MULU 2(A0),D0
    
    MOVE.W #4,D1
    MULU 2(A0),D1
    MULU 4(A0),D1
    
    MOVE.W 6(A0),D2
    MULU 6(A0),D2
    
    ADD D2,D1
    SUB D0,D1
    
    MOVE.W D0,(A0)
    MOVEM.W (SP)+,D0-D2
    MOVEM.W (SP)+,A0
    MOVE.L D1,A2
    RTS
    
    ORG $9000
W DC.W 1
X DC.W 2
Y DC.W 3
Z DC.W 4

    END START
        
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
