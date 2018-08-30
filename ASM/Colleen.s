section .data ;out main comment
msg: db "section .data %2$cout main comment%1$cmsg: db %4$c%3$s%4$c,0%1$csection .text%1$cglobal main%1$cextern printf%1$cmain: %2$cin main comment%1$cpush rbp%1$ccall func%1$cmov rbp, rsp%1$cmov rdi, msg%1$cmov rsi, 10%1$cmov rdx, 59%1$cmov rcx, msg%1$cmov r8, 34%1$ccall printf%1$cleave%1$cret%1$cfunc:%1$cret%1$c",0
section .text
global main
extern printf
main: ;in main comment
push rbp
call func
mov rbp, rsp
mov rdi, msg
mov rsi, 10
mov rdx, 59
mov rcx, msg
mov r8, 34
call printf
leave
ret
func:
ret
