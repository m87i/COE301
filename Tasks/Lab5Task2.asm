##Task 2 enter number other than 0
.data
.asciiz
L1: "please Enter a number other than zero: \n"
L2: "Oh soory you have entered a 0 \n Goodbye "
.textLoop: #lable for the loop
la $a0, L1 #read the address
li $v0,4 #print the prompt
syscallli $v0, 5 #read an integer
syscall
bne $v0, $0 , Loop #excution the loopla $a0, L2
li $v0,4
syscall

[9/27/21 3:35 PM] MOHAMMED FAHAD ALHARTHI
.data
.asciiz
L1: "please Enter a number other than zero: \n"
L2: "you have entered a 0 \n The result is: \n "
.textLoop: #lable for the loop
la $a0, L1 #read the address
li $v0,4 #print the prompt
syscallli $v0, 5 #read an integer
syscall
add $t0 , $t0, $v0 #adding while 0 is not entered
bne $v0, $0 , Loop #excution the loopla $a0, L2 #read the address
li $v0,4 #print the prompt
syscallmove $a0 $t0
li $v0,1 #print the result
syscall

