Class {
	#name : #RbAsteroidsBullet,
	#superclass : #RbAsteroidsGameEntity,
	#instVars : [
		'ttl'
	],
	#category : #'raylib-asteroids'
}

{ #category : #initialization }
RbAsteroidsBullet >> initialize [ 
  super initialize.
  ttl := 120. "one bullet lives for 120 frames / 2seconds" 
]

{ #category : #testing }
RbAsteroidsBullet >> isExpired [ 
 ^ ttl < 0
]

{ #category : #rendering }
RbAsteroidsBullet >> render: rb [ 
 rb drawCircle: position radius: 5 color: (RbColor r: 100 g: 255 b: 100) 
]

{ #category : #updating }
RbAsteroidsBullet >> update [ 
 super update.
 ttl := ttl - 1.
]
