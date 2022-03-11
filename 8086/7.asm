.model small
.stack 64h
.data
  msg1 db 10,13, "Enter the number: $"
.code
  main proc
    mov ax, @data
    mov ds, ax

    lea dx, msg1
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h

    mov bh, 00h

    mov bl, al
    call findsquare
    add dl, bl

    mov ah, 02h
    int 3h
    int 21h
    

  main endp

  findsquare proc
    mov cx, bl
    mov bl, 00h
    for: add bl, al
         loop for
  ret
  findsquare endp
end main
