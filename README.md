
<div align="center">
<img src="https://img.shields.io/badge/assembly%20script-%23000000.svg?style=for-the-badge&logo=assemblyscript&logoColor=white">
<img src="https://img.shields.io/badge/c-%2300599C.svg?style=for-the-badge&logo=c&logoColor=white">
<img src="https://img.shields.io/badge/c++-%2300599C.svg?style=for-the-badge&logo=c%2B%2B&logoColor=white">
<img src="https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54">
<img src="https://img.shields.io/badge/Systems%20Engineering-blue?style=for-the-badge">
<img src="https://img.shields.io/badge/Embedded%20Systems-blue?style=for-the-badge">
<img src="https://img.shields.io/badge/ros-%230A0FF9.svg?style=for-the-badge&logo=ros&logoColor=white">
  
</div>
</p>

```asm
section	.text
	global _start       
_start:                 ;entry point
	mov edx, len    ;message length
	mov ecx, msg    ;message to write
	mov ebx, 1	;file descriptor (stdout)
	mov eax, 4	;system call number (sys_write)
	int 0x80        ;call kernel
	mov eax, 1	;system call number (sys_exit)
	int 0x80        ;call kernel

section	.data
msg db 'Fav: EVO IX',0xa ;our dear string
len equ	$ - msg	         ;length of our dear string
```

