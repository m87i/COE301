.data
.asciiz 
L1: "Please enter and integer number: \n" 
L2: "\n Please enter and integer number between (0 and 31): \n" 
L3: "\n The value of the given bit is: " 
 
.text
 
la $a0, L1 #read the address
li $v0, 4 #print the prompt
syscall
 
li $v0, 5
syscall
 
move $t1, $v0
 
la $a0, L2 #read the address
li $v0, 4 #print the prompt
syscall
 
li $v0, 5
syscall
 
move $t2, $v0
 
li $t0, 1
 
sllv $t0,$t0,$t2
 
and $t3, $t1, $t0
 
srlv $t3,$t3,$t2
 
la $a0, L3 #read the address
li $v0, 4 #print the prompt
syscall
 
move $a0 , $t3
 
li $v0, 4
syscall