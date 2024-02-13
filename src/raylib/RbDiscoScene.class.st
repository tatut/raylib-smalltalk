Class {
	#name : #RbDiscoScene,
	#superclass : #RbScene,
	#instVars : [
		'color',
		'random'
	],
	#category : #raylib
}

{ #category : #updating }
RbDiscoScene >> draw: rb [
 rb clearBackground: color
]

{ #category : #initialization }
RbDiscoScene >> initialize [ 
  random := Random new.
  color := RbColor new r: 0; g: 0; b: 0. 
]

{ #category : #updating }
RbDiscoScene >> update: _rb [
  color
   r: (random nextInteger: 255);
	g: (random nextInteger: 255);
	b: (random nextInteger: 255).
]
