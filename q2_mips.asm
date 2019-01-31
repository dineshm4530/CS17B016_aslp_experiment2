	.file	1 "q2.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,80,$31		# vars= 40, regs= 3/0, args= 16, gp= 8
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-80
	sw	$31,76($sp)
	sw	$fp,72($sp)
	sw	$16,68($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,80($fp)
	sw	$5,28($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,60($fp)
	li	$2,2			# 0x2
	sw	$2,36($fp)
	li	$2,5			# 0x5
	sw	$2,40($fp)
	li	$2,8			# 0x8
	sw	$2,44($fp)
	li	$2,6			# 0x6
	sw	$2,48($fp)
	li	$2,9			# 0x9
	sw	$2,52($fp)
	li	$2,4			# 0x4
	sw	$2,56($fp)
	li	$2,2			# 0x2
	sw	$2,32($fp)
	li	$16,1			# 0x1
	b	$L2
	nop

$L3:
	sll	$2,$16,2
	addiu	$3,$fp,64
	addu	$2,$3,$2
	lw	$3,-28($2)
	lw	$2,32($fp)
	addu	$3,$3,$2
	sll	$2,$16,2
	addiu	$4,$fp,64
	addu	$2,$4,$2
	sw	$3,-28($2)
	addiu	$16,$16,1
$L2:
	slt	$2,$16,7
	bne	$2,$0,$L3
	nop

	move	$2,$0
	lw	$3,%got(__stack_chk_guard)($28)
	lw	$4,60($fp)
	lw	$3,0($3)
	beq	$4,$3,$L5
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L5:
	move	$sp,$fp
	lw	$31,76($sp)
	lw	$fp,72($sp)
	lw	$16,68($sp)
	addiu	$sp,$sp,80
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
