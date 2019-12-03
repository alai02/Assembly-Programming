    ORG $802A
    JMP TRAP6
    ORG $8030
    JMP TRAP7
    
    ORG $9000
TRAP6   EORI.W #%0010000000000000,(A7)
        RTE
        
        ORG $9200
TRAP7   ANDI.W #%1101111111111111,(A7)
        RTE
        
        ORG $9500
START   MOVE.W #5,D0
        TRAP #7
        nop
        TRAP #6
        MOVE.W  #2,D1
        TRAP #14
        
        END START
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
