# Compiler
CC = gcc

# Compiler flags
CFLAGS = -Wall

# Target executable name
TARGET = main

# Object files
OBJS = main.o cache_model.o

# Default target
all: $(TARGET)

# Link object files to create the target
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

# Compile main.c
main.o: main.c cache_model.h
	$(CC) $(CFLAGS) -c main.c

# Compile cache_model.c
cache_model.o: cache_model.c cache_model.h
	$(CC) $(CFLAGS) -c cache_model.c

# Clean up object files and target
clean:
	rm -f $(OBJS) $(TARGET)
