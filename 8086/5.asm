print macro msg
  mov cx, 0Eh
  lea di, msg
  
  for: mov dl, [di]
       mov ah, 02h
       int 21h
       inc di
       loop for

  add di, 16h
  mov cx, 0Ch

  again: mov dl, [di]
	 mov ah, 02h
	 int 21h
	 inc di
	 loop again
endm

.model small
.stack 64h
.data
  str db 'Microprocessor and Assembly Language Programming$'
.code
  main proc
    mov ax, @data
    mov ds, ax
    
    print str
    
    mov ax, 4c00h
    int 21h
  main endp
end main
