.model small
.stack 64h
.data
  str1 db "String 1$"
  str2 db ?
.code
  main proc
    mov ax, @data
    mov ds, ax
    mov es, ax

    lea si, str1
    lea di, str2

    mov cx, 09h

    rep movsb

    lea dx, str2
    mov ah, 09h
    int 21h

    mov ax, 4c00h
    int 21h

  main endp
end main
