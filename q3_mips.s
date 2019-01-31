	.file	1 "q3.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.rdata
	.align	2
$LC0:
	.ascii	"%d\000"
	.text
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
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,48($fp)
	sw	$5,52($fp)
	li	$2,1			# 0x1
	sw	$2,32($fp)
	.option	pic0
	b	$L2
	nop

	.option	pic2
$L7:
	sw	$0,28($fp)
	li	$2,2			# 0x2
	sw	$2,36($fp)
	.option	pic0
	b	$L3
	nop

	.option	pic2
$L6:
	lw	$3,32($fp)
	lw	$2,36($fp)
	teq	$2,$0,7
	div	$0,$3,$2
	mfhi	$2
	bne	$2,$0,$L4
	nop

	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
	.option	pic0
	b	$L5
	nop

	.option	pic2
$L4:
	lw	$2,36($fp)
	addiu	$2,$2,1
	sw	$2,36($fp)
$L3:
	lw	$2,32($fp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,36($fp)
	lw	$2,36($fp)
	bne	$2,$0,$L6
	nop

$L5:
	lw	$2,28($fp)
	bne	$2,$0,$L2
	nop

	lw	$2,32($fp)
	beq	$2,$0,$L2
	nop

	lw	$5,32($fp)
	lui	$2,%hi($LC0)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
$L2:
	lw	$2,32($fp)
	slt	$2,$2,101
	bne	$2,$0,$L7
	nop

	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
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
