//Problem: Calculate EAX ← EAX! (EAX factorial).

.data
    n: .long 20
    
.text

.globl _start

_start:

   mov n, %eax
   //%eax=n, %ebx=superior limit
   mov %eax, %ebx
   
   //in %eax i save the product
   mov $1, %eax
   
   //counter
   mov $1, %ecx
   

etfactorial:

   cmp %ebx, %ecx   
   jg etexit 
   
   mul %ecx
   add $1, %ecx 
   jmp etfactorial


etexit:

   mov $1, %eax
   mov $0, %ebx
   int $0x80
   
   
   
