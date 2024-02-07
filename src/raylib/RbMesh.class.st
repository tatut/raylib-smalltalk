Class {
	#name : #RbMesh,
	#superclass : #FFIStructure,
	#classVars : [
		'OFFSET_ANIMNORMALS',
		'OFFSET_ANIMVERTICES',
		'OFFSET_BONEIDS',
		'OFFSET_BONEWEIGHTS',
		'OFFSET_COLORS',
		'OFFSET_INDICES',
		'OFFSET_NORMALS',
		'OFFSET_TANGENTS',
		'OFFSET_TEXCOORDS',
		'OFFSET_TEXCOORDS2',
		'OFFSET_TRIANGLECOUNT',
		'OFFSET_VAOID',
		'OFFSET_VBOID',
		'OFFSET_VERTEXCOUNT',
		'OFFSET_VERTICES'
	],
	#category : #raylib
}

{ #category : #'field definition' }
RbMesh class >> fieldsDesc [ 
^#(
 int vertexCount;
 int triangleCount; 
 float *vertices;
 float *texcoords;
 float *texcoords2;
 float *normals;
 float *tangents;
 uchar *colors; 
 ushort *indices;
 float *animVertices;
 float *animNormals;
 uchar *boneIds;
 float *boneWeights;
 uint vaoId;
 uint *vboId;
)
]

{ #category : #'accessing - structure variables' }
RbMesh >> animNormals [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_ANIMNORMALS) type: ExternalType float asPointerType
]

{ #category : #'accessing - structure variables' }
RbMesh >> animNormals: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_ANIMNORMALS put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RbMesh >> animVertices [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_ANIMVERTICES) type: ExternalType float asPointerType
]

{ #category : #'accessing - structure variables' }
RbMesh >> animVertices: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_ANIMVERTICES put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RbMesh >> boneIds [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_BONEIDS) type: ExternalType byte asPointerType
]

{ #category : #'accessing - structure variables' }
RbMesh >> boneIds: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_BONEIDS put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RbMesh >> boneWeights [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_BONEWEIGHTS) type: ExternalType float asPointerType
]

{ #category : #'accessing - structure variables' }
RbMesh >> boneWeights: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_BONEWEIGHTS put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RbMesh >> colors [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_COLORS) type: ExternalType byte asPointerType
]

{ #category : #'accessing - structure variables' }
RbMesh >> colors: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_COLORS put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RbMesh >> indices [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_INDICES) type: ExternalType ushort asPointerType
]

{ #category : #'accessing - structure variables' }
RbMesh >> indices: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_INDICES put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RbMesh >> normals [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_NORMALS) type: ExternalType float asPointerType
]

{ #category : #'accessing - structure variables' }
RbMesh >> normals: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_NORMALS put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RbMesh >> tangents [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_TANGENTS) type: ExternalType float asPointerType
]

{ #category : #'accessing - structure variables' }
RbMesh >> tangents: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_TANGENTS put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RbMesh >> texcoords [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_TEXCOORDS) type: ExternalType float asPointerType
]

{ #category : #'accessing - structure variables' }
RbMesh >> texcoords2 [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_TEXCOORDS2) type: ExternalType float asPointerType
]

{ #category : #'accessing - structure variables' }
RbMesh >> texcoords2: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_TEXCOORDS2 put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RbMesh >> texcoords: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_TEXCOORDS put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RbMesh >> triangleCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_TRIANGLECOUNT
]

{ #category : #'accessing - structure variables' }
RbMesh >> triangleCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_TRIANGLECOUNT put: anObject
]

{ #category : #'accessing - structure variables' }
RbMesh >> vaoId [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_VAOID
]

{ #category : #'accessing - structure variables' }
RbMesh >> vaoId: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_VAOID put: anObject
]

{ #category : #'accessing - structure variables' }
RbMesh >> vboId [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_VBOID) type: ExternalType ulong asPointerType
]

{ #category : #'accessing - structure variables' }
RbMesh >> vboId: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_VBOID put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
RbMesh >> vertexCount [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_VERTEXCOUNT
]

{ #category : #'accessing - structure variables' }
RbMesh >> vertexCount: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_VERTEXCOUNT put: anObject
]

{ #category : #'accessing - structure variables' }
RbMesh >> vertices [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_VERTICES) type: ExternalType float asPointerType
]

{ #category : #'accessing - structure variables' }
RbMesh >> vertices: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_VERTICES put: anObject getHandle.
]
