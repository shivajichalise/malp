.model small
.stack 64h
.data
  msg0 db 10,13, "8 BIT ADDITION$"
  msg1 db 10,13, "Input first number: $"
  msg2 db 10,13, "Input second number: $"
  msg3 db 10,13, "Result: $"
.code
      main proc
        mov ax, @data
        mov ds, ax
        
        lea dx, msg1
        mov ah, 09h
        int 21h
        
        mov ah, 01h
        int 21h         
        
        sub al, 48
        mov bl, al

        lea dx, msg2
        mov ah, 09h
        int 21h        

        mov ah, 01h
        int 21h

        sub al, 48
        add bl, al
        add bl, 48

        lea dx, msg3
        mov ah, 09h
        int 21h

        mov dl, bl
        mov ah, 02h
        int 21h

      main endp
end main
