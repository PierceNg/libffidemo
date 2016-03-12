finalization
finalizeResourceData: resourceData

	DemoFFILibrary uniqueInstance
		ffiCall: #(int free_thing (ExternalAddress resourceData))
		"Note different function signature."