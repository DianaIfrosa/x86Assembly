.data
   v: .long 12, 13, 12, 5, 8, 13, 8  
   n: .long 7
   
.text
.globl _start
_start:

   lea v, %edi
   mov $0, %ecx
   movl (%edi, %ecx, 4), %eax
   add $1, %ecx
    
etloop:

   cmp n, %ecx
   jge etexit
   xor (%edi, %ecx, 4), %eax
   add $1, %ecx
   
   jmp etloop 
   
etexit:
   mov $0, %eax
   mov $1, %ebx
   int $0x80
          
   
