accessing
setValue: value

	((DemoFFILibrary uniqueInstance apiMappedSetValue: handle with: value) = 1)
		ifFalse: [ DemoFFIError signal: 'bummer' ]