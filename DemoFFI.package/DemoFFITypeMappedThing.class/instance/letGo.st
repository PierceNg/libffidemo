initializing/finalizing
letGo

	handle isNull ifFalse: [ 
		DemoFFILibrary uniqueInstance apiMappedFree:  handle ]