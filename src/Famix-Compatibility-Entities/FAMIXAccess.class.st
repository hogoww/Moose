Class {
	#name : #FAMIXAccess,
	#superclass : #FAMIXEntity,
	#traits : 'FamixTAccess',
	#classTraits : 'FamixTAccess classTrait',
	#category : #'Famix-Compatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXAccess class >> annotation [

	<FMClass: #Access super: #FAMIXEntity>
	<package: #FAMIX>
	<generated>
	^self
]

{ #category : #'Moose-Query-Extensions' }
FAMIXAccess class >> fromMethod [
	^ self lookupSelector: #accessor
]

{ #category : #'Moose-Query-Extensions' }
FAMIXAccess class >> toMethod [
	^ self lookupSelector: #variable
]

{ #category : #testing }
FAMIXAccess >> isAccess [
	^true
]

{ #category : #'Famix-Implementation' }
FAMIXAccess >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' (Access)'
]
