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
RbAsteroidsGameEntity >> position: anRbVector2 [
 position := anRbVector2 
]

{ #category : #rendering }
RbAsteroidsGameEntity >> render: rb [ 
 "Render using raylib"
 self subclassResponsibility 
 
]

{ #category : #updating }
RbAsteroidsGameEntity >> update [
 position add: velocity.
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
