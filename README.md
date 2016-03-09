# libffidemo

A C library to demonstrate Pharo Smalltalk's Unified FFI.

The `libffidemo.c` file has to be compiled into a 32-bit dynamic library (until 64-bit support lands in the VM).
The makefile has the correct invocations for that (run `make libffidemo.dylib` on OS X, or `make libffidemo.so` on Linux).

The Pharo code implementing the FFI bindings can be loaded from this repo using GitFileTree (it was originally committed to [SmalltalkHub](http://smalltalkhub.com/#!/~PierceNg/DemoFFI)).
