Class {
	#name : #FFIRaylib,
	#superclass : #FFILibrary,
	#instVars : [
		'scene',
		'runProcess',
		'terminate'
	],
	#category : #raylib
}

{ #category : #'as yet unclassified' }
FFIRaylib >> beginDrawing [
	self ffiCall: #(void BeginDrawing(void))
]

{ #category : #'as yet unclassified' }
FFIRaylib >> checkCollisionPoint: point triangleP1: p1 p2: p2 p3: p3 [  
 ^ self ffiCall: #( 
	bool CheckCollisionPointTriangle(
			RbVector2 point, 
			RbVector2 p1, RbVector2 p2, RbVector2 p3) )
]

{ #category : #'as yet unclassified' }
FFIRaylib >> clearBackground: color [
 self ffiCall: #(void ClearBackground(RbColor color))
]

{ #category : #testing }
FFIRaylib >> clearWindowState: flags [
 self ffiCall: #(void ClearWindowState(unsigned int flags))
]

{ #category : #'private - display' }
FFIRaylib >> closeWindow [ 
 self ffiCall: #(void CloseWindow(void))
]

{ #category : #'as yet unclassified' }
FFIRaylib >> currentMonitor [  
^ self ffiCall: #(int GetCurrentMonitor(void))
]

{ #category : #'as yet unclassified' }
FFIRaylib >> draw: aBlock [
	"Call block within begin/end drawing commands."
	self beginDrawing.
	aBlock value: self.
	self endDrawing.
	
]

{ #category : #'as yet unclassified' }
FFIRaylib >> drawCircle: center radius: radius color: color [
self ffiCall: #(void DrawCircleV(RbVector2 center, float radius, RbColor color) )   
]

{ #category : #'as yet unclassified' }
FFIRaylib >> drawFpsX: x y: y [
 self ffiCall: #(void DrawFPS(int x, int y))
]

{ #category : #'as yet unclassified' }
FFIRaylib >> drawLineFrom: fromRbVector2 to: toRbVector2 color: aRbColor [
 self ffiCall: #(void DrawLineV(RbVector2 fromRbVector2, RbVector2 toRbVector2, RbColor aRbColor) )     
]

{ #category : #'as yet unclassified' }
FFIRaylib >> drawLineFromX: fromX fromY: fromY toX: toX toY: toY color: color [
	self ffiCall: #(void  DrawLine(int fromX, int fromY, int toX, int toY, RbColor color))
]

{ #category : #'as yet unclassified' }
FFIRaylib >> drawText: aString x: posX y: posY fontSize: fontSize color: color [  
 self ffiCall: #( void DrawText(const char *aString, int posX, int posY, int fontSize, RbColor color) )
 
]

{ #category : #'as yet unclassified' }
FFIRaylib >> drawTriangleFan: points pointCount: pointCount color: color [
 ^ self ffiCall: #(void DrawTriangleFan(RbVector2 *points, int pointCount, RbColor color))
]

{ #category : #'as yet unclassified' }
FFIRaylib >> drawTriangleV1: v1 v2: v2 v3: v3 color: color [ 
 "Draw triangle in ccw order."
 self ffiCall: #(void DrawTriangle(RbVector2 v1, RbVector2 v2, RbVector2 v3, RbColor color)) 
]

{ #category : #'as yet unclassified' }
FFIRaylib >> endDrawing [
	self ffiCall: #(void EndDrawing(void))
]

{ #category : #'as yet unclassified' }
FFIRaylib >> fps [
^ self ffiCall: #(int GetFPS(void))
]

{ #category : #'as yet unclassified' }
FFIRaylib >> frameTime [ 
 ^ self ffiCall: #(float GetFrameTime(void))
]

{ #category : #testing }
FFIRaylib >> gamepad: gamepad axisMovement: axis [  
 ^ self ffiCall: #(float GetGamepadAxisMovement(int gamepad, int axis))
]

{ #category : #testing }
FFIRaylib >> gamepadAxisCount: gamepad [  
 ^ self ffiCall: #(int GetGamepadAxisCount(int gamepad))
]

{ #category : #'as yet unclassified' }
FFIRaylib >> gamepadButtonPressed [ 
 ^ self ffiCall: #(int GetGamepadButtonPressed(void))

]

{ #category : #'as yet unclassified' }
FFIRaylib >> initWindowWidth: widthPx height: heightPx titled: title [ 
  self ffiCall: #(void InitWindow(int widthPx, int heightPx, const char *title))
]

{ #category : #initialization }
FFIRaylib >> initialize [ 
  scene := RbNullScene new.
]

{ #category : #testing }
FFIRaylib >> isGamepad: gamepad buttonDown: button [  
 ^ self ffiCall: #(bool IsGamepadButtonDown(int gamepad, int button))
]

{ #category : #testing }
FFIRaylib >> isGamepad: gamepad buttonPressed: button [  
 ^ self ffiCall: #(bool IsGamepadButtonPressed(int gamepad, int button))
]

{ #category : #testing }
FFIRaylib >> isGamepad: gamepad buttonReleased: button [  
 ^ self ffiCall: #(bool IsGamepadButtonReleased(int gamepad, int button))
]

{ #category : #testing }
FFIRaylib >> isGamepadAvailable [ 
 ^ self ffiCall: #(bool IsGamepadAvailable(void))
]

{ #category : #testing }
FFIRaylib >> isGamepadAvailable: gamepad [  
 ^ self ffiCall: #(bool IsGamepadAvailable(int gamepad))
]

{ #category : #testing }
FFIRaylib >> isKeyDown: key [ 
 ^ self ffiCall: #(bool IsKeyDown(int key)) 
]

{ #category : #testing }
FFIRaylib >> isWindowFocused [
 ^self ffiCall: #(bool IsWindowFocused(void))
]

{ #category : #testing }
FFIRaylib >> isWindowFullscreen [ 
 ^self ffiCall: #(bool IsWindowFullscreen(void))
]

{ #category : #testing }
FFIRaylib >> isWindowHidden [ 
 ^self ffiCall: #(bool IsWindowHidden(void))
]

{ #category : #testing }
FFIRaylib >> isWindowMaximized [
 ^self ffiCall: #(bool IsWindowMaximized(void))
]

{ #category : #testing }
FFIRaylib >> isWindowMinimized [
 ^self ffiCall: #(bool IsWindowMinimized(void))
]

{ #category : #testing }
FFIRaylib >> isWindowReady [ 
^ self ffiCall: #(bool IsWindowReady(void))    
]

{ #category : #testing }
FFIRaylib >> isWindowResized [
 ^self ffiCall: #(bool IsWindowResized(void))
]

{ #category : #testing }
FFIRaylib >> isWindowState: flag [
 ^self ffiCall: #(bool IsWindowState(unsigned int flag))
]

{ #category : #'as yet unclassified' }
FFIRaylib >> macLibraryName [ 
 ^ 'libraylib.dylib'
]

{ #category : #testing }
FFIRaylib >> maximizeWindow [ 
 self ffiCall: #(void MaximizeWindow(void))
]

{ #category : #testing }
FFIRaylib >> minimizeWindow [ 
 self ffiCall: #(void MinimizeWindow(void))
]

{ #category : #'as yet unclassified' }
FFIRaylib >> monitorCount [  
^ self ffiCall: #(int GetMonitorCount(void))
]

{ #category : #'as yet unclassified' }
FFIRaylib >> monitorHeight: monitor [ 
^ self ffiCall: #(int GetMonitorHeight(int monitor))
]

{ #category : #'as yet unclassified' }
FFIRaylib >> monitorPhysicalHeight: monitor [  
^ self ffiCall: #(int GetMonitorPhysicalHeight(int monitor))
]

{ #category : #'as yet unclassified' }
FFIRaylib >> monitorPhysicalSize: monitor [  
^ (self monitorPhysicalWidth: monitor) @ (self monitorPhysicalHeight: monitor)
]

{ #category : #'as yet unclassified' }
FFIRaylib >> monitorPhysicalWidth: monitor [  
^ self ffiCall: #(int GetMonitorPhysicalWidth(int monitor))
]

{ #category : #'as yet unclassified' }
FFIRaylib >> monitorSize: monitor [ 
^ (self monitorWidth: monitor) @ (self monitorHeight: monitor)
]

{ #category : #'as yet unclassified' }
FFIRaylib >> monitorWidth: monitor [ 
^ self ffiCall: #(int GetMonitorWidth(int monitor))
]

{ #category : #'as yet unclassified' }
FFIRaylib >> pollInputEvents [ 
  self ffiCall: #(void PollInputEvents(void))
]

{ #category : #'as yet unclassified' }
FFIRaylib >> renderHeight [ 
 ^ self ffiCall: #(int GetRenderHeight(void))
]

{ #category : #'as yet unclassified' }
FFIRaylib >> renderSize [
 ^ self renderWidth @ self renderHeight 
]

{ #category : #'as yet unclassified' }
FFIRaylib >> renderWidth [ 
 ^ self ffiCall: #(int GetRenderWidth(void))
]

{ #category : #testing }
FFIRaylib >> restoreWindow [ 
 self ffiCall: #(void RestoreWindow(void))
]

{ #category : #running }
FFIRaylib >> run [ 
 runProcess ifNotNil: [ runProcess terminate ].
 runProcess := [ 
	[ self windowShouldClose ] whileFalse: [ 
		scene update: self.
		scene doDraw: self.
	] 
 ] fork.
]

{ #category : #running }
FFIRaylib >> runDev [ 
 runProcess ifNotNil: [ runProcess terminate ].
 runProcess := [ 
	[ self windowShouldClose ] whileFalse: [ 
	   | dur sleep | 
	 dur := [ 
			self pollInputEvents.
			self swapScreenBuffer.  
			scene update: self.
			scene draw: self.
			
	   ] durationToRun asMilliSeconds.
      sleep := 16 - dur.
      sleep < 0 
       ifTrue: [ 
			Transcript show: 'Scene ', scene printString, ' took more than 16ms for frame!'; cr. 
			sleep := 100 ].
      (Delay forMilliseconds: sleep) wait.
	] 
 ] fork.
]

{ #category : #running }
FFIRaylib >> runOnce [
 		scene update: self.
	self draw: [ :_ | 	scene draw: self ].

]

{ #category : #running }
FFIRaylib >> runProd [ 
 "Run directly in this process, untiil quit" 
 terminate := false.
[ terminate not and: [ self windowShouldClose not ] ] whileTrue: [ 
		scene update: self.
		scene doDraw: self.
] 

]

{ #category : #accessing }
FFIRaylib >> scene: anRbScene [ 
 scene := anRbScene 
]

{ #category : #'as yet unclassified' }
FFIRaylib >> screenHeight [
 ^ self ffiCall: #(int GetScreenHeight(void))
]

{ #category : #'as yet unclassified' }
FFIRaylib >> screenSize [ 
 ^ self screenWidth @ self screenHeight
]

{ #category : #'as yet unclassified' }
FFIRaylib >> screenWidth [ 
 ^ self ffiCall: #(int GetScreenWidth(void))
]

{ #category : #'as yet unclassified' }
FFIRaylib >> swapScreenBuffer [  
  self ffiCall: #(void SwapScreenBuffer(void))
]

{ #category : #'as yet unclassified' }
FFIRaylib >> targetFPS: fps [
 self ffiCall: #(void SetTargetFPS(int fps))

]

{ #category : #'debugging actions' }
FFIRaylib >> terminate [ 
  "Stop running the scene process, if any."
  terminate := true.
  runProcess ifNotNil: [ runProcess terminate ]
]

{ #category : #testing }
FFIRaylib >> toggleBorderlessWindowed [
 self ffiCall: #(void ToggleBorderlessWindowed(void))
]

{ #category : #testing }
FFIRaylib >> toggleFullscreen [  
 ^self ffiCall: #(void ToggleFullscreen(void))
]

{ #category : #'as yet unclassified' }
FFIRaylib >> windowDimension: aRectangle [
	self windowPosition: aRectangle origin. 
	self windowWidth: aRectangle width height: aRectangle height. 
]

{ #category : #testing }
FFIRaylib >> windowIcon: anRbImage [  
 self ffiCall: #(void SetWindowIcon(RbImage anRbImage))
]

{ #category : #'as yet unclassified' }
FFIRaylib >> windowPosition [
	^ self ffiCall: #(RbVector2 GetWindowPosition(void))
]

{ #category : #testing }
FFIRaylib >> windowPosition: aPoint [   
 self windowPositionX: aPoint x Y: aPoint y.
]

{ #category : #testing }
FFIRaylib >> windowPositionX: x Y: y [   
 self ffiCall: #(void SetWindowPosition(int x, int y)).
]

{ #category : #'as yet unclassified' }
FFIRaylib >> windowShouldClose [ 
 ^ self ffiCall: #(bool WindowShouldClose(void))
]

{ #category : #testing }
FFIRaylib >> windowState: flags [
 ^self ffiCall: #(bool SetWindowState(unsigned int flags))
]

{ #category : #testing }
FFIRaylib >> windowTitle: aString [   
 self ffiCall: #(void SetWindowTitle(const char *aString))
]

{ #category : #testing }
FFIRaylib >> windowWidth: width height: height [   
 ^self ffiCall: #(void SetWindowSize(int width, int height)).
]
