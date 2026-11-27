GCC = gcc
GCFLAGS = -Wall

all: process_creation output_program simple_program

process_creation: process_creation.c
	$(GCC) $(GCFLAGS) process_creation.c -o process_creation

output_program: file1.c file2.c
	$(GCC) $(GCFLAGS) file1.c file2.c -o output_program

simple_program: simple_program.c
	$(GCC) $(GCFLAGS) simple_program.c -o simple_program

run: all
	./process_creation
	./output_program
	./simple_program

clean:
	rm -f process_creation output_program simple_program

.PHONY: all run clean





# Omar Reda Elshaer - 24100592
