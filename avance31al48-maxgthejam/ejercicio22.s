@ DATOS GENERALES
@ usuario: maxgthejam
@ fecha: 29/04/2022
@ Ejercicio 2.2
@ Escribe el código ensamblador correspondiente a una estructura if en la que no
@ exista la rama de else.

@ SOLUCION EN C++
@ #include <iostream>
@ #include <stdio.h>
@ using namespace std;
@ int main()
@ {
@ bool a = false;
@ bool b = true;
@ if (a==b)
@ {
@	cout>>(a==b);
@ }
@ system("pause");
@ }

@ SECCION DE DATOS
@ no necesario

@ SECCION DE CODIGO

.global main
main:   mov r0, #0
	mov r1, #1
	cmp r0, r1
	bx  lr

