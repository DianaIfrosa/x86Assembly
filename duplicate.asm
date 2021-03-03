//Enunt: Fie dat un array in memorie de lungime impara. Stim ca toate elementele sunt duplicate, cu
//exceptia unuia, de exemplu v = { 1245, 342, 543523, 342, 4234, 1245, 543523 }, unde
//elementul 4234 este elementul singular. Sa se scrie un algoritm eficient care sa determine acest
//element (complexitate spatiu O(1) si complexitate timp O(n), unde n este lungimea array-
//ului).

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
          
   
