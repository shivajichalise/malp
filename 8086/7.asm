.model small
.stack 64h
.data
  msg1 db 10,13, "Enter the number: $"
  msg2 db 10,13, "Square of given number is: $"
.code
  main proc
    mov ax, @data
    mov ds, ax

    lea dx, msg1
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h
    
    sub al, 30h
    mov bl, al
    call findsquare
    mov bx, ax

    lea dx, msg2
    mov ah, 09h
    int 21h
    
    mov dl, bh
    add dl, 30h
    mov ah, 02h
    int 21h

    mov dl, bl
    add dl, 30h
    mov ah, 02h
    int 21h

    mov ax, 4c00h
    int 21h
  main endp

  findsquare proc
   mul bl
   aam
  ret
  findsquare endp
end main
