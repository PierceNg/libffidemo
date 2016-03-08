initializing/finalizing
allocByReturnedPointer

	((handle := DemoFFILibrary uniqueInstance apiAllocByReturnedPointer) isNull)
		ifTrue: [ DemoFFIError signal: 'bummer' ]