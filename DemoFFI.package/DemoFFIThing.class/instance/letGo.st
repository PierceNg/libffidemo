initializing/finalizing
letGo

	handle isNull ifFalse: [ 
		DemoFFILibrary uniqueInstance apiFree:  handle ]