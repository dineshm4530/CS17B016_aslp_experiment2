	.file	1 "q4.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.align	2
	.globl	isPrime
	.set	nomips16
	.set	nomicromips
	.ent	isPrime
	.type	isPrime, @function
isPrime:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-16
	sw	$fp,12($sp)
	move	$fp,$sp
	sw	$4,16($fp)
	sw	$0,4($fp)
	li	$2,2			# 0x2
	sw	$2,0($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L4:
	lw	$3,16($fp)
	lw	$2,0($fp)
	teq	$2,$0,7
	div	$0,$3,$2
	mfhi	$2
	bne	$2,$0,$L3
	nop

	li	$2,1			# 0x1
	sw	$2,4($fp)
$L3:
	lw	$2,0($fp)
	addiu	$2,$2,1
	sw	$2,0($fp)
$L2:
	lw	$2,16($fp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	move	$3,$2
	lw	$2,0($fp)
	slt	$2,$2,$3
	bne	$2,$0,$L4
	nop

	lw	$3,4($fp)
	li	$2,1			# 0x1
	bne	$3,$2,$L5
	nop

	sw	$0,4($fp)
	move	$2,$0
	.option	pic0
	b	$L6
	nop

	.option	pic2
$L5:
	li	$2,1			# 0x1
$L6:
	move	$sp,$fp
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	isPrime
	.size	isPrime, .-isPrime
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,48,$31		# vars= 16, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	move	$fp,$sp
	li	$2,4			# 0x4
	sw	$2,28($fp)
	lw	$2,28($fp)
	sw	$2,24($fp)
	lw	$2,28($fp)
	sw	$2,32($fp)
	lw	$2,36($fp)
	li	$3,2			# 0x2
	beq	$2,$3,$L9
	nop

	li	$3,3			# 0x3
	beq	$2,$3,$L10
	nop

	li	$3,1			# 0x1
	bne	$2,$3,$L8
	nop

	lw	$2,28($fp)
	andi	$2,$2,0x1
	bne	$2,$0,$L9
	nop

	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
	.option	pic0
	b	$L8
	nop

	.option	pic2
$L9:
	lw	$3,28($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	ori	$2,$2,0x1
	and	$2,$3,$2
	bgez	$2,$L12
	nop

	addiu	$2,$2,-1
	li	$3,-2			# 0xfffffffffffffffe
	or	$2,$2,$3
	addiu	$2,$2,1
$L12:
	move	$3,$2
	li	$2,1			# 0x1
	bne	$3,$2,$L10
	nop

	.option	pic0
	b	$L13
	nop

	.option	pic2
$L14:
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
$L13:
	lw	$4,24($fp)
	.option	pic0
	jal	isPrime
	nop

	.option	pic2
	beq	$2,$0,$L14
	nop

	.option	pic0
	b	$L8
	nop

	.option	pic2
$L10:
	lw	$4,28($fp)
	.option	pic0
	jal	isPrime
	nop

	.option	pic2
	beq	$2,$0,$L8
	nop

	lw	$2,32($fp)
	andi	$2,$2,0x1
	bne	$2,$0,$L15
	nop

	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
	.option	pic0
	b	$L8
	nop

	.option	pic2
$L15:
	lw	$2,32($fp)
	addiu	$2,$2,2
	sw	$2,32($fp)
$L8:
	move	$2,$0
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
