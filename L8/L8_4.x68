    ORG $8000
START   LINK A6,#-10
        JSR INIT
        
        UNLK A0
        RTS
INIT    
U   MOVE.W #0,-(A0)
V   MOVE.W #0,-(A0)
W   MOVE.W #0,-(A0)

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
