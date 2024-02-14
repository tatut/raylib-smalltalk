Class {
	#name : #RbDemo,
	#superclass : #Object,
	#category : #raylib
}

{ #category : #'as yet unclassified' }
RbDemo class >> demo [
 | r | 
 r := FFIRaylib uniqueInstance.

 r initWindowWidth: 640 height: 480 titled: 'My fine game'. 
 r targetFPS: 60. 
r scene: "RbDiscoScene" RbAsteroidsGameScene  new.

r runProd.
r closeWindow.
SmalltalkImage current quitPrimitive.
]

{ #category : #'as yet unclassified' }
RbDemo class >> demoSimple [
 | r white red| 
 r := FFIRaylib uniqueInstance.
 white := RbColor new r: 255; g: 255; b: 255.
 red := RbColor new r: 255; g: 0; b: 0.

 r initWindowWidth: 800 height: 450 titled: 'My fine game';
   targetFPS: 60.
 [ r windowShouldClose ] whileFalse: [ 
	r beginDrawing;
	  clearBackground: white;
	  drawText: 'Congrats! You created your first window!' x: 190 y: 200 fontSize: 20 color: red;
	  endDrawing.
 ]. 
 r closeWindow.
SmalltalkImage current quitPrimitive.
]
