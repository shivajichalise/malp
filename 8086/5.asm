print macro msg
  mov cx, 0Eh
  lea di, msg
  
  for: mov dl, [di]
       mov ah, 02h
       int 21h
       inc di
       loop for
endm

.model small
.stack 64h
.data
  str db 'Microprocessor and Assemble Language Programming$'
.code
  main proc
    mov ax, @data
    mov ds, ax
    
    disp str

  main endp
end main
