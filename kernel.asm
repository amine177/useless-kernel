bits 32 ;generate 32bits bin
section .text
        ;multiboot spec
        align 4
        dd 0x1BADB002            ;magic
        dd 0x00                  ;flags
        dd - (0x1BADB002 + 0x00) ;checksum. m+f+c should be

global start
extern kmain ; from the c file


start:
  cli ; block interrupts
  mov esp, stack_frame
  call kmain 
  htl ; halt the cpu

section .bss
  resb 8192
stack_frame:
