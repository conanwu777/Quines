section .data
hello.string db "section .data%chello.string db %c%s%c, 0%corg db %cSully.s%c, 0%cname db %cSully_X.s%c, 0%cw db %cw%c, 0%ccomp db %cnasm -f macho64 Sully_X.s;gcc Sully_X.o -o Sully_X;./Sully_X%c, 0%csection .text%cglobal _main%cextern _fprintf%cextern _fopen%cextern _fclose%cextern _system%c_main:%cmov rdi, %d%cpush rbp%cmov rbp, rsp%csub rsp, 16%ccmp rdi, 0%cjg cont%cleave%cret%ccont:%csub rdi, 1%cmov r13, rdi%cmov bl, dil%cadd bl, 48%cmov [rel name + 6], bl%cmov [rel comp + 22], bl%cmov [rel comp + 36], bl%cmov [rel comp + 49], bl%cmov [rel comp + 59], bl%clea rdi, [rel comp]%clea rdi, [rel name]%clea rsi, [rel w]%ccall _fopen%cmov rdi, rax%clea rsi, [rel hello.string]%cmov rdx, 10%cmov rcx, 34%cmov r8, rsi%cmov r9d, 34%cmov r14, 63%cloop0:%cpush 10%ccmp r14, 9%cjne nx%cpush r13%cnx:%csub r14, 1%ccmp r14, 0%cjg loop0%cmov r14, 4%cloop2:%cpush 34%cpush 34%cpush 10%csub r14, 1%ccmp r14, 0%cjg loop2%cmov r12, rdi%ccall _fprintf%cmov rdi, r12%ccall _fclose%clea rdi, [rel comp]%ccall _system%cleave%cret", 0
org db "Sully.s", 0
name db "Sully_X.s", 0
w db "w", 0
comp db "nasm -f macho64 Sully_X.s;gcc Sully_X.o -o Sully_X;./Sully_X", 0
section .text
global _main
extern _fprintf
extern _fopen
extern _fclose
extern _system
_main:
mov rdi, 6
push rbp
mov rbp, rsp
sub rsp, 16
cmp rdi, 0
jg cont
leave
ret
cont:
sub rdi, 1
mov r13, rdi
mov bl, dil
add bl, 48
mov [rel name + 6], bl
mov [rel comp + 22], bl
mov [rel comp + 36], bl
mov [rel comp + 49], bl
mov [rel comp + 59], bl
lea rdi, [rel comp]
lea rdi, [rel name]
lea rsi, [rel w]
call _fopen
mov rdi, rax
lea rsi, [rel hello.string]
mov rdx, 10
mov rcx, 34
mov r8, rsi
mov r9d, 34
mov r14, 63
loop0:
push 10
cmp r14, 9
jne nx
push r13
nx:
sub r14, 1
cmp r14, 0
jg loop0
mov r14, 4
loop2:
push 34
push 34
push 10
sub r14, 1
cmp r14, 0
jg loop2
mov r12, rdi
call _fprintf
mov rdi, r12
call _fclose
lea rdi, [rel comp]
call _system
leave
ret