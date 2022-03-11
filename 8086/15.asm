.model small
.stack 64h
.data
  array db 01,03,06,04,05,02
  count = ($-array)
  str1 db 10,13, "Biggest no.: $"
  str2 db 10,13, "Smallest no.: $"
.code
  main proc
    mov ax, @data
    mov ds, ax

    lea si, array
    mov cx, count
    mov bl, [si]
    mov bh, [si]

    for: cmp [si], bl
      jle small
      jg big
      again: inc si
      loop for

    lea dx, str2
    mov ah, 09h
    int 21h
    
    mov dl, bl
    add dl, 48
    mov ah, 02h
    int 21h

    lea dx, str1
    mov ah, 09h
    int 21h
    
    mov dl, bh
    add dl, 48
    mov ah, 02h
    int 21h
    
    mov ax, 4c00h
    int 21h
    
    small: mov bl, [si]
    jmp again
    
    big: cmp [si], bh
    jl again
    mov bh, [si]
    jmp again

  main endp
end main
