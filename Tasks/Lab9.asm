#Exception

.ktext 0x80000180 
li $v0, 4
la $a0, Except
syscall
#mfc0 $s0, $14 #move from epc address
#addi $t4, $t4, -24 #where addresss of printing the massage
la $a0, Div
mtc0 $a0, $14 #move to epc address

eret 
.kdata 
Except: .asciiz "You can't divid by 0!"

.data 
MSG: .asciiz "\nPlease enter two integers to divide \n" 
ANS: .asciiz "\nThe result is: "

.text 
Div:
li $v0, 4 #print MSG
la $a0, MSG
syscall

li $v0, 5 #read 1st int
syscall
move $t0, $v0 #save 1st int
li $v0, 5 #read 2nd int
syscall
teq $0 ,$v0  #trap if 2nd int equal = 0

move $t1, $v0 #take the denuminator 
div $t0, $t1 #div

mflo $t0 #quitot

li $v0, 4
la $a0, ANS
syscall

move $a0, $t0
li $v0, 1
syscall


