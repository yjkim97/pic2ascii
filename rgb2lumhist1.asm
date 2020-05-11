
%include "asm_io.inc"

segment .data
	msg1		db	"luminance ", 0
	msg2		db	"-", 0
	msg3		db	": ", 0
	range1		dd	0
	range2		dd	9
	height		db	0
	heightC		dd	-1


segment .bss
	counter0	resw	1
	counter1	resw	1
	counter2	resw	1
	counter3	resw	1
	counter4	resw	1
	counter5	resw	1
	counter6	resw	1
	counter7	resw	1
	counter8	resw	1
	counter9	resw	1
	counter10	resw	1
	counter11	resw	1
	counter12	resw	1
	counter13	resw	1
	counter14	resw	1
	counter15	resw	1
	counter16	resw	1
	counter17	resw	1
	counter18	resw	1
	counter19	resw	1
	counter20	resw	1
	counter21	resw	1
	counter22	resw	1
	counter23	resw	1
	counter24	resw	1
	counter25	resw	1
	counter26	resw	1
	counter27	resw	1
	counter28	resw	1
	counter29	resw	1
	counter30	resw	1
	counter31	resw	1
	counter32	resw	1
	counter33	resw	1
	counter34	resw	1
	counter35	resw	1
	counter36	resw	1
	counter37	resw	1
	counter38	resw	1
	counter39	resw	1
	counter40	resw	1
	counter41	resw	1
	counter42	resw	1
	counter43	resw	1
	counter44	resw	1
	counter45	resw	1
	counter46	resw	1
	counter47	resw	1
	counter48	resw	1
	counter49	resw	1
	counter50	resw	1
	counter51	resw	1
	counter52	resw	1
	counter53	resw	1
	counter54	resw	1
	counter55	resw	1
	counter56	resw	1
	counter57	resw	1
	counter58	resw	1
	counter59	resw	1
	counter60	resw	1
	counter61	resw	1
	counter62	resw	1
	counter63	resw	1
	counter64	resw	1
	counter65	resw	1
	counter66	resw	1
	counter67	resw	1
	counter68	resw	1
	counter69	resw	1
	counter70	resw	1
	counter71	resw	1
	counter72	resw	1
	counter73	resw	1
	counter74	resw	1
	counter75	resw	1
	luminance	resd	1

segment .text
	global asm_main

asm_main:
	enter	0,0
	pusha

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	call	read_int
	mov	bx, ax
	mov	eax, 0

	call	read_int
	mov 	edx, 0

	mul	bx

	shl	edx, 16

	mov	dx, ax		;edx will be the height

	mov	ecx, 0			;ecx is the loop counter
	mov	ebx, counter0		;ebx is the pointer to the counter

initialization:
	mov	[ebx], dword 0
	inc	ebx
	inc	ecx
	cmp	ecx, 75
	je	initial_check
	jmp	initialization

initial_check:
	mov	eax, [heightC]
	add	eax, 1
	mov	[heightC], eax

	cmp	edx, [heightC]
	je	end_jump

	mov	eax, 0
	mov	[luminance], eax

	call	read_int
	mov	[luminance], eax

	call	read_int
	add	[luminance], eax

	call	read_int
	add	[luminance], eax


	mov	eax, [luminance]

	cmp	eax, 10
	jb	i0
	cmp	eax, 20
	jb	i1
	cmp	eax, 30
	jb	i2
	cmp	eax, 40
	jb	i3
	cmp	eax, 50
	jb	i4
	cmp	eax, 60
	jb	i5
	cmp	eax, 70
	jb	i6
	cmp	eax, 80
	jb	i7
	cmp	eax, 90
	jb	i8
	cmp	eax, 100
	jb	i9
	cmp	eax, 110
	jb	i10
	cmp	eax, 120
	jb	i11
	cmp	eax, 130
	jb	i12
	cmp	eax, 140
	jb	i13
	cmp	eax, 150
	jb	i14
	cmp	eax, 160
	jb	i15
	cmp	eax, 170
	jb	i16
	cmp	eax, 180
	jb	i17
	cmp	eax, 190
	jb	i18
	cmp	eax, 200
	jb	i19
	cmp	eax, 210
	jb	i20
	cmp	eax, 220
	jb	i21
	cmp	eax, 230
	jb	i22
	cmp	eax, 240
	jb	i23
	cmp	eax, 250
	jb	i24
	cmp	eax, 260
	jb	i25
	cmp	eax, 270
	jb	i26
	cmp	eax, 280
	jb	i27
	cmp	eax, 290
	jb	i28
	cmp	eax, 300
	jb	i29
	cmp	eax, 310
	jb	i30
	cmp	eax, 320
	jb	i31
	cmp	eax, 330
	jb	i32
	cmp	eax, 340
	jb	i33
	cmp	eax, 350
	jb	i34
	cmp	eax, 360
	jb	i35
	cmp	eax, 370
	jb	i36
	cmp	eax, 380
	jb	i37
	cmp	eax, 390
	jb	i38
	cmp	eax, 400
	jb	i39
	cmp	eax, 410
	jb	i40
	cmp	eax, 420
	jb	i41
	cmp	eax, 430
	jb	i42
	cmp	eax, 440
	jb	i43
	cmp	eax, 450
	jb	i44
	cmp	eax, 460
	jb	i45
	cmp	eax, 470
	jb	i46
	cmp	eax, 480
	jb	i47
	cmp	eax, 490
	jb	i48
	cmp	eax, 500
	jb	i49
	cmp	eax, 510
	jb	i50
	cmp	eax, 520
	jb	i51
	cmp	eax, 530
	jb	i52
	cmp	eax, 540
	jb	i53
	cmp	eax, 550
	jb	i54
	cmp	eax, 560
	jb	i55
	cmp	eax, 570
	jb	i56
	cmp	eax, 580
	jb	i57
	cmp	eax, 590
	jb	i58
	cmp	eax, 600
	jb	i59
	cmp	eax, 610
	jb	i60
	cmp	eax, 620
	jb	i61
	cmp	eax, 630
	jb	i62
	cmp	eax, 640
	jb	i63
	cmp	eax, 650
	jb	i64
	cmp	eax, 660
	jb	i65
	cmp	eax, 670
	jb	i66
	cmp	eax, 680
	jb	i67
	cmp	eax, 690
	jb	i68
	cmp	eax, 700
	jb	i69
	cmp	eax, 710
	jb	i70
	cmp	eax, 720
	jb	i71
	cmp	eax, 730
	jb	i72
	cmp	eax, 740
	jb	i73
	cmp	eax, 766
	jb	i74
	jmp	end_jump

i0:
	mov	eax, [counter0]
	inc	eax
	mov	[counter0], eax
	jmp	initial_check
i1:
	mov	eax, [counter1]
	inc 	eax
	mov	[counter1], eax
	jmp	initial_check
i2:
	mov	eax, [counter2]
	inc	eax
	mov	[counter2], eax
	jmp	initial_check
i3:
	mov	eax, [counter3]
	inc 	eax
	mov	[counter3], eax
	jmp	initial_check
i4:
	mov	eax, [counter4]
	inc 	eax
	mov	[counter4], eax
	jmp	initial_check
i5:
	mov	eax, [counter5]
	inc 	eax
	mov	[counter5], eax
	jmp	initial_check
i6:
	mov	eax, [counter6]
	inc 	eax
	mov	[counter6], eax
	jmp	initial_check
i7:
	mov	eax, [counter7]
	inc 	eax
	mov	[counter7], eax
	jmp	initial_check
i8:
	mov	eax, [counter8]
	inc 	eax
	mov	[counter8], eax
	jmp	initial_check
i9:
	mov	eax, [counter9]
	inc 	eax
	mov	[counter9], eax
	jmp	initial_check
i10:
	mov	eax, [counter10]
	inc 	eax
	mov	[counter10], eax
	jmp	initial_check
i11:
	mov	eax, [counter11]
	inc 	eax
	mov	[counter11], eax
	jmp	initial_check
i12:
	mov	eax, [counter12]
	inc 	eax
	mov	[counter12], eax
	jmp	initial_check
i13:
	mov	eax, [counter13]
	inc 	eax
	mov	[counter13], eax
	jmp	initial_check
i14:
	mov	eax, [counter14]
	inc 	eax
	mov	[counter14], eax
	jmp	initial_check
i15:
	mov	eax, [counter15]
	inc 	eax
	mov	[counter15], eax
	jmp	initial_check
i16:
	mov	eax, [counter16]
	inc 	eax
	mov	[counter16], eax
	jmp	initial_check
i17:
	mov	eax, [counter17]
	inc 	eax
	mov	[counter17], eax
	jmp	initial_check
i18:
	mov	eax, [counter18]
	inc 	eax
	mov	[counter18], eax
	jmp	initial_check
i19:
	mov	eax, [counter19]
	inc 	eax
	mov	[counter19], eax
	jmp	initial_check
i20:
	mov	eax, [counter20]
	inc 	eax
	mov	[counter20], eax
	jmp	initial_check
i21:
	mov	eax, [counter21]
	inc 	eax
	mov	[counter21], eax
	jmp	initial_check
i22:
	mov	eax, [counter22]
	inc 	eax
	mov	[counter22], eax
	jmp	initial_check
i23:
	mov	eax, [counter23]
	inc 	eax
	mov	[counter23], eax
	jmp	initial_check
i24:
	mov	eax, [counter24]
	inc 	eax
	mov	[counter24], eax
	jmp	initial_check
i25:
	mov	eax, [counter25]
	inc 	eax
	mov	[counter25], eax
	jmp	initial_check
i26:
	mov	eax, [counter26]
	inc 	eax
	mov	[counter26], eax
	jmp	initial_check
i27:
	mov	eax, [counter27]
	inc 	eax
	mov	[counter27], eax
	jmp	initial_check
i28:
	mov	eax, [counter28]
	inc 	eax
	mov	[counter28], eax
	jmp	initial_check
i29:
	mov	eax, [counter29]
	inc 	eax
	mov	[counter29], eax
	jmp	initial_check
i30:
	mov	eax, [counter30]
	inc 	eax
	mov	[counter30], eax
	jmp	initial_check
i31:
	mov	eax, [counter31]
	inc 	eax
	mov	[counter31], eax
	jmp	initial_check
i32:
	mov	eax, [counter32]
	inc 	eax
	mov	[counter32], eax
	jmp	initial_check
i33:
	mov	eax, [counter33]
	inc 	eax
	mov	[counter33], eax
	jmp	initial_check
i34:
	mov	eax, [counter34]
	inc 	eax
	mov	[counter34], eax
	jmp	initial_check
i35:
	mov	eax, [counter35]
	inc 	eax
	mov	[counter35], eax
	jmp	initial_check
i36:
	mov	eax, [counter36]
	inc 	eax
	mov	[counter36], eax
	jmp	initial_check
i37:
	mov	eax, [counter37]
	inc 	eax
	mov	[counter37], eax
	jmp	initial_check
i38:
	mov	eax, [counter38]
	inc 	eax
	mov	[counter38], eax
	jmp	initial_check
i39:
	mov	eax, [counter39]
	inc 	eax
	mov	[counter39], eax
	jmp	initial_check
i40:
	mov	eax, [counter40]
	inc 	eax
	mov	[counter40], eax
	jmp	initial_check
i41:
	mov	eax, [counter41]
	inc 	eax
	mov	[counter41], eax
	jmp	initial_check
i42:
	mov	eax, [counter42]
	inc 	eax
	mov	[counter42], eax
	jmp	initial_check
i43:
	mov	eax, [counter43]
	inc 	eax
	mov	[counter43], eax
	jmp	initial_check
i44:
	mov	eax, [counter44]
	inc 	eax
	mov	[counter44], eax
	jmp	initial_check
i45:
	mov	eax, [counter45]
	inc 	eax
	mov	[counter45], eax
	jmp	initial_check
i46:
	mov	eax, [counter46]
	inc 	eax
	mov	[counter46], eax
	jmp	initial_check
i47:
	mov	eax, [counter47]
	inc 	eax
	mov	[counter47], eax
	jmp	initial_check
i48:
	mov	eax, [counter48]
	inc 	eax
	mov	[counter48], eax
	jmp	initial_check
i49:
	mov	eax, [counter49]
	inc 	eax
	mov	[counter49], eax
	jmp	initial_check
i50:
	mov	eax, [counter50]
	inc 	eax
	mov	[counter50], eax
	jmp	initial_check
i51:
	mov	eax, [counter51]
	inc 	eax
	mov	[counter51], eax
	jmp	initial_check
i52:
	mov	eax, [counter52]
	inc	eax
	mov	[counter52], eax
	jmp	initial_check
i53:
	mov	eax, [counter53]
	inc 	eax
	mov	[counter53], eax
	jmp	initial_check
i54:
	mov	eax, [counter54]
	inc 	eax
	mov	[counter54], eax
	jmp	initial_check
i55:
	mov	eax, [counter55]
	inc 	eax
	mov	[counter55], eax
	jmp	initial_check
i56:
	mov	eax, [counter56]
	inc 	eax
	mov	[counter56], eax
	jmp	initial_check
i57:
	mov	eax, [counter57]
	inc 	eax
	mov	[counter57], eax
	jmp	initial_check
i58:
	mov	eax, [counter58]
	inc 	eax
	mov	[counter58], eax
	jmp	initial_check
i59:
	mov	eax, [counter59]
	inc 	eax
	mov	[counter59], eax
	jmp	initial_check
i60:
	mov	eax, [counter60]
	inc 	eax
	mov	[counter60], eax
	jmp	initial_check
i61:
	mov	eax, [counter61]
	inc 	eax
	mov	[counter61], eax
	jmp	initial_check
i62:
	mov	eax, [counter62]
	inc 	eax
	mov	[counter62], eax
	jmp	initial_check
i63:
	mov	eax, [counter63]
	inc 	eax
	mov	[counter63], eax
	jmp	initial_check
i64:
	mov	eax, [counter64]
	inc 	eax
	mov	[counter64], eax
	jmp	initial_check
i65:
	mov	eax, [counter65]
	inc 	eax
	mov	[counter65], eax
	jmp	initial_check
i66:
	mov	eax, [counter66]
	inc 	eax
	mov	[counter66], eax
	jmp	initial_check
i67:
	mov	eax, [counter67]
	inc 	eax
	mov	[counter67], eax
	jmp	initial_check
i68:
	mov	eax, [counter68]
	inc 	eax
	mov	[counter68], eax
	jmp	initial_check
i69:
	mov	eax, [counter69]
	inc 	eax
	mov	[counter69], eax
	jmp	initial_check
i70:
	mov	eax, [counter70]
	inc 	eax
	mov	[counter70], eax
	jmp	initial_check
i71:
	mov	eax, [counter71]
	inc 	eax
	mov	[counter71], eax
	jmp	initial_check
i72:
	mov	eax, [counter72]
	inc 	eax
	mov	[counter72], eax
	jmp	initial_check
i73:
	mov	eax, [counter73]
	inc 	eax
	mov	[counter73], eax
	jmp	initial_check
i74:
	mov	eax, [counter74]
	inc 	eax
	mov	[counter74], eax
	jmp	initial_check

end_jump:
	mov 	ebx, counter0		;ebx is the pointer to the counters
	mov	edx, 0

printloop:
	mov	eax, msg1
	call	print_string

	mov	eax, 0
	mov	eax, [range1]
	call	print_int

	mov	eax, msg2
	call	print_string

	mov	eax, 0
	mov	eax, [range2]
	call	print_int

	mov	eax, msg3
	call	print_string

	mov	eax, 0
	mov	ax, [ebx]		;something here....
	call	print_int

	call	print_nl

	inc	ebx
	inc	ebx
	inc	edx

	mov	eax, [range1]
	add	eax, 10
	mov	[range1], eax

	mov	eax, [range2]
	add	eax, 10
	mov	[range2], eax

	cmp	dl, 75
	je	end

	jmp	printloop

end:

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	popa
	mov	eax, 0
	leave
	ret
