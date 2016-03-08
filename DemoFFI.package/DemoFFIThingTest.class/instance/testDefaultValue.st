tests
testDefaultValue

	thing allocByReturnedPointer.
	self assert: thing getViaValueHolder = -999.
	self assert: thing getViaReturnedValue = -999