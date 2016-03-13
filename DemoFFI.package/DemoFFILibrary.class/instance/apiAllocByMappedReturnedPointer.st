api
apiAllocByMappedReturnedPointer
	"demo_thing* alloc_by_returned_pointer(void)"
	^ self ffiCall: #(demo_thing alloc_by_returned_pointer ())
