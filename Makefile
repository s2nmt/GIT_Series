# Compiler to be used
CC = gcc

# Compiler flags
CFLAGS = -Wall

# Target executable name
TARGET = main

# Rule to compile the program
all: $(TARGET)

$(TARGET): main.o
	$(CC) $(CFLAGS) -o $(TARGET) main.o

main.o: main.c
	$(CC) $(CFLAGS) -c main.c

# Clean up generated files
clean:
	rm -f *.o $(TARGET)
