initializing/finalizing
allocByPointerPointer

	((DemoFFILibrary uniqueInstance apiAllocByPointerPointer: handle) = 1)
		ifFalse: [ DemoFFIError signal: 'bummer' ]