Class {
	#name : #RbVector2,
	#superclass : #FFIStructure,
	#classVars : [
		'OFFSET_X',
		'OFFSET_Y'
	],
	#category : #raylib
}

{ #category : #copying }
RbVector2 class >> copy: anRbVector2 [
 ^ self new x: anRbVector2 x; y: anRbVector2 y
]

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

{ #category : #arithmetic }
RbVector2 >> + anRbVector [ 
 "Return a new RbVector2 that is the sum of self and given vector"
 ^ self class x: (self x + anRbVector x) y: (self y + anRbVector y)
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
