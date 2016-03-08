api
apiSetValue: handle with: value
	"int set(demo_thing*, int)"
	^ self ffiCall: #(int set (DemoFFIExternalObject handle, int value))
