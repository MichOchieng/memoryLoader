
OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
OUTPUT_ARCH(arm)
SEARCH_DIR(.)

MEMORY
{
  rom (rx)  : ORIGIN = 0x00400000, LENGTH = 0x00200000
  ram (rwx) : ORIGIN = 0x20000000, LENGTH = 0x00028000
}

SECTIONS
{
    .text :
    {
        . = ALIGN(4);
        KEEP(*(.vectors))
	    *(.text )

    } > ram

	. = ALIGN(4);
	_etext = .;	

    .data : AT(_etext)
    {
        . = ALIGN(4);
		_sdata = .;
        *(.data);
		. = ALIGN(4);
		_edata = .;
    } > ram
 
	_data_size = _edata - _sdata;
}

