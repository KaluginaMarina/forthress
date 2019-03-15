( кладет на стек 1, если число простое, иначе, кладет 0 )
: primary_check

dup 
2 = if 
    drop
    ." простое" 
    1
else
    dup 
    1 = if
	drop
	." не простое"
	0
    else

	2 ( num index )
	repeat
	     over over ( num index num index ) 
	    % if
		0 
	    else		
		." не простое" 
		1 ( 1 index res )
		0 >r 	 
	    endif ( num index res )
	    swap 1 + swap ( num index+1 res )
	    rot rot over over ( res num index num index )
	    = if 
		." простое"
		1 >r
		rot drop 1 rot rot ( 1 num index )
	   endif ( res num index )
	   rot ( num index res )
	until 
	drop drop
	r>
    endif
endif
; 
