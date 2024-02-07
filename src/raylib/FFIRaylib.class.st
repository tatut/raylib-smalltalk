Class {
	#name : #FFIRaylib,
	#superclass : #FFILibrary,
	#category : #raylib
}

{ #category : #'as yet unclassified' }
FFIRaylib >> beginDrawing [
	self ffiCall: #(void BeginDrawing(void))
]

{ #category : #'as yet unclassified' }
FFIRaylib >> clearBackground: color [
 ^ self ffiCall: #(void ClearBackground(RbColor color))
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
FFIRaylib >> endDrawing [
	self ffiCall: #(void EndDrawing(void))
]

{ #category : #'as yet unclassified' }
FFIRaylib >> initWindowWidth: widthPx height: heightPx titled: title [ 
  self ffiCall: #(void InitWindow(int widthPx, int heightPx, const char *title))
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
 ^ '/opt/homebrew/lib/libraylib.dylib'
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
FFIRaylib >> targetFPS: fps [
 self ffiCall: #(void SetTargetFPS(int fps))

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
