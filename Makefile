PROGRAM=rgb2ascii
PROGRAM2=rgb2lumhist1
PROGRAM3=rgb2lumhist2
CC=gcc
CFLAGS=-m32
ASM=nasm
ASMFLAGS=-f elf

default: $(PROGRAM) $(PROGRAM2) $(PROGRAM3)

$(PROGRAM3): $(PROGRAM3).o driver.o asm_io.o
	$(CC) $(CFLAGS) $(PROGRAM3).o driver.o asm_io.o -o $(PROGRAM3)

$(PROGRAM2): $(PROGRAM2).o driver.o asm_io.o
	$(CC) $(CFLAGS) $(PROGRAM2).o driver.o asm_io.o -o $(PROGRAM2)

$(PROGRAM): $(PROGRAM).o driver.o asm_io.o
	$(CC) $(CFLAGS) $(PROGRAM).o driver.o asm_io.o -o $(PROGRAM)

$(PROGRAM3).o: $(PROGRAM3).asm
	$(ASM) $(ASMFLAGS) $(PROGRAM3).asm -o $(PROGRAM3).o

$(PROGRAM2).o: $(PROGRAM2).asm
	$(ASM) $(ASMFLAGS) $(PROGRAM2).asm -o $(PROGRAM2).o

$(PROGRAM).o: $(PROGRAM).asm
	$(ASM) $(ASMFLAGS) $(PROGRAM).asm -o $(PROGRAM).o

asm_io.o: asm_io.asm
	$(ASM) $(ASMFLAGS) -d ELF_TYPE asm_io.asm -o asm_io.o

driver.o: driver.c
	$(CC) $(CFLAGS) -c driver.c -o driver.o

clean:
	/bin/rm -f *.o $(PROGRAM) $(PROGRAM2) $(PROGRAM3)

