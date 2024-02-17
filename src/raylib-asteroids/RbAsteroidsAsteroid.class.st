Class {
	#name : #RbAsteroidsAsteroid,
	#superclass : #RbAsteroidsGameEntity,
	#instVars : [
		'triangleFanPoints',
		'rotationSpeed',
		'size',
		'angles'
	],
	#category : #'raylib-asteroids'
}

{ #category : #'as yet unclassified' }
RbAsteroidsAsteroid >> collidesWith: pointRbVector2 [
 | p1 |
 p1 := RbVector2 copy: (triangleFanPoints at: 1).
 2 to: triangleFanPoints size - 2 do: [ :i |
	| p2 p3 |
	p2 := RbVector2 copy: (triangleFanPoints at: i).
	p3 := RbVector2 copy: (triangleFanPoints at: i + 1).
	(self rb checkCollisionPoint: pointRbVector2 triangleP1: p1  p2: p2  p3: p3)
		ifTrue: [ ^ true ]
 ].
 ^ false 
]

{ #category : #'as yet unclassified' }
RbAsteroidsAsteroid >> explode [
 "Hit by a bullet, explode into smaller pieces (or nothing at all)" 
 | asteroids count |
 size <= 20 ifTrue: [ ^ {} ].
 count := Random new nextIntegerBetween: 2 and: 4.
 asteroids := OrderedCollection new.
 1 to: count do: [ :i |
	asteroids add: (self class new initAt: (self position) size: (size / 2))
 ].
 ^ asteroids

]

{ #category : #accessing }
RbAsteroidsAsteroid >> initAt: positionRbVector2 size: sizeInteger [
 | points rnd |
 rnd := Random new. 
 size := sizeInteger.
 points := 7 + (rnd nextInteger: 10).
 position := positionRbVector2. 
 triangleFanPoints := FFIArray newType: RbVector2 size: points.
 angles := Array new: points.
 triangleFanPoints doWithIndex: [ :p :i |
	i = 1 
	 ifTrue: [ p x: position x; y: position y ]
	 ifFalse: [ 
		| angle s |
		angle := (i - 1) * (360 / (points - 2)).
		s := (sizeInteger / 2) + (rnd nextInteger: (sizeInteger / 2) ceiling).
		angles at: i  put: angle -> s. "store angle -> s, for rotation"		
		p x: position x + (s * angle degreeSin); y: position y + (s * angle degreeCos) 
	 ]
 ].
]

{ #category : #initialization }
RbAsteroidsAsteroid >> initialize [ 
 | rnd |
 super initialize.
 rnd := Random new.
 rotationSpeed := 2 * (rnd nextBetween: -1.0 and: 1.0).
 velocity
	x: 1 * (rnd nextBetween: -1.0 and: 1.0);
	y: 1 * (rnd nextBetween: -1.0 and: 1.0)
]

{ #category : #accessing }
RbAsteroidsAsteroid >> position [ 
 ^ RbVector2 copy: (triangleFanPoints at: 1)
]

{ #category : #rendering }
RbAsteroidsAsteroid >> render: rb [
  rb drawTriangleFan: triangleFanPoints 
	  pointCount: triangleFanPoints size 
	  color: (RbColor r: 90 g: 85 b: 76)  
]

{ #category : #updating }
RbAsteroidsAsteroid >> update [
 "Add rotation speed to each angle->size and recalculate triangle vertices"
 "FIXME: update center"
 | center |
 super update.
 center := triangleFanPoints at: 1.
 triangleFanPoints doWithIndex: [ :p :i |
	i > 1 ifTrue: [ 
    | angle newAngle s |
	 angle := (angles at: i) key.
	 s := (angles at: i) value. 
	 newAngle := angle + rotationSpeed.
	 (angles at: i) key: newAngle.
	 p x: center x + (s * newAngle degreeSin); y: center y + (s * newAngle degreeCos)  
	]
 ]
]

{ #category : #'as yet unclassified' }
RbAsteroidsAsteroid >> updatePosition: aBlock [ 
 aBlock value: (triangleFanPoints at: 1) 
]
