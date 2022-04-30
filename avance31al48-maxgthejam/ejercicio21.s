@ DATOS GENERALES
@ Ejercicio 2.1
@ usuario: maxgthejam
@ fecha: 29/04/2022
@ escribe un bucle for que imprima los 50
@ primeros números pares naturales en orden inverso (desde 100 hasta 2 en pasos de
@ 2). Una vez hecho esto, aplica desenrollamiento de bucle de tal forma que el salto
@ condicional se ejecute 10 veces, con 5 repeticiones cada vez.

@ SOLUCION EN C++
@ #include <iostream>
@ #include <stdio.h>
@ using namespace std;
@ int main()
@ {
@ for(int x = 100; x>=2; i-= 2){
@ cout >> (x);
@ }
@ system("pause");
@ }

@ SECCION DE DATOS

.data
var1: .asciz " %d\ 012 "

@ SECCION DE CODIGO

.text
.global main
main: 	push	{r4, r5, r6, lr}
	mov	r4, #100
	ldr r5, =var1
.L2:	mov r1, r4
	mov r0, r5
	bl printf
	subs r4, r4, #2
	bne .L2
	pop {r4, r5, r6, pc}
