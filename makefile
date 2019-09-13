#this target will compile all the files
#all: myexe

all: main.o myfunc.o
	g++ main.cpp myfunc.cpp myfunc.h -o myexe

main.o: main.cpp myfunc.h
	g++ -c main.cpp

myfunc.o: myfunc.cpp myfunc.h
	g++ -c myfunc.cpp

clean:
	rm -rf *.o myexe
	
