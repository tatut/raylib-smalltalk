Class {
	#name : #RbCamera2D,
	#superclass : #FFIStructure,
	#classVars : [
		'OFFSET_OFFSET',
		'OFFSET_ROTATION',
		'OFFSET_TARGET',
		'OFFSET_ZOOM'
	],
	#category : #raylib
}

{ #category : #'field definition' }
RbCamera2D class >> fieldsDesc [ 
^#(
 RbVector2 offset; 
 RbVector2 target;
 float rotation;
 float zoom; 
)
]

{ #category : #'accessing - structure variables' }
RbCamera2D >> offset [
	"This method was automatically generated"
	^ RbVector2 fromHandle: (handle referenceStructAt: OFFSET_OFFSET length: RbVector2 byteSize)
]

{ #category : #'accessing - structure variables' }
RbCamera2D >> offset: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_OFFSET put: anObject getHandle length: RbVector2 byteSize
]

{ #category : #'accessing - structure variables' }
RbCamera2D >> rotation [
	"This method was automatically generated"
	^handle floatAt: OFFSET_ROTATION
]

{ #category : #'accessing - structure variables' }
RbCamera2D >> rotation: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_ROTATION put: anObject
]

{ #category : #'accessing - structure variables' }
RbCamera2D >> target [
	"This method was automatically generated"
	^ RbVector2 fromHandle: (handle referenceStructAt: OFFSET_TARGET length: RbVector2 byteSize)
]

{ #category : #'accessing - structure variables' }
RbCamera2D >> target: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TARGET put: anObject getHandle length: RbVector2 byteSize
]

{ #category : #'accessing - structure variables' }
RbCamera2D >> zoom [
	"This method was automatically generated"
	^handle floatAt: OFFSET_ZOOM
]

{ #category : #'accessing - structure variables' }
RbCamera2D >> zoom: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_ZOOM put: anObject
]
