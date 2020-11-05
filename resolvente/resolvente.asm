;%include "io.inc"

extern printf

section .data
format db "el resultado es: %.2f",10,13,0
result dq 0.0
divisor dq 0.0
termino1 dq 0.0
termino2 dq 0.0
a dq 0.0
b dq 0.0
c dq 0.0

var1 dq 4.0 ;hacer constante
var2 dq 2.0 ; hacer constante
section .text
global CMAIN
CMAIN:
    ;write your code here
    xor eax, eax
    push ebp
    mov ebp,esp ; base y punteros apuntado a lo mismo
    
    ;recupero parametros
    fld dword[ebp+8] ; carga en st0 el primer parametro
    fstp qword[a]
    fld dword[ebp+12]
    fstp qword[b]
    fld dword[ebp+16]
    fstp qword[c]
    

    ;cambio de signo el valor  de B
    fld qword[b] ; lo almacena en st0
    fchs
    fst qword[termino1]
    
    ;potencia
    fld qword[b]
    fld qword[b]
    fmul
    
    ;4 * A *C
    fld qword[var1]
    fld qword[a]
    fmul
    fld qword[c]
    fmul
    ; B*B - 4*A*C
    fsub
    ;raiz
    fsqrt
    fst qword[termino2]
    
    ;resta
    fsub 
    
       ;parte de la division 2 * A
    fld qword[var2]
    fld qword[a]
    fmul
    fst qword[divisor]
    
    
    ;division
    fdiv
    
    fld qword[termino2]
    fld qword[termino1]
    fadd
    fld qword[divisor]
    fdiv
    
    fstp qword[result]
    ;push en dos partes
    push dword[result+4]
    push dword[result]
    push format
    
    call printf
    add esp, 12
    
     fstp qword[result]
    ;push en dos partes
    push dword[result+4]
    push dword[result]
    push format
    
    call printf
    add esp, 12
    
    xor eax, eax
    
    ret