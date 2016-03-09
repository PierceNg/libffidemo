api
apiAllocByPointerPointer: handle
	"int alloc_by_pointer_pointer(demo_thing**)"
	^ self ffiCall: #(int alloc_by_pointer_pointer (DemoFFIExternalObject *handle))
