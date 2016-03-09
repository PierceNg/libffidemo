api
apiFree: handle
	"int free_thing(demo_thing*)"
	^ self ffiCall: #(int free_thing (DemoFFIExternalObject handle))
