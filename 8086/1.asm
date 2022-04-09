.model small
.stack 64h
.data
	msg db "HELLO WORLD!$"
.code
	main proc
		mov ax,@data
		mov ds,ax

		lea dx, msg
		mov ah, 09h
		int 21h

	mov ax, 4c00h
	int 21h
	main endp

end main
