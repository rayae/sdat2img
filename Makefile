CC := gcc
CFLAGS := -O2 -static -fPIE -fPIC
LDFLAGS := $(CFLAGS)

all:sdat2img


sdat2img: sdat2img.c
	$(CC) $(CFLAGS) -c $< -o ${<:.c=.o}
	$(CC) $(LDFLAGS) ${<:.c=.o} -o $@

