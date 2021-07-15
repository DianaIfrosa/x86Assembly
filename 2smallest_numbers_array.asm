//Problem: Find the 2 smallest numbers in an array, in one traversal.
.data
     v: .long 5,13,0,13,7
     n: .long 5
 
.text
.globl _start

_start:
  lea v,%edi
  
  mov $0, %ecx
  mov $10000, %edx
  
  mov $10000, %ebx
  
etloop:
 cmp n,%ecx
 jge etexit
 
 cmp (%edi , %ecx, 4), %ebx
 jg etchange1
 cmp (%edi , %ecx, 4), %edx
 jg etchange2
 
 add $1, %ecx
 jmp etloop
  

etchange2:
   mov (%edi , %ecx, 4), %edx
   add $1, %ecx
   jmp etloop
   

etchange1:
   mov %ebx, %edx
   mov (%edi , %ecx, 4), %ebx
   add $1, %ecx
   jmp etloop
   
   
etexit:
  mov $1, %eax
  mov $0, %ebx
  int $0x80
  
   
   
