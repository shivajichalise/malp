.model small
.stack 64h
.data
  newline db 10,13, "$"
  str1 db "String 1$"
  str2 db "String 2$"
  str3 db "String 3$"
.code
  printnewline proc
    lea dx, newline
    mov ah, 09h
    int 21h
  ret
  printnewline endp
  
  main proc
    mov ax, @data
    mov ds, ax
  
    lea dx, str1
    mov ah, 09h
    int 21h

    call printnewline
    
    lea dx, str2
    mov ah, 09h
    int 21h
    
    call printnewline
    
    lea dx, str3
    mov ah, 09h
    int 21h
  
  main endp
end main
