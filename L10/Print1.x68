cr	equ	$0d	;ascii carriage return
lf	equ	$0a	;ascii line feed

	org $8000	
message2	move.w #0,d7	;use d7 as counter
loop	movea.l	#message,a1	;a1 points to message
	    trap 	#2		;outstr trap
   		dbra d7,loop    ;repeat until done
	    trap	#14		;return to mon68k
message	dc.b	cr,lf,'assembly language programming'







	dc.b	' is fun',0
	end message2


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
