api
apiAllocByMappedPointerPointer: handle
	"int alloc_by_pointer_pointer(demo_thing**)"
	^ self ffiCall: #(int alloc_by_pointer_pointer (demo_thing **handle))
