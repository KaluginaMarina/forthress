( выделяем ячейку, сохраняем число и возвращаем адрес возврата)
: sv 1 allot dup rot swap ! ; ( num -- addres{num} ) 

( кладет на стек 1, если число простое, иначе, кладет 0 )
: primary_check

dup 
2 = if 
    drop
    ." простое" 
    1
    sv >r
else
    dup 
    1 = if
	drop
	." не простое"
	0
	sv >r
    else

	2 ( num index )
	repeat
	     over over ( num index num index ) 
	    % if
		0 
		sv
	    else		
		." не простое" 
		1 ( 1 index res )
		0 sv >r	 
	    endif ( num index res )
	    swap 1 + swap ( num index+1 res )
	    rot rot over over ( res num index num index )
	    = if 
		." простое"
		1 >r
		rot drop 1 sv >r rot rot ( 1 num index )
	   endif ( res num index )
	   rot ( num index res )
	until 
	drop drop
    endif
endif
r>
; 
