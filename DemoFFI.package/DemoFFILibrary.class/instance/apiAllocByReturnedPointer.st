api
apiAllocByReturnedPointer
	"demo_thing* alloc_by_returned_pointer(void)"
	^ self ffiCall: #(DemoFFIExternalObject alloc_by_returned_pointer ())
