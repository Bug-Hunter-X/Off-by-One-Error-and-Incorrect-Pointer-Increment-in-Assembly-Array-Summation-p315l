```assembly
section .data
    array dw 10, 20, 30, 40, 50
    array_len equ $-array ; Calculate the length of the array

section .text
    global _start

_start:
    ; Calculate the sum of elements in the array
    mov esi, array ; Point to the beginning of the array
    mov ecx, array_len ; Initialize loop counter with the array length (in bytes)
    mov eax, 0 ; Initialize sum to zero 
    mov edi, 2 ; Increment in steps of 2 bytes (each word is 2 bytes)

loop_start:
    add ax, [esi] ; Add current array element to the sum
    add esi, edi ; Increment pointer to the next element
    loop loop_start ; Decrement loop counter and jump if not zero
    
    ; Exit program
    mov eax, 1
    xor ebx, ebx
    int 0x80
```