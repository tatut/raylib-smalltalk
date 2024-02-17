Class {
	#name : #RbAsteroidsShip,
	#superclass : #RbAsteroidsGameEntity,
	#instVars : [
		'weaponEnergy',
		'weaponOn'
	],
	#category : #'raylib-asteroids'
}

{ #category : #'as yet unclassified' }
RbAsteroidsShip >> accelerate [ 
 self accelerate: 1.0
]

{ #category : #'as yet unclassified' }
RbAsteroidsShip >> accelerate: by [ 
 velocity add: (RbVector2 new x: by * 0.1 * rotation degreeSin; y: by * 0.1 * rotation degreeCos). 
]

{ #category : #'as yet unclassified' }
RbAsteroidsShip >> coordinateAround: length angle: degrees [
 ^ RbVector2 new x: (position x + (length * degrees degreeSin)); y: (position y + (length * degrees degreeCos)).
]

{ #category : #initialization }
RbAsteroidsShip >> initialize [ 
 super initialize.
 weaponEnergy := 100.
 weaponOn := false.
]

{ #category : #rendering }
RbAsteroidsShip >> render: rb [
 "calculate vertices from position and rotation degrees "
 | v1 v2 v3 |
 v1 := self coordinateAround: 25 angle: rotation.
 v2 := self coordinateAround: 25 angle: (rotation + 140).
 v3 := self coordinateAround: 25 angle: (rotation + 220).
 "Transcript show: 'v1: ', v1 printString, ' v2: ', v2 printString, ' v3: ', v3 printString; cr."
 rb drawTriangleV1: v1 v2: v2 v3: v3 
  color: (RbColor new r: 255; g: 200; b: 200; a: 255).
 "(weaponOn and: [ weaponEnergy > 0 ]) ifTrue: [ 
	rb drawLineFrom: (self coordinateAround: 27 angle: rotation)
	  to: (self coordinateAround: 250 angle: rotation)
	  color: (RbColor new r: 255; g: 200) 
 ]."
 rb drawText: weaponEnergy asString x: 200 y: 10 fontSize: 20 color: RbColor white


]

{ #category : #'as yet unclassified' }
RbAsteroidsShip >> rotate: dir [
  rotation := rotation + (dir * 5.0)
]

{ #category : #'game controls' }
RbAsteroidsShip >> shoot [
  "try to shoot, if there is enough energy to shoot, return new bullet"
  weaponEnergy < 10 ifTrue: [ ^ nil ].
  weaponEnergy := weaponEnergy - 10.
  ^ RbAsteroidsBullet new 
		position: (self coordinateAround: 27 angle: rotation);
		vx: (5 * rotation degreeSin) vy: (5 * rotation degreeCos)
		
]

{ #category : #updating }
RbAsteroidsShip >> update [ 
	super update.
	weaponEnergy := weaponOn 
	  ifTrue: [ weaponEnergy - 1 max: 0 ]
	  ifFalse: [ weaponEnergy + 1 min: 100 ]
	
]

{ #category : #accessing }
RbAsteroidsShip >> weaponOn: on [ 
  weaponOn := on.
]
