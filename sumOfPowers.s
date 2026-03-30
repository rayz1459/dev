.globl main
main:
    push %rbp
    mov %rsp, %rbp
    mov $0, %rcx
    mov $0, %rax
    loop_start:
        
        cmp %rcx, %rdi
        jl label
        mov %rcx, %rdx
        imul %rdx, %rdx
        add %rdx, %rax
        add $1, %rcx
        jmp loop_start
    
    label:
    pop %rbp
    ret