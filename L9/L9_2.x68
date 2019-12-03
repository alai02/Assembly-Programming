    org $8000
    bra init
loop    cmp #0,a1
        beq done
        move.b -(a1),d0
        trap #1
        
        
        bra loop
done    trap #14

init    link a1,#-4
        move.b '1',-(a1)
        move.b '2',-(a1)
        move.b '3',-(a1)
        move.b '4',-(a1)
        

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
