    ORG $8000
START   PEA W ;push vars onto the stack
        PEA X
        PEA Y
        PEA Z
        JSR SOLVE ;jump to subroutine
        TRAP #14 ;end program
SOLVE   MOVEM.W A0,-(SP) ; move the values onto the stack
        MOVEA.L 16(SP),A0
        MOVEM.W D0-D2,-(SP)
        MOVE.W #5,D0
        MULS 2(A0),D0
        MULS 2(A0),D0
        MOVE.W #4,D1
        MULS 2(A0),D1
        MULS 4(A0),D1
        MOVE.W 6(A0),D2
        MULS 6(A0),D2
        MOVE.W D0,D4
        ADD.W D2,D4
        SUB.W D1,D4
        MOVE.W D4,(A0)
        MOVEM.W D4,$9000
        RTS

    ORG $9000
W   DC.W 1
X   DC.W 2
Y   DC.W 3
Z   DC.W 4
    END START
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
