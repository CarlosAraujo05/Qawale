CC = gcc
OBJS= obj/pieces.o obj/board.o

RAYLIB = -lraylib -lGL -lm -lpthread -ldl -lrt -lX11

all: qawale.exe

run: qawale.exe
	./qawale.exe

.PHONY:clean
clean:
	rm -f obj/*.o *.exe

.PHONY:example
example: example/example.c
	$(CC) example/example.c $(RAYLIB) -o example.exe
	./example.exe

qawale.exe: src/main.c $(OBJS)
	$(CC) src/main.c $(RAYLIB) $(OBJS) -o $@

obj/%.o: src/lib/%.c
	gcc  -c $< -o $@ 