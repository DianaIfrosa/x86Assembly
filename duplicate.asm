//Problem: We are given an array with odd length. We know that all elements are duplicated, except for one, for example 
// v = { 1245, 342, 543523, 342, 4234, 1245, 543523 }, where
//element 4234 is not duplicated. Write an efficient algorithm to find that element in
//space complexity O(1) and time complexity O(n), where n is the lenght of the array.

//Idea: XOR

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
          
   
