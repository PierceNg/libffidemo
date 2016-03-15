accessing platform
macModuleName
	"Explicit path needed if the image is launched from GUI.
	From CLI the unix way (just returning #ffidemo works fine."
	^ (FileLocator imageDirectory / 'libffidemo.dylib') fullName