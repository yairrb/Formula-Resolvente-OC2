# Organizacion del Computador 2 - ejercicios

## Ejercicio nro 4
### Usted dispone de un dispositivo que utiliza un sistema de paginacion con direcciones virtuales de 32 bits, 1GB de memoria fisica y frames de 4KB. ¿Cuantas entradas posee la tabla de paginas de cada uno de estos esquemas?
### c) si se utililza un sistema de paginacion de un solo nivel.
        Para este caso, sabemos que podemos direccionar hasta 2^32 y tenemos páginas de 2^12. 
        Por lo tanto, tendremos, al tratarse de un sistema de paginación de un solo nivel, 2^32 / 2^12 = 2^20 entradas posibles.
        
### d) si se utiliza un sistema de tabla de paginacion invertido.
        Para la paginación invertida. tenemos un total de  2^30 / 2^12 = 2^18 frames. 
        por lo tanto tendremos un total de 2^18 entradas posibles.

## Ejercicio nro 6
### Se encuentran cargados los siguientes registros de segmento para el proceso P1:
    CS -> base address: 1000 , limit: 800
    DS -> base address: 500 , limit: 250
    SS -> base address: 4000 , limit: 200
    
### Por otro lado, el proceso lee las siguientes direcciones lógicas:
    A. La dirección 0 para el segmento de datos.
       * dirección física = 500
    B. La dirección 550 para el segmento de código.
       * dirección física = 1550
    C. La dirección 100 para el segmento de stack.
       * dirección física = 4100
    D. La dirección 4000 para el segmento de stack.
       * se genera un trap
## Ejercicio nro 7
### Dado el siguiente esquema, indicar el estado final de la cache TLB y tabla de páginas. También indicar la cantidad de rafagas utilizadas en cada secuencia.
### Las páginas requeridas son las siguientes:
        A. Pagina 1, Pagina 2, Pagina 6, Pagina 3, Pagina 2, Pagina 1, Pagina 4, Pagina 5
        B. Pagina 6, Pagina 1, Pagina 3, Pagina 2, Pagina 4, Pagina 5, Pagina 4, Pagina 6
### A)
La cantidad de rafagas es de **70 rafagas**
Estado de la TLB

![alt text](https://github.com/yairrb/Formula-Resolvente-OC2/blob/main/img/tbl-a.png)

Estado de la Tabla de Paginas

![alt text](https://github.com/yairrb/Formula-Resolvente-OC2/blob/main/img/tabla-paginas-a.png)

### b)
La cantidad de rafagas es de **63 rafagas**
Estado de la TLB

![alt text](https://github.com/yairrb/Formula-Resolvente-OC2/blob/main/img/tlb-b.png)

Estado de la Tabla de Paginas

![alt text](https://github.com/yairrb/Formula-Resolvente-OC2/blob/main/img/tabla-paginas-b.png)
