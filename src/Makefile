CFLAGS+=-W -Wall -Wno-unused -ansi -pedantic -DNDEBUG -O2 -fPIC
OBJS=effect.o error.o gus.o init.o load.o mix.o read.o seek.o

libpac.so:	${OBJS}
		${CC} -shared -o libpac.so ${OBJS}

libpac.a:	${OBJS}
		${AR} csr libpac.a ${OBJS}

${OBJS}:	pac.h pacP.h

xmms:		${OBJS} xmms/plugin.c
		cd xmms && ls

pacplay:	${OBJS} pacplay/pacplay.c
		cd pacplay && ls

clean:
		rm -f *~ *.o libpac.a libpac.so
