    ORG $8000
START 
    MOVE.W #$a,D0
    MOVE.W #$B,D1
ADDODD 
    MOVE.W D1,D5
    LSR.W #1,D5
    BCC LOOP
    ADD.W D0,D2   
CHECKCONDITION 
    CMPI #1,D1
    BEQ EXIT 
LOOP 
    LSL.W #1,D0
    LSR.W #1,D1
    BRA ADDODD
EXIT
    TRAP #14
    
    END START
    





*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
