tests
testNullByFilledValueHolder

	self should: [ thing getViaValueHolder ]
		raise: DemoFFIError