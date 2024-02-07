Class {
	#name : #RbVector2,
	#superclass : #FFIStructure,
	#classVars : [
		'OFFSET_X',
		'OFFSET_Y'
	],
	#category : #raylib
}

{ #category : #'field definition' }
RbVector2 class >> fieldsDesc [ 
 ^ #( 
	float x; 
	float y;
	)

]

{ #category : #'accessing - structure variables' }
RbVector2 >> x [
	"This method was automatically generated"
	^handle floatAt: OFFSET_X
]

{ #category : #'accessing - structure variables' }
RbVector2 >> x: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_X put: anObject
]

{ #category : #'accessing - structure variables' }
RbVector2 >> y [
	"This method was automatically generated"
	^handle floatAt: OFFSET_Y
]

{ #category : #'accessing - structure variables' }
RbVector2 >> y: anObject [
	"This method was automatically generated"
	handle floatAt: OFFSET_Y put: anObject
]
