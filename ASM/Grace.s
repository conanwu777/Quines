hello.string db "hello.string db %c%s%c, 0%cname db %cGrace_kid.s%c, 0%cwr db %cw%c, 0%c%%define FT _main:%c%%define DECLEAR global _main%csection .text%cDECLEAR%cextern _fprintf%cextern _fopen%cFT%cpush rbp%cmov rbp, rsp%csub rsp, 16%clea rsi, [rel wr]%clea rdi, [rel name]%ccall _fopen%cmov rdi, rax%clea rsi, [rel hello.string]%cmov rdx, 34%clea rcx, [rel hello.string]%cmov r8d, 34%cmov r9d, 10%cmov r15, 39%cloop:%cpush 10%csub r15, 1%ccmp r15, 0%cjg loop%cpush 34%cpush 34%cpush 10%cpush 34%cpush 34%cmov rax, 0%ccall _fprintf%cmov rax, 0%cleave%cret%c;this is where things end", 0
name db "Grace_kid.s", 0
wr db "w", 0
%define FT _main:
%define DECLEAR global _main
section .text
DECLEAR
extern _fprintf
extern _fopen
FT
push rbp
mov rbp, rsp
sub rsp, 16
lea rsi, [rel wr]
lea rdi, [rel name]
call _fopen
mov rdi, rax
lea rsi, [rel hello.string]
mov rdx, 34
lea rcx, [rel hello.string]
mov r8d, 34
mov r9d, 10
mov r15, 39
loop:
push 10
sub r15, 1
cmp r15, 0
jg loop
push 34
push 34
push 10
push 34
push 34
mov rax, 0
call _fprintf
mov rax, 0
leave
ret
;this is where things end