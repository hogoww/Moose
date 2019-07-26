"
FAMIXStructuralEntity is the abstract superclass for basic data structure in the source code. A structural entity has a declaredType that points to the type of the variable.
"
Trait {
	#name : #FamixTStructuralEntity,
	#traits : 'FamixTNamed + FamixTAccessible + FamixTInvocationsReceiver + FamixTTypedStructure',
	#classTraits : 'FamixTNamed classTrait + FamixTAccessible classTrait + FamixTInvocationsReceiver classTrait + FamixTTypedStructure classTrait',
	#category : #'Famix-Traits-Traits'
}

{ #category : #meta }
FamixTStructuralEntity classSide >> annotation [

	<MSEClass: #TStructuralEntity super: #Trait>
	<generated>
	<package: #'Famix-Traits'>
	^self
]

{ #category : #testing }
FamixTStructuralEntity >> isStructuralEntity [

	<generated>
	^ true
]