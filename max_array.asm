//Problem: Find maximum value and the number of occurrences in an array.
.data
  v: .long  1, 5, 4, 3, 5
  n: .long 5
  
.text
.globl _start

_start:
  mov $0,%ecx
  lea v,%edi
  
  //max is the first element of the array 
  
  mov $1,%ebx
  mov (%edi, %ecx, 4), %eax
  
  //eax-max, ebx-frequency
  //start from 1 to avoid counting the first element twice
  
  mov $1, %ecx
  
etloop:
   
   cmp %ecx,n
   je etexit
   //found a bigger number, update eax and ebx
   cmp (%edi, %ecx, 4),%eax
   jl  etmodify
   //found the current max, update ebx
   cmp (%edi, %ecx, 4),%eax
   je etmodify2
   
   cmp (%edi, %ecx, 4),%eax
   jg etmodify3
   
etmodify3:
  add $1, %ecx
  jmp etloop 
   
etmodify:
  mov (%edi, %ecx, 4), %eax
  mov $1, %ebx  
  add $1, %ecx
  jmp etloop 
  
     
etmodify2:
  add $1, %ebx
  add $1, %ecx
  jmp etloop    
  
 
etexit:
  mov $1, %eax
  mov $0, %ebx
  int $0x80 
  
   
