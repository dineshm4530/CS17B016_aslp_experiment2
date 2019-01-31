	.file	1 "q5.c"
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
	.frame	$fp,160,$31		# vars= 128, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-160
	sw	$31,156($sp)
	sw	$fp,152($sp)
	move	$fp,$sp
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,160($fp)
	sw	$5,28($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,148($fp)
	li	$2,1			# 0x1
	sw	$2,32($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L5:
	li	$2,1			# 0x1
	sw	$2,36($fp)
	.option	pic0
	b	$L3
	nop

	.option	pic2
$L4:
	lw	$3,32($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	lw	$3,36($fp)
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$fp,152
	addu	$2,$3,$2
	lw	$3,32($fp)
	sw	$3,-112($2)
	lw	$3,32($fp)
	lw	$2,36($fp)
	addu	$4,$3,$2
	lw	$3,32($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	lw	$3,36($fp)
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$fp,152
	addu	$2,$3,$2
	sw	$4,-76($2)
	lw	$2,36($fp)
	addiu	$2,$2,1
	sw	$2,36($fp)
$L3:
	lw	$2,36($fp)
	slt	$2,$2,4
	bne	$2,$0,$L4
	nop

	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L2:
	lw	$2,32($fp)
	slt	$2,$2,4
	bne	$2,$0,$L5
	nop

	li	$2,1			# 0x1
	sw	$2,32($fp)
	.option	pic0
	b	$L6
	nop

	.option	pic2
$L9:
	li	$2,1			# 0x1
	sw	$2,36($fp)
	.option	pic0
	b	$L7
	nop

	.option	pic2
$L8:
	lw	$3,32($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	lw	$3,36($fp)
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$fp,152
	addu	$2,$3,$2
	lw	$4,-112($2)
	lw	$3,32($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	lw	$3,36($fp)
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$fp,152
	addu	$2,$3,$2
	lw	$2,-76($2)
	addu	$4,$4,$2
	lw	$3,32($fp)
	move	$2,$3
	sll	$2,$2,1
	addu	$2,$2,$3
	lw	$3,36($fp)
	addu	$2,$2,$3
	sll	$2,$2,2
	addiu	$3,$fp,152
	addu	$2,$3,$2
	sw	$4,-40($2)
	lw	$2,36($fp)
	addiu	$2,$2,1
	sw	$2,36($fp)
$L7:
	lw	$2,36($fp)
	slt	$2,$2,4
	bne	$2,$0,$L8
	nop

	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
$L6:
	lw	$2,32($fp)
	slt	$2,$2,4
	bne	$2,$0,$L9
	nop

	move	$2,$0
	lw	$3,%got(__stack_chk_guard)($28)
	lw	$4,148($fp)
	lw	$3,0($3)
	beq	$4,$3,$L11
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L11:
	move	$sp,$fp
	lw	$31,156($sp)
	lw	$fp,152($sp)
	addiu	$sp,$sp,160
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
