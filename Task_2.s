 .section .bss
    .globl  ram
    .lcomm   ram, 256       
    .section .text
    .globl  fill_ram             

fill_ram:
    # Store FFh into RAM locations 50H - 58H indirect 
    leaq    ram+0x50, %rdi       
    movl    $9, %ecx             

.Lloop:
    movb    $0xFF, (%rdi)       
    incq    %rdi                 
    loop    .Lloop               
    ret

    .section .note.GNU-stack,"",@progbits