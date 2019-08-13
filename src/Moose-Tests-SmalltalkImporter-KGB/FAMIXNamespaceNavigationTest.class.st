Class {
	#name : #FAMIXNamespaceNavigationTest,
	#superclass : #AbstractFAMIXNavigationTest,
	#category : #'Moose-Tests-SmalltalkImporter-KGB'
}

{ #category : #'MooseKGB-TestFamix3-allDependencies' }
FAMIXNamespaceNavigationTest >> testClientClasses [
	self
		assert:
			((self namespace2FullReferee allClientsAtScope: FamixTType)
				equalsTo:
					(Set
						with: self c14ReferencerOutSideRefereeOutSide
						with: self c1FullReferencerOutSide
						with: self c6FullReferencerInSideOutSide
						with: self c3ReferencerInSideRefereeOutSide))
]

{ #category : #'MooseKGB-TestFamix3-allDependencies' }
FAMIXNamespaceNavigationTest >> testClientClassesInto [
	self assert: (((self namespace2FullReferee queryAllIncoming atScope: FamixTType) within: self namespace3ReferencerReferee) equalsTo: (Set with: self c14ReferencerOutSideRefereeOutSide))
]

{ #category : #'MooseKGB-TestFamix3-allDependencies' }
FAMIXNamespaceNavigationTest >> testClientNamespaces [
	self assert: ((self namespace2FullReferee allClientsAtScope: FamixTNamespace) equalsTo: (Set with: self namespace1InteractedReferencerReferee with: self namespace3ReferencerReferee))
]

{ #category : #'MooseKGB-TestFamix3-allDependencies' }
FAMIXNamespaceNavigationTest >> testProviderClasses [
	self
		assert:
			((self namespace1InteractedReferencerReferee allProvidersAtScope: FamixTType)
				equalsTo:
					(Set
						with: self c11FullRefereeOutSide
						with: self c13FullRefereeInSideOutSide
						with: self c14ReferencerOutSideRefereeOutSide
						with: self cObject))
]

{ #category : #'MooseKGB-TestFamix3-allDependencies' }
FAMIXNamespaceNavigationTest >> testProviderClassesInto [
	self
		assert:
			(((self namespace1InteractedReferencerReferee queryAllOutgoing atScope: FamixTType) within: self namespace2FullReferee)
				equalsTo: (Set with: self c11FullRefereeOutSide with: self c13FullRefereeInSideOutSide))
]

{ #category : #'MooseKGB-TestFamix3-allDependencies' }
FAMIXNamespaceNavigationTest >> testProviderNamespaces [
	self
		assert:
			((self namespace1InteractedReferencerReferee allProvidersAtScope: FamixTNamespace)
				equalsTo: (Set with: self namespace2FullReferee with: self namespace3ReferencerReferee with: self namespaceSmalltalkCore))
]