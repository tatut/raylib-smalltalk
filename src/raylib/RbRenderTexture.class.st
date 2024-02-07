Class {
	#name : #RbRenderTexture,
	#superclass : #FFIStructure,
	#classVars : [
		'OFFSET_DEPTH',
		'OFFSET_ID',
		'OFFSET_TEXTURE'
	],
	#category : #raylib
}

{ #category : #'field definition' }
RbRenderTexture class >> fieldsDesc [ 
^#(
uint id;
RbTexture texture;
RbTexture depth;
)

]

{ #category : #'accessing - structure variables' }
RbRenderTexture >> depth [
	"This method was automatically generated"
	^ RbTexture fromHandle: (handle referenceStructAt: OFFSET_DEPTH length: RbTexture byteSize)
]

{ #category : #'accessing - structure variables' }
RbRenderTexture >> depth: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_DEPTH put: anObject getHandle length: RbTexture byteSize
]

{ #category : #'accessing - structure variables' }
RbRenderTexture >> id [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_ID
]

{ #category : #'accessing - structure variables' }
RbRenderTexture >> id: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_ID put: anObject
]

{ #category : #'accessing - structure variables' }
RbRenderTexture >> texture [
	"This method was automatically generated"
	^ RbTexture fromHandle: (handle referenceStructAt: OFFSET_TEXTURE length: RbTexture byteSize)
]

{ #category : #'accessing - structure variables' }
RbRenderTexture >> texture: anObject [
	"This method was automatically generated"
	handle structAt: OFFSET_TEXTURE put: anObject getHandle length: RbTexture byteSize
]
