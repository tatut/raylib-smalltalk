Class {
	#name : #RbCamera3D,
	#superclass : #FFIStructure,
	#classVars : [
		'OFFSET_FOVY',
		'OFFSET_POSITION',
		'OFFSET_PROJECTION',
		'OFFSET_TARGET',
		'OFFSET_UP'
	],
	#category : #raylib
}

{ #category : #'field definition' }
RbCamera3D class >> fieldsDesc [ 
^#(
 RbVector3 position;
 RbVector3 target;
 RbVector3 up;
 float fovy;
 int projection;
)
]

{ #category : #'accessing - structure variables' }
RbCamera3D >> fovy [
	"This method was automatically generated"
	^handle floatAt: OFFSET_FOVY
]

{ #category : #'accessing - structure variables' }
RbCamera3D >> fovy: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_FOVY put: anObject
]

{ #category : #'accessing - structure variables' }
RbCamera3D >> position [
	"This method was automatically generated"
	^ RbVector3 fromHandle: (handle referenceStructAt: OFFSET_POSITION length: RbVector3 byteSize)
]

{ #category : #'accessing - structure variables' }
RbCamera3D >> position: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_POSITION put: anObject getHandle length: RbVector3 byteSize
]

{ #category : #'accessing - structure variables' }
RbCamera3D >> projection [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_PROJECTION
]

{ #category : #'accessing - structure variables' }
RbCamera3D >> projection: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_PROJECTION put: anObject
]

{ #category : #'accessing - structure variables' }
RbCamera3D >> target [
	"This method was automatically generated"
	^ RbVector3 fromHandle: (handle referenceStructAt: OFFSET_TARGET length: RbVector3 byteSize)
]

{ #category : #'accessing - structure variables' }
RbCamera3D >> target: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TARGET put: anObject getHandle length: RbVector3 byteSize
]

{ #category : #'accessing - structure variables' }
RbCamera3D >> up [
	"This method was automatically generated"
	^ RbVector3 fromHandle: (handle referenceStructAt: OFFSET_UP length: RbVector3 byteSize)
]

{ #category : #'accessing - structure variables' }
RbCamera3D >> up: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_UP put: anObject getHandle length: RbVector3 byteSize
]
