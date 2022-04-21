# write a function that evaluates the discriminator of a quadrtic equation:
# The dicriminator ax^2 + bx + c = 0 is  b^2 - 4ac
# report one of the following:
# your equation has two real solution 
# your equation has one real solution
# your equation has no real solution
# Note evaluating the diciminator should take place in function!
#Alharthi
.data
L1: .asciiz "your equation has two real solution "
L2: .asciiz "your equation has one real solution "
L3: .asciiz "your equation has No real solution "


.text

li $a0, 1 #a
li $a1, 10 #b
li $a2, 25 #c

jal Disc


move $t0, $v0
beqz $t0, OneReal
bltz $t0, NoReal 
la $a0, L1 #2 Real
li $v0, 4
syscall 
li $v0,10
syscall

NoReal: # no Real
la $a0, L3
li $v0, 4
syscall 
li $v0,10
syscall

OneReal: # 1 Real
la $a0, L2
li $v0, 4
syscall 

li $v0,10
syscall

Disc:
mul $t0, $a1, $a1 # b = b^2 
mul $t1, $a0, $a2 #a*c
mul $t1, $t1, 4 #a*c*4
subu $v0,$t0,$t1
jr $ra
