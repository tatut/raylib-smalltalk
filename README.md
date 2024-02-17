# Raylib Smalltalk bindings

Smalltalk bindings for [raylib](https://www.raylib.com).
Developed in [Pharo](https://pharo.org) (11).

WIP: not all raylib functions are implemented yet, only tested on OS X.

# Notes on changes

All code lives in the `raylib` package.
The FFI bindings to the raylib C functions are in the class FFIRaylib class.

Structs are their own classes prefixed with Rb, eg. `Vector2` and `Color` become `RbVector2` and `RbColor`.
The typical Smalltalk accessor methods to get/set the values are present.

As Smalltalk uses different naming styles, the methods are not one to one to the C functions names.
Getter functions like `GetScreenWidth` omit the first part and becomes `screenWidth`. 
Functions to set things likewise omit the first part so `SetTargetFPS` becomes `targetFPS:`.

There is a new class called `RbScene` which abstracts the update & draw functionality that will be called
in a loop.

# Development

As Pharo is single threaded, the regular raylib loop to continuously redraw everything and wait for next frame,
will cause the development environment to halt as well. It is recommended to add a keybinding to scene update
that calls `terminate` which stops the game loop (without closing the window). This allows you to inspect things
in Pharo and change code and then continue the game.

There is also a method `runOnce` which calls the scene update/draw one time. This can be used to step through
frames of the game. Or see how code changes would look.

