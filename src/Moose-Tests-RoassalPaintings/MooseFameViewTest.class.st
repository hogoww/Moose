Class {
	#name : #MooseFameViewTest,
	#superclass : #TestCase,
	#category : #'Moose-Tests-RoassalPaintings-FameView'
}

{ #category : #tests }
MooseFameViewTest >> testOpenOn [

	self shouldnt: [ MooseFameView new open delete ] raise: Error
]

{ #category : #tests }
MooseFameViewTest >> testViewFamixCore [

	self shouldnt: [ MooseFameView new viewFamixCore delete ] raise: Error
]
