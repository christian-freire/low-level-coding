section .data
    hello db 'Hello, World!', 0

section .text
    global _start

_start:
    ; write the string to stdout
    mov eax, 4       ; system call number for write
    mov ebx, 1       ; file descriptor for stdout
    mov ecx, hello   ; pointer to the string
    mov edx, 13      ; length of the string
    int 0x80         ; invoke the system call

    ; exit the program
    mov eax, 1       ; system call number for exit
    xor ebx, ebx     ; exit status code
    int 0x80         ; invoke the system call
