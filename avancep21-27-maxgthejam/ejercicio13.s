@author: maxgthejam
@date: 5 Abril 2022

@data section
.data

var1:   .byte 0b00110010
        .align

var2:   .byte 0b11000000
        .align
.text
.global main

@code section

main:   ldr     r1, = var1
        ldrb    r1, [r1]
        ldr     r2, = var2
        ldrb    r2, [r2]
        add     r0, r1, r2
        bx      lr

@ Ejecuta solo las 5 primeras instrucciones. Analiza
@ el resultado del registro r0 y responde el ejercicio.

@(gdb) i r r0
@ r0    0xfffffff2      
@ r0    0xf2

@ Si interpretamos el resultado como byte binario: 1111 0010
@ Hexadecimal: f2

@ Si interpretamos el resultado como word (32 bits):
@ 1111 1111 1111 1111
@ Hexadecimal: fffffff2

@ Idem, pero si no hubiesemos extendido los signos (ldrb en lugar de ldrsb):
@ 1111 0010
@ Hexadecimal: f2

@final
