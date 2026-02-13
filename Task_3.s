    .section .bss
    .globl  ram
    .comm   ram, 256   

    .section .text               
    .globl  fill_ram


fill_ram:
    # Clear RAM locations 50H - 58H


    leaq    ram+0x50, %rdi      
    movl    $9, %ecx            

.Lloop:
    movb    $0x00, (%rdi)      
    incq    %rdi                
    loop    .Lloop              
    ret

    .section .note.GNU-stack,"",@progbits