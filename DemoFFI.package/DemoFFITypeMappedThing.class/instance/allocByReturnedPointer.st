initializing/finalizing
allocByReturnedPointer

	((handle := DemoFFILibrary uniqueInstance apiAllocByMappedReturnedPointer) isNull)
		ifTrue: [ DemoFFIError signal: 'bummer' ].
