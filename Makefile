lib = libffidemo
exts = dylib so

CFLAGS = -m32

.PHONY: help clean
.DEFAULT_GOAL := help

help:
	@echo 'Run either of the following, depending on your platform:'
	@for ext in $(exts); do echo "  make $(lib).$${ext}"; done

clean:
	rm -f $(foreach ext,$(exts),$(lib).$(ext))

# clang on OS X 10.11 recognizes -shared
# so the recipe is the same for OS X and Linux
%.so %.dylib : %.c
	$(CC) $(CFLAGS) -shared -o $@ $^
