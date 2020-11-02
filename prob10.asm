.data
  n: .long 5
  prim: .asciz "Numarul e prim\n"
  compus: .asciz "Numarul e compus\n"
  
.text
.globl _start
_start:
  mov n, %eax
  mov $2,%ebx 
  div %ebx
  mov %eax, %ebx
  
  mov n, %eax
  
  cmp $2,%eax
  jle etcompus
  
  mov $0,%edx
  mov $1, %ecx
  jmp etloop
  
etcompus:
  mov $4, %eax
  mov $1, %ebx
  mov $compus, %ecx
  mov $18, %edx
  int $0x80
  jmp etexit
  
etprim:
  mov $4, %eax
  mov $1, %ebx
  mov $prim, %ecx
  mov $16, %edx
  int $0x80
  jmp etexit
  
etloop:
  
  mov n, %eax
 
  cmp %ecx,%ebx
  je etprim
  
  mov $0, %edx
  add $1,%ecx
  div %ecx
  cmp $0, %edx
  je etcompus 
  
  jmp etloop
  
  
  
etexit:
 mov $1, %eax
 mov $0, %ebx
 int $0x80  
 
 
 
 
 
