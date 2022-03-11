.model small
.stack 16h
.data
.code
  main proc
    mov ax, 3000h
    mov ds, ax

    mov si, 0D000h
    mov di, 0E000h

    mov cx, 0Fh
    for: mov al, [si]
      mov [di], al
      inc di
      inc si
      dec cx
      loop for

    mov ax, 4c00h
    int 21h

  main endp
end main
