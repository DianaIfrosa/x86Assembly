//Problem: Find all divisors of a natural number n.
.data 
   n: .long 165
   const: .long 0
   
.text
.globl _start

_start:
   mov n, %eax
   mov $0, %ecx
   jmp etdivisors 
        
etfound:
   mov %ecx, %ebx   
     
etdivisors:

  mov n, %eax
 
  add $1, %ecx
  cmp n, %ecx
  jg etexit 
  
  mov $0, %edx
  div %ecx
  cmp %edx, const
  je etfound
  
  jmp etdivisors
  
etexit:
 mov $1, %eax
 mov $0, %ebx
 int $0x80  
       
      
