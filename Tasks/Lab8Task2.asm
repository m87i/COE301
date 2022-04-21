#write a function evaluate and print the sum on numbers between two numbers

.data
L1: .asciiz "The result is: "

 
.text

li $a0, 2
li $a1, 5

jal Between

move $t0, $v0

la, $a0, L1 #print Msg
li $v0, 4
syscall

move $a0, $t0
li $v0, 1
syscall    

li $v0, 10
syscall  
 
Between:
move $t0, $a0 #first value
# move $t1, $a0 #t1 = sum

Loop:
addu $t1,$t1,$t0 #sum of consecutive
addiu $t0,$t0,1
bleu $t0, $a1, Loop

move $v0,$t1
jr $31



