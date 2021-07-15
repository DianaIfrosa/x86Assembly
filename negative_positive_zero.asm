//Problem: In  EAX register we have an integer. Verify if the number is negative, positive or zero.
.data
   n: .long 0
   negative: .asciz "The number is negative!\n" 
   positive: .asciz "The number is positive!\n" 
   zero: .asciz "The number is zero!\n" 
   
.text
.globl _start

_start:
   cmp $0, n
   je etzero
   jl etnegative
   jg etpositive
   
etzero:
   mov $4, %eax
   mov $1, %ebx
   mov $zero, %ecx
   mov $20, %edx
   int $0x80
   jmp etexit 
   
etnegative:
   mov $4, %eax
   mov $1, %ebx
   mov $negative, %ecx
   mov $24, %edx
   int $0x80  
   jmp etexit
   
etpositive:
   mov $4, %eax
   mov $1, %ebx
   mov $positive, %ecx
   mov $24, %edx
   int $0x80
   
etexit:
  mov $1, %eax
  mov $0, %ebx
  int $0x80
    
