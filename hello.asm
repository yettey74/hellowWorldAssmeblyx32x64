; x64
section .data
    hello db 'Hello, World!', 0xA  ; The string to print with a newline at the end
    helloLen equ $-hello           ; The length of the string

section .text
    global main
    extern printf, ExitProcess

main:
    ; Call printf to print the message
    lea rcx, [hello]
    call printf

    ; Call ExitProcess to exit the program
    xor ecx, ecx
    call ExitProcess

; x32
;section .data
;    hello db 'Hello, World!', 0xA  ; The string to print with a newline at the end
;    helloLen equ $-hello           ; The length of the string

;section .text
;    global _start

;_start:
    ; Write to stdout
;    mov eax, 4      ; syscall number for sys_write
;   mov ebx, 1      ; file descriptor 1 (stdout)
;    mov ecx, hello  ; pointer to the message
;    mov edx, helloLen  ; length of the message
;    int 0x80        ; call kernel

    ; Exit
;    mov eax, 1      ; syscall number for sys_exit
;    xor ebx, ebx    ; exit code 0
;    int 0x80        ; call kernel
