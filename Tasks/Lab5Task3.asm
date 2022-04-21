##adding each number entered while the number is not 0


.data
.asciiz
L1: "please Enter a number other than zero: \n"
L2: "you have entered a 0 \n The result is: \n "
.text



Loop: #lable for the loop
la $a0, L1 #read the address
li $v0,4 #print the prompt
syscall



li $v0, 5 #read an integer
syscall
add $t0 , $t0, $v0 #adding while 0 is not entered
bne $v0, $0 , Loop #excution the loop



la $a0, L2 #read the address
li $v0,4 #print the prompt
syscall



move $a0 $t0
li $v0,1 #print the result
syscall