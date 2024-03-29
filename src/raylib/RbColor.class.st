Class {
	#name : #RbColor,
	#superclass : #FFIStructure,
	#classVars : [
		'OFFSET_A',
		'OFFSET_B',
		'OFFSET_G',
		'OFFSET_R'
	],
	#category : #raylib
}

{ #category : #'field definition' }
RbColor class >> fieldsDesc [ 
^#(
uint8 r;
uint8 g;
uint8 b;
uint8 a;
)
]

{ #category : #'instance creation' }
RbColor class >> r: r g: g b: b [
 ^ self new r: r; g: g; b: b
]

{ #category : #constants }
RbColor class >> white [
 ^ self r: 255 g: 255 b: 255
]

{ #category : #'accessing - structure variables' }
RbColor >> a [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_A
]

{ #category : #'accessing - structure variables' }
RbColor >> a: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_A put: anObject
]

{ #category : #'accessing - structure variables' }
RbColor >> b [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_B
]

{ #category : #'accessing - structure variables' }
RbColor >> b: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_B put: anObject
]

{ #category : #'accessing - structure variables' }
RbColor >> g [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_G
]

{ #category : #'accessing - structure variables' }
RbColor >> g: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_G put: anObject
]

{ #category : #initialization }
RbColor >> initialize [
	super initialize.
	self a: 255. "alpha by default should be fully visible"
]

{ #category : #'accessing - structure variables' }
RbColor >> r [
	"This method was automatically generated"
	^handle unsignedByteAt: OFFSET_R
]

{ #category : #'accessing - structure variables' }
RbColor >> r: anObject [
	"This method was automatically generated"
	handle unsignedByteAt: OFFSET_R put: anObject
]
