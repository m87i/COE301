# Write a program that asks the user to enter an alphabetic character (either lower or upper case)
# and change the case of the character from lower to upper and from upper to lower and display it.
 
.data
.asciiz
L1: "please enter an alphabetic character: \n"
L2: "\n The letter in the other form: "
 
.text
la $a0, L1 #read the address
li $v0, 4 #print the prompt
syscall
 
li $v0, 12 #read char from the user
syscall
 
move $t1, $v0 #move it to reg t1
 
li $t0, 64 
 
xor $t2,$t1, $t0
 
la $a0, L2 #read the address
li $v0, 4 #print the prompt
syscall
 
move $a0, $t2
li $v0, 11
syscall