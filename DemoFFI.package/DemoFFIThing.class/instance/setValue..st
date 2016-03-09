accessing
setValue: value

	((DemoFFILibrary uniqueInstance apiSetValue: handle with: value) = 1)
		ifFalse: [ DemoFFIError signal: 'bummer' ]