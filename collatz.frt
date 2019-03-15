( построение последовательности Колладца)
: collatz 
    repeat
	dup ( num num )  
	2 % not if 
	   dup 2 / ( num new_num ) 
	else
	   dup 3 * 1 + ( num new_num ) 
	endif    
	dup 1 = 
    until
    .S
; 
