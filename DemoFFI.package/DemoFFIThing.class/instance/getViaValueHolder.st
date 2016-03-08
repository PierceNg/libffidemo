accessing
getViaValueHolder
	| vh |
	
	vh  := DemoFFIIntegerValue new.
	((DemoFFILibrary uniqueInstance apiGetValue: handle into: vh) = 1)
		ifFalse: [ DemoFFIError signal: 'bummer' ]
		ifTrue: [  ^ vh value  ]