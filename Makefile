# Makefile TO BE FIXED

CC = gcc
CFLAGS = -O -Wall -g
LIBS = -lm

all: buffered_io char_example feof_example fopen_example fprintf_example fread_fwrite_example fseek_example sscanf_example string_example 

buffered_io: buffered_io.c
	$(CC) $(CFLAGS) -o buffered_io buffered_io.c
char_example: char_example.c
	$(CC) $(CFLAGS) -o char_example char_example.c
feof_example: feof_example.c
	$(CC) $(CFLAGS) -o feof_example feof_example.c 
fopen_example: fopen_example.c
	$(CC) $(CFLAGS) -o fopen_example fopen_example.c
fprintf_example: fprintf_example.c
	$(CC) $(CFLAGS) -o fprintf_example fprintf_example.c
fread_fwrite_example: fread_fwrite_example.c
	$(CC) $(CFLAGS) -o fread_fwrite_example fread_fwrite_example.c
fseek_example: fseek_example.c
	$(CC) $(CFLAGS) -o fseek_example fseek_example.c
sscanf_example: sscanf_example.c
	$(CC) $(CFLAGS) -o sscanf_example sscanf_example.c
string_example: string_example.c
	$(CC) $(CFLAGS) -o string_example string_example.c
clean:
	rm -rf buffered_io char_example feof_example fopen_example fprintf_example fread_fwrite_example fseek_example sscanf_example string_example
        
