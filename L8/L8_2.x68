    ORG $8000
START   LEA $A00A,SP
        MOVE.W X,D2
        MOVE.W Y,D3
        MOVE.W Z,D4
        MOVE.W D2,-(SP)
        MOVE.W D3,-(SP)
        MOVE.W D4,-(SP)
        JSR SOLVE
        LEA 6(SP),SP
EXIT    TRAP #14
SOLVE   MOVEM.W D2-D6,-(SP)
        CLR D2
        CLR D3
        CLR D4
        MOVE.W 14(SP),D4
        MOVE.W 16(SP),D3
        MOVE.W 18(SP),D2
        MOVE.W D2,D1
        MULS D1,D1
        MULS #5,D1
        MULS.W #2,D2
        MULS.W D3,D2
        SUB.W D2,D1
        MULS.W D4,D4
        ADD.W D4,D1
        MOVEM.W (SP)+,D2-D6
        RTS
    ORG $8100
X   DC.W    1
Y   DC.W    2
Z   DC.W    3
    END START
    
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
