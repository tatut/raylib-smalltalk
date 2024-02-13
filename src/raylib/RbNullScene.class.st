"
I am a scene where nothing happens.
I just clear the background to white.
"
Class {
	#name : #RbNullScene,
	#superclass : #RbScene,
	#category : #raylib
}

{ #category : #updating }
RbNullScene >> draw: rb [ 
 rb clearBackground: (RbColor new r: 255; g: 255; b: 255)
]

{ #category : #updating }
RbNullScene >> update: aFFIRaylib [ 
 "I do nothing"
]
