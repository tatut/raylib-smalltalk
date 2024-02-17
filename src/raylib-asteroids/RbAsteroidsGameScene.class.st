Class {
	#name : #RbAsteroidsGameScene,
	#superclass : #RbScene,
	#instVars : [
		'score',
		'ship',
		'asteroids',
		'bullets'
	],
	#category : #'raylib-asteroids'
}

{ #category : #updating }
RbAsteroidsGameScene >> draw: rb [
	| green black rnd |
	green := RbColor new
		         r: 0;
		         g: 255;
		         b: 0;
		         a: 255.
	black := RbColor new
		         r: 0;
		         g: 0;
		         b: 0;
		         a: 0.
	rnd := Random new.
	rb
		clearBackground: black;
		drawFpsX: 10 y: 10.
	ship render: rb.
	bullets do: [ :b | b render: rb ].
	asteroids do: [ :a | a render: rb ].
	"self drawGamepadInfo: rb"
]

{ #category : #updating }
RbAsteroidsGameScene >> drawGamepadInfo: rb [

	0 to: 5 do: [ :i |
		rb
			drawText: (rb gamepad: 0 axisMovement: i) asString
			x: 300
			y: 10 + (i * 25)
			fontSize: 20
			color: RbColor white ].
	rb
		drawText: rb gamepadButtonPressed asString
		x: 400
		y: 20
		fontSize: 20
		color: RbColor white
]

{ #category : #initialization }
RbAsteroidsGameScene >> initialize [ 
  ship := RbAsteroidsShip new x: 320 y: 240.
  bullets := OrderedCollection new.
  asteroids := OrderedCollection new.
  asteroids add: (RbAsteroidsAsteroid new initAt: (RbVector2 x: 100 y: 100) size: 50).
]

{ #category : #initialization }
RbAsteroidsGameScene >> reset [ 
  ship x: 320 y: 240;
		 vx: 0.0 vy: 0.0.
]

{ #category : #updating }
RbAsteroidsGameScene >> update: rb [ 
 (rb isKeyDown: 263) ifTrue: [ ship rotate: 1 ].
 (rb isKeyDown: 262) ifTrue: [ ship rotate: -1 ].
 (rb isGamepadAvailable: 0) ifTrue: [ 
	| rt |
	ship rotate:  (rb gamepad: 0 axisMovement: 0) negated.
	rt := rb gamepad: 0 axisMovement: 5. "right trigger axis"
	rt > 0 ifTrue: [ ship accelerate: rt ]
 ].
 (rb isKeyDown: 265) ifTrue: [ ship accelerate ].
 ((rb isKeyDown: 32) or: (rb isGamepad: 0 buttonDown: 7)) ifTrue: [ 
	ship shoot ifNotNil: [ :b | bullets add: b ]
 ].

 "DEBUG: stop game update process on DELETE key or gamepad button 15 (options)"
 ((rb isKeyDown: 261) or: (rb isGamepad: 0 buttonDown: 15)) ifTrue: [ rb terminate ]. "DEBUG: stop update process on DELETE key"
 
 ship update.
 bullets do: #update.
 asteroids do: #update.
 bullets removeAllSuchThat: #isExpired.
]
