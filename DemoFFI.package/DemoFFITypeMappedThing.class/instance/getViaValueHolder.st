accessing
getViaValueHolder
	| vh |
	
	vh  := DemoFFIIntegerValue new.
	((DemoFFILibrary uniqueInstance apiMappedGetValue: handle into: vh) = 1)
		ifFalse: [ DemoFFIError signal: 'bummer' ]
		ifTrue: [  ^ vh value  ]