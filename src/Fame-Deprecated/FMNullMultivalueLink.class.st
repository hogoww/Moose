"
Description
--------------------

I am a MultiValueLink use when the content of the link was not yet initialized.

I appeared because a lot of relations are not initialized in Moose and we were loosing too much memory.

I am tranformed into a FMMultivalueLink when my content is set.

Cyril: Maybe this should be removed now that we have a new Moose version where each metamodel should contain only what the parser is able to give?
"
Class {
	#name : #FMNullMultivalueLink,
	#superclass : #Collection,
	#instVars : [
		'selector',
		'owner',
		'opposite'
	],
	#category : #'Fame-Deprecated'
}

{ #category : #testing }
FMNullMultivalueLink class >> isDeprecated [
	"I was useful in Moose < 7 to save space, but now we should have model much more memory efficient, rendering me useless."

	^ true
]

{ #category : #'instance creation' }
FMNullMultivalueLink class >> on: anOwner opposite: anOpposite selector: aSelector [
	^ self new
		with: anOwner opposite: anOpposite selector: aSelector;
		yourself
]

{ #category : #copying }
FMNullMultivalueLink >> , aCollection [
	^ self asOrderedCollection , aCollection
]

{ #category : #accessing }
FMNullMultivalueLink >> add: anElement [
	self noMoreNull add: anElement
]

{ #category : #accessing }
FMNullMultivalueLink >> at: anIndex [
	^self errorSubscriptBounds: anIndex
]

{ #category : #iterators }
FMNullMultivalueLink >> basicIterator [
	^ NullIterator new
]

{ #category : #accessing }
FMNullMultivalueLink >> byName: aName ifAbsent: aBlock [
	^aBlock value
]

{ #category : #enumerating }
FMNullMultivalueLink >> do: aBlock [
]

{ #category : #accessing }
FMNullMultivalueLink >> first [
	^self errorSubscriptBounds: 1	
]

{ #category : #testing }
FMNullMultivalueLink >> isEmpty [
	^ true
]

{ #category : #testing }
FMNullMultivalueLink >> isNotEmpty [
	^ false
]

{ #category : #iterators }
FMNullMultivalueLink >> iterator [
	^ self basicIterator withCollectionAPI
]

{ #category : #accessing }
FMNullMultivalueLink >> last [
	^self errorSubscriptBounds: 0
]

{ #category : #accessing }
FMNullMultivalueLink >> noMoreNull [
	^ self owner instVarNamed: self selector put: (FMMultivalueLink on: self owner opposite: self opposite)
]

{ #category : #accessing }
FMNullMultivalueLink >> opposite [
	^ opposite
]

{ #category : #accessing }
FMNullMultivalueLink >> owner [
	^ owner
]

{ #category : #printing }
FMNullMultivalueLink >> printOn: aStream [
	self asArray printOn: aStream
]

{ #category : #removing }
FMNullMultivalueLink >> remove: anElement ifAbsent: exceptionBlock [
	^exceptionBlock value
]

{ #category : #accessing }
FMNullMultivalueLink >> second [
	^self errorSubscriptBounds: 2
]

{ #category : #accessing }
FMNullMultivalueLink >> selector [
	^ selector
]

{ #category : #accessing }
FMNullMultivalueLink >> size [
	^0
]

{ #category : #accessing }
FMNullMultivalueLink >> species [
	^ OrderedCollection 
]

{ #category : #accessing }
FMNullMultivalueLink >> third [
	^self errorSubscriptBounds: 3
]

{ #category : #private }
FMNullMultivalueLink >> unsafeAdd: anElement [
	^self noMoreNull unsafeAdd: anElement
]

{ #category : #private }
FMNullMultivalueLink >> unsafeRemove: anElement [

]

{ #category : #accessing }
FMNullMultivalueLink >> value: aCollection [
	aCollection ifEmpty: [ ^self ].
	^self noMoreNull value: aCollection
]

{ #category : #private }
FMNullMultivalueLink >> with: anOwner opposite: anOpposite selector: aSelector [
	self assert: anOpposite numArgs = 1.
	owner := anOwner.
	opposite := anOpposite.
	selector := aSelector
]

{ #category : #enumerating }
FMNullMultivalueLink >> withIndexDo: aBlock [ 
]
