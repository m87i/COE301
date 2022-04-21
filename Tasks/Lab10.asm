# s = sqrt2 * r
# area = r * r * pi
    
.data
MSG: .asciiz "Enter the radius: "
PI: .double 3.1415926535897924
MSG1: .asciiz "\n The result: "

.text

li $v0, 4
la $a0, MSG
syscall

ldc1 $f2, PI #$f2, 3 = pi

li $v0, 7
syscall

mul.d $f4, $f0, $f0 # $f4,5 = radius*radius
mul.d $f4, $f4, $f2 # $f4, 5 = r * r * PI

li $t0, 2
mtc1 $t0, $f6
cvt.d.w $f6, $f6 #convert
sqrt.d $f6, $f6 #$f6 = sqrt(2)
mul.d $f6, $f6, $f0 # s = sqrt(2) * r
mul.d $f6, $f6, $f6 # s * s

sub.d $f12, $f4, $f6 # result area - ( s * s )


li $v0, 4
la $a0, MSG1
syscall

li $v0, 3
syscall
