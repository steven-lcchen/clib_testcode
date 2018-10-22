.PHONY: all clear clean help
all: p1_nolib p2_nolib p1_static p2_static p1_shared p2_shared

p1_nolib: src/program1.c src/MyLib.c
	gcc src/program1.c src/MyLib.c -I inc -o p1_nolib

p2_nolib: src/program2.c src/MyLib.c
	gcc src/program2.c src/MyLib.c -I inc -o p2_nolib

p1_static: src/program1.c lib_static/libMyLib.a
	gcc src/program1.c -I inc -L./lib_static -lMyLib -o p1_static
p2_static: src/program2.c lib_static/libMyLib.a
	gcc src/program2.c -I inc -L./lib_static -lMyLib -o p2_static
lib_static/libMyLib.a: obj/MyLib_static.o
	ar -rcs lib_static/libMyLib.a obj/MyLib_static.o
obj/MyLib_static.o: src/MyLib.c
	gcc -c src/MyLib.c -o obj/MyLib_static.o 

p1_shared: src/program1.c lib_shared/libMyLib.so.1
	gcc src/program1.c -I inc -L./lib_shared -lMyLib -o p1_shared
p2_shared: src/program2.c lib_shared/libMyLib.so.1
	gcc src/program2.c -I inc -L./lib_shared -lMyLib -o p2_shared
lib_shared/libMyLib.so.1: lib_shared/libMyLib.so.1.0.0
	ln -s libMyLib.so.1.0.0 lib_shared/libMyLib.so
	ln -s libMyLib.so.1.0.0 lib_shared/libMyLib.so.1
lib_shared/libMyLib.so.1.0.0: obj/MyLib_shared.o
	gcc -shared -Wl,-soname,libMyLib.so.1 -o lib_shared/libMyLib.so.1.0.0 obj/MyLib_shared.o
obj/MyLib_shared.o: src/MyLib.c
	gcc -c -fPIC src/MyLib.c -o obj/MyLib_shared.o

env:
	mkdir obj lib_shared lib_static

clear clean:
	rm -rf obj lib_shared lib_static
	rm -f p1_nolib p2_nolib p1_static p2_static p1_shared p2_shared

help:
	@echo "make help"
	@echo "make "
	@echo "make env"
	@echo "make clean"
