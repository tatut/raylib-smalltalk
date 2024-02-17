Class {
	#name : #RbAsteroids,
	#superclass : #Object,
	#instVars : [
		'game'
	],
	#category : #'raylib-asteroids'
}

{ #category : #accessing }
RbAsteroids class >> start [
	^ self new start
]

{ #category : #accessing }
RbAsteroids >> start [
 | r |
 game := RbAsteroidsGameScene new.
 r := FFIRaylib uniqueInstance.
 r initWindowWidth: 640 height: 480 titled: 'Raylib Smalltalk Asteroids';
   targetFPS: 60;
   scene: game;
   runProd. 
 ^ self
]
