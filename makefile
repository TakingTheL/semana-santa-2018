all: control.o client.o helpers.o
	gcc -o control control.o helpers.o
	gcc -o client client.o helpers.o

helpers.o: helpers.c helpers.h
	gcc -c helpers.c

control.o: control.c control.h
	gcc -c control.c

client.o: client.c control.h
	gcc -c client.c

clean: 
	rm -rf *.o *~ control client debug

debugClient:
	gcc -o debug -g client.c

debugControl:
	gcc -o debug -g control.c

valgrind: debug
	valgrind ./debug

gdb: debug
	gdb ./debug
