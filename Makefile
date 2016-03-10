lib = libffidemo
CFLAGS = -m32 -Wall

# detect platform
ifeq ($(OS),Windows_NT)
	target = $(lib).dll
else
	uname_s := $(shell uname -s)
	ifeq ($(uname_s),Linux)
		target = $(lib).so
	else ifeq ($(uname_s),Darwin)
		target = $(lib).dylib
	else
		target = help
	endif
endif

.PHONY: all clean help
.DEFAULT_GOAL := all

all: $(target)

clean:
	rm $(target)

help:
	@echo 'Run `make libffidemo.{dylib,so,dll}` depending on your platform.'
	@echo 'Simply running `make` should build the correct one.'

# clang on OS X 10.11 recognizes -shared
# so the recipe is the same for OS X and Linux
#
# /!\ Windows is untested...
%.so %.dylib %.dll : %.c
	$(CC) $(CFLAGS) -shared -o $@ $^
