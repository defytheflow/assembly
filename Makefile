# Makefile for compiling a simple nasm program.

%.o: %.asm lib.asm
	nasm -g -f elf64 $<

%: %.o
	ld $< -o $@

clean:
	$(RM) *.o
