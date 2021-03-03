//Enunt:Sa se determine maximul si numarul de aparitii al acestuia intr-un array.
.data
  v: .long  1, 5, 4, 3, 5
  n: .long 5
  
.text
.globl _start

_start:
  mov $0,%ecx
  lea v,%edi
  //setez maximul ca fiind primul element 
  mov $1,%ebx
  mov (%edi, %ecx, 4), %eax
  //eax-maximul, ebx-nr de aparitii
  
  //plec de la 1 ca sa nu numar primul element de 2 ori
  mov $1, %ecx
  
  
etloop:
   
   cmp %ecx,n
   je etexit
   //daca am gasit un nr mai mare, actualizez eax,ebx
   cmp (%edi, %ecx, 4),%eax
   jl  etmodify
   //daca am gasit iar maximul curent, actualizez ebx
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
  
   
