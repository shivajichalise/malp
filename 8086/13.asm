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
      je stop
      mov [di], al
      inc di
      jmp for

    stop: lea dx, str
    mov ah, 09h
    int 21h

    mov ax, 4c00h
    int 21h

  main endp
end main
