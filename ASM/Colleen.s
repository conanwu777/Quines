section .data
hello.string db "section .data%chello.string db %c%s%c%c%csection .text%cglobal _main%cglobal _print%cextern _printf%c_print:%cpush rbp%cmov rbp, rsp%csub rsp, 16%cmov r9d, 10%cmov r8d, 34%clea rcx, [rdi]%cmov rdx, 34%cmov rsi, 10%cmov r15, 30%cloop:%cpush 10%csub r15, 1%ccmp r15, 0%cjg loop%ccall _printf%cleave%cret%c_main:%c;here comes the main%cpush rbp%cmov rbp, rsp%csub rsp, 16%clea rdi, [rel hello.string]%ccall _print%cleave%cret%c;this is where things end"
section .text
global _main
global _print
extern _printf
_print:
push rbp
mov rbp, rsp
sub rsp, 16
mov r9d, 10
mov r8d, 34
lea rcx, [rdi]
mov rdx, 34
mov rsi, 10
mov r15, 30
loop:
push 10
sub r15, 1
cmp r15, 0
jg loop
call _printf
leave
ret
_main:
;here comes the main
push rbp
mov rbp, rsp
sub rsp, 16
lea rdi, [rel hello.string]
call _print
leave
ret
;this is where things end