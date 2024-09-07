
<div align="center">
<img src="https://img.shields.io/badge/c++-%2300599C.svg?style=for-the-badge&logo=c%2B%2B&logoColor=white">
<img src="https://img.shields.io/badge/c-%2300599C.svg?style=for-the-badge&logo=c&logoColor=white">
<img src="https://img.shields.io/badge/Arduino-00979D?style=for-the-badge&logo=Arduino&logoColor=white">
<img src="https://img.shields.io/badge/Raspberry%20Pi-A22846?style=for-the-badge&logo=Raspberry%20Pi&logoColor=white">
<img src="https://img.shields.io/badge/Embedded%20Systems-blue?style=for-the-badge">
<img src="https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54">
<img src="https://img.shields.io/badge/assembly%20script-%23000000.svg?style=for-the-badge&logo=assemblyscript&logoColor=white">
<img src="https://img.shields.io/badge/ros-%230A0FF9.svg?style=for-the-badge&logo=ros&logoColor=white">
<img src="https://img.shields.io/badge/Node--RED-%238F0000.svg?style=for-the-badge&logo=node-red&logoColor=white">
<img src="https://img.shields.io/badge/sqlite-%2307405e.svg?style=for-the-badge&logo=sqlite&logoColor=white">
<img src="https://img.shields.io/badge/Matplotlib-%23ffffff.svg?style=for-the-badge&logo=Matplotlib&logoColor=black">
<img src="https://img.shields.io/badge/pandas-%23150458.svg?style=for-the-badge&logo=pandas&logoColor=white">
<img src="https://img.shields.io/badge/numpy-%23013243.svg?style=for-the-badge&logo=numpy&logoColor=white">
<img src="https://img.shields.io/badge/JWT-black?style=for-the-badge&logo=JSON%20web%20tokens">
  
</div>
</p>

```asm
section .data
    username db "ah2devio", 0   ; Define username string
    location db "Earth", 0      ; Define location string
    fav db "EVO IX", 0             ; Define favorite string
    newline db 0xA              ; Newline character

section .text
    global _start

_start:
    ; Print the username
    mov eax, 4                  ; sys_write
    mov ebx, 1                  ; file descriptor (stdout)
    mov ecx, username           ; address of username
    mov edx, 8                  ; length of the username
    int 0x80                    ; call kernel

    ; Print a newline
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    ; Print the location
    mov eax, 4                  ; sys_write
    mov ebx, 1                  ; file descriptor (stdout)
    mov ecx, location           ; address of location
    mov edx, 5                  ; length of the location string
    int 0x80                    ; call kernel

    ; Print a newline
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    ; Print the favorite
    mov eax, 4                  ; sys_write
    mov ebx, 1                  ; file descriptor (stdout)
    mov ecx, fav                ; address of favorite
    mov edx, 3                  ; length of the favorite string
    int 0x80                    ; call kernel

    ; Print a newline
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    ; Exit the program
    mov eax, 1                  ; sys_exit
    xor ebx, ebx                ; status 0
    int 0x80


```

