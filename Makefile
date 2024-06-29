CC = gcc
RAYLIB = -lraylib -lGL -lm -lpthread -ldl -lrt -lX11
all: qawale.exe

run: qawale.exe
	./qawale.exe

qawale.exe: src/main.c
	$(CC) src/main.c $(RAYLIB) -o $@