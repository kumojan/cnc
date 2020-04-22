CFLAGS=-std=c11 -g -static

cnc: cnc.c

test: cnc
	./test.sh

clean:
	rm -f cnc *.o *~ tmp*

.PHONY test clean