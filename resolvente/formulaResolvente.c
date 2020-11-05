#include <stdio.h>
#include <stdlib.h>


extern void CMAIN(float a, float b, float c);


int main () {
    //TODO: consulta por consola
    float valorA, valorB, valorC;
    printf("Ingrese el valor de A:");
    scanf("%f",&valorA);

    printf("Ingrese el valor de B:");
    scanf("%f",&valorB);

    printf("Ingrese el valor de C:");
    scanf("%f",&valorC);
    
    CMAIN(valorA,valorB,valorC);

}