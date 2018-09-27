%macro mkmsg 0
section .data
name db "Grace_kid.s",0
msg db "%2$cmacro mkmsg 0%1$csection .data%1$cname db %4$cGrace_kid.s%4$c,0%1$cmsg db %4$c%3$s%4$c,0%1$cstart%1$c%2$cendmacro%1$c%2$cmacro start 0%1$csection .text%1$cglobal main%1$cextern dprintf%1$cmain: ;in main comment%1$cpush rbp%1$cmov rbp, rsp%1$clea rdi, [rel name]%1$cmov rsi, 0x0201%1$cmov rdx, 0o755%1$cmov rax, 0x2000005%1$csyscall%1$ccmp rax, -1%1$cje leave%1$cmov rdi, rax%1$cmov rax, 0%1$clea rsi, [rel msg]%1$cmov rdx, 10%1$cmov rcx, 37%1$cmov r8, rsi%1$cmov r9, 34%1$ccall dprintf%1$cadd rsp, 8%1$cleave:%1$cret%1$c%2$cendmacro%1$cmkmsg%1$c",0
start
%endmacro
%macro start 0
section .text
global main
extern dprintf
main: ;in main comment
push rbp
mov rbp, rsp
lea rdi, [rel name]
mov rsi, 0x0201
mov rdx, 0o755
mov rax, 0x2000005
syscall
cmp rax, -1
je leave
mov rdi, rax
mov rax, 0
lea rsi, [rel msg]
mov rdx, 10
mov rcx, 37
mov r8, rsi
mov r9, 34
call dprintf
add rsp, 8
leave:
ret
%endmacro
mkmsg
