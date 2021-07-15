//Problem:  Find the scalar product of 2 arrays.

.data
   v: .long 1,2,3,4,5
   w: .long 2,2,2,2,2
   n: .long 5
   
.text
.globl _start

_start:
   lea v, %edi 
   lea w, %esi
   mov $0, %ecx # counter
   mov $0, %ebx # final sum
   mov $0, %eax # intermediate results
   
etloop:
   cmp n, %ecx
   je etexit
   movl (%edi, %ecx, 4),%eax
   
   movl (%esi, %ecx, 4), %edx
   mul %edx
 
  add %eax, %ebx
  
  add $1, %ecx
  
  jmp etloop
  
etexit:
  mov $1, %eax
  mov $0, %ebx
  int $0x80      
     
