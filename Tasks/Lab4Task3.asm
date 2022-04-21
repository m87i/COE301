# Write a program that asks the user to enter and integer number and read it. Then ask him to
# enter a bit position (between 0 and 31) and display the value of that bit.
.data
.asciiz 
L1: "Please enter and integer number: \n" 
L2: "\n Please enter and integer number between (0 and 31): \n" 
L3: "\n The value of the given bit is: " 
 
.text
 
la $a0, L1 #read the address
li $v0, 4 #print the prompt
syscall
 
li $v0, 5 #read int from user
syscall
 
move $t1, $v0 #save the value of the user
 
la $a0, L2 #read the address
li $v0, 4 #print the prompt
syscall
 
li $v0, 5 #read int from user
syscall
 
move $t2, $v0 #save the value of the user
 
srlv $t3 , $t1 , $t2
 
andi $t0, $t3, 1
 
la $a0, L3 #read the address
li $v0, 4 #print the prompt
syscall
 
move $a0 , $t0
 
li $v0, 1
syscall