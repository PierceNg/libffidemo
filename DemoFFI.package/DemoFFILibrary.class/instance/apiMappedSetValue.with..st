api - type mapped
apiMappedSetValue: handle with: value
	"int set(demo_thing*, int)"
	^ self ffiCall: #(int set (demo_thing *handle, int value))
