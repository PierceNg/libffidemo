api
apiMappedGetValue: handle into: valueHolder
	"int get_by_filling_pointer(demo_thing*, int*)"
	^ self ffiCall: #(int get_by_filling_pointer (demo_thing *handle, DemoFFIIntegerValue valueHolder))
