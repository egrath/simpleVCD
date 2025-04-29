EXE		= vcd.exe
CC		= gcc
CFLAGS	= -std=c99 -Wall -Wextra -Wpedantic

SOURCES	= $(wildcard *.c)
OBJS	= $(SOURCES:.c=.o)

all:	$(EXE) $(OBJS)

%.o:	%.c
		$(CC) -c $(CFLAGS) $< -o $@

$(EXE):	$(OBJS)
		$(CC) $(CFLAGS) -o $@ $^

clean:	
		rm $(OBJS) $(EXE)
