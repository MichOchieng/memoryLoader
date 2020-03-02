.syntax unified

.section .vectors 	
.skip 4	
.word start

.section .text
.thumb_func
start:	
	/* msg needs to be referenced or
	   else it's not included in the elf*/
	
	
	ldr r1, =msg-0x20
	b .

.section .data
msg: .ascii "help im being oppressed! come see the violence inherent in the system!"