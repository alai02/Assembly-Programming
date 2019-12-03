    ORG $8000
START LEA MATRIX,A0
      CLR D0
      CLR D1
      CLR D2
LOOP1 MOVE.B D0,D1
      ADDQ #1,D0
LOOP2 MOVE.B D0,D2
      MULU #4,D2
      ADD.B D1,D2
      MOVE.B (A0,D2),D4
      MOVE.B D2,D3
      MULU #4,D3
      MOVE.B (A0,D3),(A0,D2)
      MOVE.B D4,(A0,D3)
LC2   ADDQ #1,D1
      CMPI #3,D1
      BGT LC1
      BRA LOOP2
LC1   ADDQ #1,D0
      CMPI #2,D0
      BGT EXIT
      BRA LOOP1
EXIT  MOVE.L $9000,D0
      MOVE.L $9004,D1
      MOVE.L $9008,D2
      MOVE.L $900C,D3
      TRAP #14
    ORG $9000
MATRIX DC.B 1,2,3,4
       DC.B 5,6,7,8
       DC.B 9,10,11,12
       DC.B 13,14,15,16
    END START      
      
    

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
