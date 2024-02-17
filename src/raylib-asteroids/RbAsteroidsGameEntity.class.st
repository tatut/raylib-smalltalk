Class {
	#name : #RbAsteroidsGameEntity,
	#superclass : #Object,
	#instVars : [
		'position',
		'velocity',
		'rotation'
	],
	#category : #'raylib-asteroids'
}

{ #category : #initialization }
RbAsteroidsGameEntity >> initialize [  
	super initialize.
	position := RbVector2 new.
	velocity := RbVector2 new.
	rotation := 0.0.
]

{ #category : #accessing }
RbAsteroidsGameEntity >> position [ 
 ^ position
]

{ #category : #accessing }
RbAsteroidsGameEntity >> position: anRbVector2 [
 position := anRbVector2 
]

{ #category : #'as yet unclassified' }
RbAsteroidsGameEntity >> rb [ 
 ^ FFIRaylib uniqueInstance 
]

{ #category : #rendering }
RbAsteroidsGameEntity >> render: rb [ 
 "Render using raylib"
 self subclassResponsibility 
 
]

{ #category : #updating }
RbAsteroidsGameEntity >> update [
 self updatePosition: [:p | 
	p add: velocity.
	"wrap around if we are going outside the area"
	p x < 0 ifTrue: [ p x: 640 ].
	p x > 640 ifTrue: [ p x: 0 ].
	p y < 0 ifTrue: [ p y: 480 ].
	p y > 480 ifTrue: [ p y: 0 ].
 ].
 
]

{ #category : #'as yet unclassified' }
RbAsteroidsGameEntity >> updatePosition: aBlock [
  aBlock value: position.
]

{ #category : #'instance creation' }
RbAsteroidsGameEntity >> vx: x vy: y [
 "set velocity"
 velocity x: x; y: y.
]

{ #category : #'instance creation' }
RbAsteroidsGameEntity >> x: x y: y [
 "set position"
 position x: x; y: y.
]
