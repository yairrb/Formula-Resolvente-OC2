%include "io.inc"
extern _printf
section .data
vector dq 3.0, 5.5 , 3.0 , 2.0
cantidad dq 4
sumados dq 0.0

format db "el resultado es: %f",10,13,0
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    xor eax, eax
    ;comparar la cantidad de elementos del vector
    mov edx, dword[cantidad]
    fldz
    
    mov ecx, vector
    
    ;comparacion
    suma:
    cmp edx, 00
    je fin
   
    fld qword[ecx]
    add ecx, 8
    sub edx, 1
    fadd
    jmp suma
    
    fin:
    fst qword[sumados]
    push dword[sumados+4]
    push dword[sumados]
    
    push format
    
    call _printf
    add esp,12
    xor eax, eax
    ret