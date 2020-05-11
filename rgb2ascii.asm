
%include "asm_io.inc"

segment .data
	msg1		db	".", 0
	msg2		db	"`", 0
	msg3		db	",", 0
	msg4		db	":", 0
	msg5		db	"i", 0
	msg6		db	"l", 0
	msg7		db	"w", 0
	msg8		db	"X", 0
	msg9		db	"W", 0

segment .bss
	width		resd	1
	height		resd	1
	integer		resd	1
	luminance	resd	1

segment .text
	global asm_main

asm_main:
	enter	0,0
	pusha

	call	read_int
	mov 	[width], eax
	mov	edx, eax
	call	read_int
	mov	[height], eax

initial_check:
	call	read_int
	mov	[luminance], eax	;move the first integer into luminance
	call	read_int
	add	eax, [luminance]	;add next line to luminance
	mov	[luminance], eax	;move the result into luminance
	call	read_int
	add	eax, [luminance]	;add next line to luminance
	mov	[luminance], eax	;move the final result to luminance

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	mov	eax, 85			;set eax to 85
	cmp	eax, [luminance]	;compare 85 to the value
	ja	period			;if it's < 85, move to period

	mov	eax, 170		;set eax to 170
	cmp	eax, [luminance]	;compare 170 to the value
	ja 	backtick		;if it's < 170, move to backtick

	mov	eax, 255
	cmp	eax, [luminance]
	ja	comma

	mov	eax, 340
	cmp	eax, [luminance]
	ja	colon

	mov	eax, 425
	cmp	eax, [luminance]
	ja	i

	mov	eax, 510
	cmp	eax, [luminance]
	ja	l

	mov	eax, 595
	cmp	eax, [luminance]
	ja	w

	mov	eax, 680
	cmp	eax, [luminance]
	ja	X

	mov	eax, 766
	cmp	eax, [luminance]
	ja	W

	jmp	end_loop

period:
	mov	eax, msg1
	call	print_string
	call 	print_string
	dec	edx
	cmp	edx, 0
	je	newline
	jmp	initial_check

backtick:
	mov	eax, msg2
	call	print_string
	call 	print_string
	dec	edx
	cmp	edx, 0
	je	newline
	jmp	initial_check

comma:
	mov	eax, msg3
	call	print_string
	call 	print_string
	dec	edx
	cmp	edx, 0
	je	newline
	jmp 	initial_check

colon:
	mov	eax, msg4
	call	print_string
	call 	print_string
	dec	edx
	cmp	edx, 0
	je	newline
	jmp	initial_check

i:
	mov	eax, msg5
	call	print_string
	call 	print_string
	dec	edx
	cmp	edx, 0
	je 	newline
	jmp	initial_check

l:
	mov	eax, msg6
	call	print_string
	call 	print_string
	dec	edx
	cmp	edx, 0
	je	newline
	jmp	initial_check

w:
	mov	eax, msg7
	call	print_string
	call 	print_string
	dec	edx
	cmp	edx, 0
	je	newline
	jmp	initial_check

X:
	mov	eax, msg8
	call	print_string
	call 	print_string
	dec	edx
	cmp	edx, 0
	je	newline
	jmp	initial_check

W:
	mov	eax, msg9
	call	print_string
	call 	print_string
	dec	edx
	cmp	edx, 0
	je	newline
	jmp	initial_check


newline:
	call	print_nl
	mov	edx, [width]
	jmp	initial_check

end_loop:



	popa
	mov	eax, 0
	leave
	ret

