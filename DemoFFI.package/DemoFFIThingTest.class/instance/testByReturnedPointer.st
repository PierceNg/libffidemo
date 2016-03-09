tests
testByReturnedPointer

	thing allocByReturnedPointer.
	thing setValue: 456.
	self assert: thing getViaValueHolder = 456.
	self assert: thing getViaReturnedValue = 456