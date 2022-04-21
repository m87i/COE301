.data
L1: .asciiz "Enter 2 integer to divid: "


.text
la $a0, L1
li $v0, 4
syscall 

li $v0, 5 #read int
syscall 
move $t0, $v0

li $v0, 5 #read int
syscall 
move $t1, $v0

div $t0, $t1
mflo $t2 #t2 = int result
move $a0, $t2
li $v0, 1 #print integer result
syscall 
li $t2, 46
move $a0, $t2
li $v0, 11 #print .
syscall

li $t5, 10 # t5 = 10
li $t0, 5 #t0 = 5 for 5 digit

Loop:
mfhi $t3
mult $t3 , $t5 # * 10
mflo $t6 #int result to t6
div $t6 , $t1
mflo $t4 
move $a0, $t4
li $v0, 1 #print after . digit
syscall 
sub $t0,$t0,1
bnez $t0, Loop 





