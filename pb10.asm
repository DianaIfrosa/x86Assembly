.data 
   n: .long 13
   const: .long 0
   prim: .asciz "Numarul dat este prim\n"
   compus: .asciz "Numarul dat nu este prim\n"
   
.text
.globl _start

_start:
   mov n, %eax
   mov $1, %ecx
   mov $0, %ebx
   jmp etdivizori 

     
etgasit:
   mov %ecx, %ebx 
   jmp etcompus
   
     
etdivizori:

  mov n, %eax
 
  add $1, %ecx
  cmp n, %ecx
  je etprim
  
  mov $0, %edx
  div %ecx
  cmp %edx, const
  je etgasit
  
  jmp etdivizori
 

  
etprim:
  mov $4, %eax
  mov $1, %ebx
  mov $prim, %ecx
  mov $22, %edx
  int $0x80
  jmp etexit
 
 
etcompus:
  mov $4, %eax
  mov $1, %ebx
  mov $compus, %ecx
  mov $25, %edx
  int $0x80
  jmp etexit
   
etexit:
 mov $1, %eax
 mov $0, %ebx
 int $0x80
 
 
