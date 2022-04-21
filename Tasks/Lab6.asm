# initalizing an array of size 8
#Read 7 integer
#store them in an array
# add 1 to each element in the array
#find their average of the new array 
 
.data
A: .space 32  #array of size 8 word
B: .space 32 #second array
C: .space 32 #third array
L1: .asciiz "\n Plases enter 7 integer: \n"
Space: .asciiz "---------------------------------------"
L2: .asciiz "\n The average is: \n"
.text
 
la $a0,L1
li $v0,4
syscall
 
li $v0,5 #read the first integer
syscall
sw $v0 , B
la $t0, B
li $t1, 0 #for the loop
li $t2, 6 # for the loop
 
Loop:
add $t0,$t0,4
li $v0,5 #read an integer
syscall
 
sw $v0 , ($t0)
add $t1,$t1,1
ble $t1 , $t2, Loop
 
la $a0,Space
li $v0,4
syscall
############################
la $t0, B # t0 = B array
la $t1, C # t1 = C array
 
lw $t2, ($t0) # t2 = B[i]
addi $t2,$t2,1
sw $t2, ($t1)
li $t3, 0 #for the loop
li $t4, 6 #for the loop
 
Loop2:
add $t0,$t0,4
add $t1,$t1,4
 
lw $t2, ($t0)
addi $t2,$t2,1
sw $t2, ($t1)
add $t3,$t3,1
ble $t3 , $t4, Loop2
 
#####################
 

la $t0, C # t0 = C array
li $t3 , 0
li $t4, 0 #for the loop
li $t5, 7 #for the loop
Loop3:
lw $t1, ($t0)
addu $t3, $t3, $t1 #sum 
addi $t0,$t0,4
addi $t4,$t4,1
ble $t4 , $t5, Loop3
 
sra $t3,$t3,3
 
la $a0,L2
li $v0,4
syscall
 
move $a0,$t3
li $v0, 1
syscall