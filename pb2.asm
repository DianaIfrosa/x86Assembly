.data
   n: .long 0
   negativ: .asciz "Numarul dat este negativ!\n" 
   pozitiv: .asciz "Numarul dat este pozitiv!\n" 
   zero: .asciz "Numarul dat este zero!\n" 
   
.text
.globl _start

_start:
   cmp $0, n
   je etzero
   jl etnegativ
   jg etpozitiv
   
etzero:
   mov $4, %eax
   mov $1, %ebx
   mov $zero, %ecx
   mov $23, %edx
   int $0x80
   jmp etexit 
   
etnegativ:
   mov $4, %eax
   mov $1, %ebx
   mov $negativ, %ecx
   mov $26, %edx
   int $0x80  
   jmp etexit
   
etpozitiv:
   mov $4, %eax
   mov $1, %ebx
   mov $pozitiv, %ecx
   mov $26, %edx
   int $0x80
   
etexit:
  mov $1, %eax
  mov $0, %ebx
  int $0x80
    
