initializing/finalizing
allocByPointerPointer

	((DemoFFILibrary uniqueInstance apiAllocByMappedPointerPointer: handle) = 1)
		ifFalse: [ DemoFFIError signal: 'bummer' ].
