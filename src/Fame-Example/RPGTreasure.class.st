Class {
	#name : #RPGTreasure,
	#superclass : #Object,
	#instVars : [
		'keeper',
		'owner'
	],
	#category : #'Fame-Example'
}

{ #category : #meta }
RPGTreasure class >> annotation [
	<FMClass: #Treasure super: #Object>
	<package: #RPG>
]

{ #category : #accessing }
RPGTreasure >> keeper [
	<FMProperty: #keeper type: #RPGDragon opposite: #hoard>
	^keeper
]

{ #category : #accessing }
RPGTreasure >> keeper: aDragon [
	keeper := FMMultivalueLink on: self
					update: #hoard
					from: self keeper
					to: aDragon
]

{ #category : #accessing }
RPGTreasure >> owner [
	<FMProperty: #owner type: #RPGHero opposite: #talisman>
	^owner
]

{ #category : #accessing }
RPGTreasure >> owner: aHero [
	owner ~= aHero
		ifTrue: [ | old |
			old := owner.
			owner := aHero.
			old ifNotNil: [ old talisman: nil ].
			aHero ifNotNil: [ aHero talisman: self ] ]
]
