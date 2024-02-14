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

{ #category : #'instance creation' }
RbVector2 class >> x: x y: y [
 "Convenience for constructing a new instance."
 ^ self new x: x; y: y
]

{ #category : #adding }
RbVector2 >> add: anRbVector2 [
 "Add the given vector to this one"
 self 
	x: (self x + anRbVector2 x);
	y: (self y + anRbVector2 y)
]

{ #category : #printing }
RbVector2 >> printString [
 ^ String streamContents: [ :out |
	out << 'an RbVector2(x='; << self x printString; << ', y='; << self y printString; << ')'
 ]
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
