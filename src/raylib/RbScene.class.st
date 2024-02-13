"
I am an abstract scene that bundles updates and drawing. 
The window run process will call me to update and render every frame until
the window should close.
"
Class {
	#name : #RbScene,
	#superclass : #Object,
	#category : #raylib
}

{ #category : #'as yet unclassified' }
RbScene >> doDraw: aFFIRaylib [
  aFFIRaylib beginDrawing.
  [ self draw: aFFIRaylib ] ensure: [ aFFIRaylib endDrawing ].
]

{ #category : #updating }
RbScene >> draw: aFFIRaylib [
 self subclassResponsibility 
]

{ #category : #updating }
RbScene >> update: aFFIRaylib [
 self subclassResponsibility 
]
