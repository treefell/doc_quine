section .data
fname db "Sully_%d.s",0
compile db "nasm -g --prefix _ -f macho64 Sully_%1$d.s -o Sully_%1$d.o && ld Sully_%1$d.o -lc -o Sully_%1$d /usr/lib/crt1.o",0
exe db "./Sully_%d",0
msg: db "section .data%1$cfname db %5$cSully_%2$cd.s%5$c,0%1$ccompile db %5$cnasm -g --prefix _ -f macho64 Sully_%2$c1$d.s -o Sully_%2$c1$d.o && ld Sully_%2$c1$d.o -lc -o Sully_%2$c1$d /usr/lib/crt1.o%5$c,0%1$c%1$cexe db %5$c./Sully_%2$cd%5$c,0%1$cmsg: db %5$c%3$s%5$c,0%1$csection .text%1$cglobal main%1$cextern malloc%1$cextern system%1$cextern sprintf%1$cextern dprintf%1$cmain:%1$cpush rbp%1$cmov rbp, rsp%1$cmov r12, %4$d%1$ccmp r12, 0%1$cjl leave%1$cdec r12%1$cmov rdi, 8%1$ccall malloc%1$cmov r13, rax%1$cmov rdi, r13%1$clea rsi, [rel fname]%1$cmov rdx, r12%1$ccall sprintf%1$cmov rdi, r13%1$cmov rsi, 0x0201%1$cmov rdx, 0o755%1$cmov rax,0x2000005%1$csyscall%1$ccmp rax, -1%1$cje leave%1$cmov rdi, rax%1$cmov rax, 0%1$clea rsi, [rel msg]%1$cmov rdx, 10%1$cmov rcx, 37%1$cmov r8, rsi%1$cmov r9, r12%1$cpush 34%1$cpush 34%1$ccall dprintf%1$cmov rdi, 140%1$ccall malloc%1$cmov r14, rax%1$cmov rdi, r14%1$clea rsi, [rel compile]%1$cmov rdx, r12%1$ccall sprintf%1$cmov rdi, r14%1$ccall system%1$ccmp r12, 1%1$cje leave%1$cmov rdi, 10%1$ccall malloc%1$cmov r15, rax%1$cmov rdi, r15%1$clea rsi, [rel exe]%1$cmov rdx, r12%1$ccall sprintf%1$cmov rdi, r15%1$ccall system%1$cleave:%1$cret%1$c",0
section .text
global main
extern malloc
extern system
extern sprintf
extern dprintf
main:
push rbp
mov rbp, rsp
mov r12, 6
cmp r12, 0
jl leave
dec r12
mov rdi, 8
call malloc
mov r13, rax
mov rdi, r13
lea rsi, [rel fname]
mov rdx, r12
call sprintf
mov rdi, r13
mov rsi, 0x0201
mov rdx, 0o755
mov rax,0x2000005
syscall
cmp rax, -1
je leave
mov rdi, rax
mov rax, 1
lea rsi, [rel msg]
mov rdx, 10
mov rcx, 37
mov r8, rsi
mov r9, r12
push 34
push 34
call dprintf
;add rsp, 64
mov rdi, 140
call malloc
mov r14, rax
mov rdi, r14
lea rsi, [rel compile]
mov rdx, r12
call sprintf
mov rdi, r14
call system
cmp r12, 1
jl leave
mov rdi, 10
call malloc
mov r15, rax
mov rdi, r15
lea rsi, [rel exe]
mov rdx, r12
call sprintf
mov rdi, r15
call system
leave:
ret
