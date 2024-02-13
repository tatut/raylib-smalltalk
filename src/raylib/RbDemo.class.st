Class {
	#name : #RbDemo,
	#superclass : #Object,
	#category : #raylib
}

{ #category : #'as yet unclassified' }
RbDemo class >> demo [
 | r | 
 r := FFIRaylib uniqueInstance.

 r initWindowWidth: 640 height: 480 titled: 'My fine game'. 
 
r scene: RbDiscoScene new.

r runProd.
r closeWindow.
SmalltalkImage current quitPrimitive.
]
