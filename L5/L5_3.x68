    ORG    $8000
START:               
        MOVE.B  NUM1,D0
        MOVE.B  NUM2,D1
        MOVE.B  NUM3,D2
        MOVE.B  BIGGEST,D3        
IF
    CMP D1,D0
    BLT FIRST_EL
INSIDE_IF
    CMP     D2,D0
    BLT     INSIDE_EL
    MOVE.B  NUM1,D3
    TRAP    #14
INSIDE_EL
    MOVE.B  NUM3,D3
    TRAP    #14
FIRST_EL
    CMP D2,D1
    BLT SECOND_EL
    MOVE.B  NUM2,D3
    TRAP    #14
SECOND_EL
    MOVE.B  NUM3,D3
    MOVE.B  D3,BIGGEST
    TRAP    #14
    
    ORG $9000
NUM1    DC.B    -2
NUM2    DC.B    -2
NUM3    DC.B    4
BIGGEST DS.B    1

    END START  

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
