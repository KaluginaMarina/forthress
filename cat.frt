( записывает слово, в address_res из address )
: write 
    repeat
	over over ( address_res address adderess_res address )
	c@ swap c!
	1 + swap 1 + swap ( указатель на следующий элемент )
	dup c@ not
    until
;

( возвращает две нуль-терминированые стоки возвращает адрес результата )
: cat 
    over count over count ( address1 address2 count1 count2 )
    1 + + allot ( address1 address2 addres_res ) 
    rot over ( address2 address_res address1 address_res ) >r 
    write
    drop swap ( address_res address2 )
    write
    drop 0 swap c! r> 
;
