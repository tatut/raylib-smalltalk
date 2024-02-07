Class {
	#name : #RbRectangle,
	#superclass : #FFIStructure,
	#category : #raylib
}

{ #category : #'field definition' }
RbRectangle class >> fieldsDesc [ 
^#(
 float x;
 float y;
 float width;
 float height;
)
]
