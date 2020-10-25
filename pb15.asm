.data
    n: .long 20
    
.text

.globl _start

_start:

   mov n, %eax
   //%eax=n, %ebx=limita superioara 
   mov %eax, %ebx
   //in %eax pastrez produsul
   mov $1, %eax
   //contorul
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
   
   
   
