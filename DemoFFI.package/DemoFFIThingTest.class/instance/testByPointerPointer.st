tests
testByPointerPointer

	thing allocByPointerPointer.
	thing setValue: 123.
	self assert: thing getViaValueHolder = 123.
	self assert: thing getViaReturnedValue = 123