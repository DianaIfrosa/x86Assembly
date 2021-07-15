//Problem: Verify whether a number is prime or not.

.data
  n: .long 5
  prime: .asciz "The number is prime\n"
  notprime: .asciz "The number is not prime\n"
  
.text
.globl _start
_start:
  mov n, %eax
  mov $2,%ebx 
  div %ebx
  mov %eax, %ebx
  
  mov n, %eax
  
  cmp $2,%eax
  jle etnotprime
  
  mov $0,%edx
  mov $1, %ecx
  jmp etloop
  
etnotprime:
  mov $4, %eax
  mov $1, %ebx
  mov $notprime, %ecx
  mov $25, %edx
  int $0x80
  jmp etexit
  
etprime:
  mov $4, %eax
  mov $1, %ebx
  mov $prime, %ecx
  mov $21, %edx
  int $0x80
  jmp etexit
  
etloop:
  
  mov n, %eax
 
  cmp %ecx,%ebx
  je etprime
  
  mov $0, %edx
  add $1,%ecx
  div %ecx
  cmp $0, %edx
  je etnotprime 
  
  jmp etloop
  
    
etexit:
 mov $1, %eax
 mov $0, %ebx
 int $0x80  
 
 
 
 
 
