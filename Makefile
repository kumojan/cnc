CFLAGS=-std=c11 -g -static
SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)

cnc: $(OBJS)
	$(CC) -o cnc $(OBJS) $(LDFLAGS)

$(OBJS): cnc.h

test: cnc
	./test.sh

clean:
	rm -f cnc *.o *~ tmp*

.PHONY: test clean