.data

file: .asciiz "MyName.txt"
Name: .sapce 100 #array of 100 characters (Bytes)
CapName: .space 100 #array of 100 characters (Bytes)

.text

li $v0, 13 #open a file
la $a0, file #address of the string containing the file name
li $a1, 0 #flag : 0 -> only Read
syscall

move $a0, $v0 #move file describtor to $a0

li $v0 , 14 #Read from file
la $a1, Name #storing data that were read from the File
li $a2, 100 #maximum number of characters to read
syscall

li $v0,16 #Close file
syscall

#############################################

 li $t2, 32 # put 1 in the 5th bit


la $t0, Name # t0 = address of Name 
la $t4, Name # t4 = address of CapName 

Loop:
lb $t1,($t0) #$t1 = here[i] (load byte)
xor $t3,$t1, $t2
sb  $t3, ($t4)
addi $t0,$t0,1 #next elemnt in the Name
addi $t4,$t4,1 #next elemnt in the CapName
bne $t1, 0, Loop #at the end of the string

li $v0, 13 #open a file
la $a0, file #address of the string containing the file name
li $a1, 1 #flag : 1 -> only Write
syscall
 
move $a0, $v0 #move file describtor to $a0
li $v0, 15 #Write from file
la $a1, CapName #storing data that were read from the File
li $a2, 100 #maximum number of characters to write
syscall # Write to file

li $v0,16 #Close file
syscall
