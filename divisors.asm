//Enunt: Se da un numar intreg cu semn, sa se determine toti divizorii acestuia.
.data 
   n: .long 165
   const: .long 0
   
.text
.globl _start

_start:
   mov n, %eax
   mov $0, %ecx
   //cmp $0, %eax
   jmp etdivizori 

//etsemn:
    // mov $-1, %ebx
    // imul %ebx
     //jmp etdivizori
     
     
etgasit:
   mov %ecx, %ebx   
     
etdivizori:

  mov n, %eax
 
  add $1, %ecx
  cmp n, %ecx
  jg etexit 
  
  mov $0, %edx
  div %ecx
  cmp %edx, const
  je etgasit
  
  jmp etdivizori
  
etexit:
 mov $1, %eax
 mov $0, %ebx
 int $0x80  
       
      
