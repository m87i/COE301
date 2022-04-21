.data
.asciiz
##Task 1 check if it positve or negative
L1: "please enter a number: \n"
L2: "the number is"
P: "the number is positive"
N: "the number is Negative"



.text
#assuming 0 is a positive number
la $a0, L1 #read the address
li $v0, 4 #print the prompt
syscall



li $v0, 5
syscall
move $t0, $v0



bltz $t0, else
la $a0, P #read the address
li $v0, 4 #print the prompt
syscall
j next #jump



else: #if the number is negative
la $a0, N #read the address
li $v0, 4 #print the prompt
syscall



next: