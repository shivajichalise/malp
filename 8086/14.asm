.model small
.stack 64h
.data
  str db 100 dup('$')
.code
  main proc
    mov ax, @data
    mov ds, ax

    lea di, str

    for: mov ah, 01h
      int 21h
      cmp al, 13
      je here
      mov [di], al
      inc di
      loop for
    
    here: lea di, str
    
    mov cx, length str
    again: push [di]
      inc di
      loop again
      
    mov cx, length str
    print: pop dx
      mov ah, 02h
      int 21h
      loop print
      
    mov ax, 4c00h
    int 21h

  main endp
end main
