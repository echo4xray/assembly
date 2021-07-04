; Author: echo4xray
; lesson 3 - asmtutor
; calculate the lenth of a string

global _start

section .text

_start:

	mov eax, 0
	mov ebx, 0
	mov ecx, 0
	mov edx, string

check:	
	mov al, [edx]		  ; only for check/debug purposes
	cmp byte [edx], 0	; compare if edx points to zero, if so: ZF is set
	jz finish		      ; jump to finish if ZF is set
	inc ecx			      ; increment 1 to ecx (size of the string)
	inc edx			      ; increment 1 to edx (string array iterator)
	jmp check   		  ; jump back to the begin

finish:
	mov ebx, 0
	mov eax, 1
	int 80h
	

section .data

	string: db "Hello brave new world", 0Ah ; string contains 21 chars + 1 \0
