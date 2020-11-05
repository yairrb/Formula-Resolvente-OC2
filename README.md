# Formula-Resolvente-OC2
## Trabajo Practico - Organizacion del Computador

### Enunciado
Se nos pide realizar un programa para la arquitectura IA32 que calcule las raíces de una función
cuadrática a través de la fórmula resolvente. Los coeficientes a, b y c de la función
deben ser recibidos por parámetro. Considerar que estos podrían tomar valores de
punto flotante o no.
![alt text](https://es-static.z-dn.net/files/d60/e4e65602996580c4ebc38d24aca34754.png)


**Asumir**:
- b 4ac 0, ∀ a, , ε R
2 − ≥ b c
- a > 0, a ε R
El codigo se encuentra [Aqui.](https://github.com/yairrb/Formula-Resolvente-OC2/tree/main/resolvente)

### Sobre el programa:
   en la carpeta [**resolvente**](https://github.com/yairrb/Formula-Resolvente-OC2/tree/main/resolvente) se encuentras los files necesarios para ejecutar nuestro programa. Ademas, ya tenemos generado el ejecutable **main** para poder utilizar el programa.

   El programa solicita al usuario que ingrese los valores necesarios para resolver la formula resolvente, como vemos a continuacion:
   
   ![alt text](https://github.com/yairrb/Formula-Resolvente-OC2/blob/main/img/ejecucion.png)



#### Cómo Ejecutar el programa:
   Para ejecutar el programa solo debemos ejecutar el file **main** que se encuentra en la carpeta [**resolvente**](https://github.com/yairrb/Formula-Resolvente-OC2/tree/main/resolvente)
    
    desde la consola podemos ejecutarlo de la siguiente manera:
   ![alt text](https://github.com/yairrb/Formula-Resolvente-OC2/blob/main/img/ejecutar-main.png)

#### Comandos para compilar:
   Para compilar nuestro programa y linkear C con NASM debemos utilizar los siguientes comandos
      1. primero utilizamos el comando
      **sudo nasm -f elf32 resolvente.asm -o resolvente.o**
      2. luego linkeamos nasm con C
      **sudo gcc -m32 formulaResolvente.c resolvente.o -main**
      3.ejecutamos el programa
      **./main** (este comando comenzara la ejecucion del programa)
      
   ![alt text](https://github.com/yairrb/Formula-Resolvente-OC2/blob/main/img/compilacion.png)
  
  
  # Ejericicios Obligatorios
  ## Gestion de memoria
  Los ejercicios obligatorios de gestion de memoria se encuantran en otroa archivo .md [Aqui](https://github.com/yairrb/Formula-Resolvente-OC2/blob/main/ejercicios/ejercicios-obligatorios.md)
  
  ## Practica FPU
  Escriba una función en assembler IA-32 que reciba un puntero a un vector de números de punto flotante de precisión simple y calcule la suma.
  El codigo con el ejercicio se encuentra [Aqui](https://github.com/yairrb/Formula-Resolvente-OC2/blob/main/ejercicios/suma-vector.asm)
  
    
