
all: macosx

macosx:
	clang -undefined dynamic_lookup --shared -Wall  -g -O2 \
		-I/Users/twinkling/code/lua-5.4.6/src \
		-o profile.so \
		imap.c profile.c icallpath.c

linux:
	gcc -shared -fPIC -Wall -g -O2 -DUSE_RDTSC \
		-o profile.so \
		imap.c profile.c

clean:
	rm -rf profile.so

.PHONY : all clean macosx linux