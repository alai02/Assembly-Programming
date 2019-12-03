    ORG $8000
START   LEA    $9500,SP
        MOVE.L #$11111111,D0
        MOVE.L #$22222222,D1
        MOVE.L #$33333333,D2
        PEA X
        PEA Y
        PEA Z
        PEA W
        JSR SOLVE
        LEA 60(SP),SP
        TRAP #14
SOLVE   MOVEM.L D0/D2,-(SP)
        MOVEM.L A0-A3,-(SP)
        CLR.L D0
        CLR.L D1
        CLR.L D2
        
        MOVEA.L 32(SP),A0
        MOVEA.L 36(SP),A1
        MOVEA.L 40(SP),A2
        MOVE.W (A0),D0
        MOVE.W (A1),D1
        MOVE.W (A2),D2
        
        MULS D2,D1
        MULS #4,D1
        
        MULS D0,D0
        MULS D2,D2
        
        MULS #5,D2
        ADD.L D0,D2
        SUB.L D1,D2
        MOVE.L D2,D1
        
        MOVEA.L 28(SP),A1
        MOVE.L D1,(A1)
        
        MOVEA.L (SP)+,A0
        MOVEA.L (SP)+,A1
        MOVEA.L (SP)+,A2
        MOVEA.L (SP)+,A3
        MOVEM.L (SP)+,D0/D2
        
        RTS
        
        ORG $9000
X   DC.W    $3
Y   DC.W    $4
Z   DC.W    $5
W   DS.L    1
    END START        

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
