//Problem: Find the nth term of fibonacci sequence, where n is given.
//         It is not necessary a positive number.

.data
    n: .long  5
    message: .asciz "no\n"
    
.text
.globl _start

_start:
  mov $2, %ecx
  mov $1, %eax
  mov $1, %ebx
  cmp $0, n
  jle etmessage
  

etloop:
 
  cmp n, %ecx
  
  jge etexit
  mov $0, %edx
  add %ebx, %edx
  add %eax,%edx
  
  mov %ebx,%eax
  mov %edx, %ebx
  
  add $1, %ecx
  jmp etloop
  
  
etmessage:
   mov $4, %eax
   mov $1, %ebx
   mov $message, %ecx
   mov $3, %edx
   int $0x80
  
etexit:

   mov $1, %eax
   mov $0, %ebx
   int $0x80


