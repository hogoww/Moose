Class {
	#name : #FamixPharoSmalltalkGenerator,
	#superclass : #FamixBasicInfrastructureGenerator,
	#instVars : [
		'access',
		'annotationInstance',
		'annotationInstanceAttribute',
		'annotationType',
		'annotationTypeAttribute',
		'attribute',
		'class',
		'globalVariable',
		'implicitVariable',
		'inheritance',
		'invocation',
		'localVariable',
		'method',
		'namespace',
		'package',
		'parameter',
		'reference',
		'scopingEntity',
		'unknownVariable',
		'pharoEntitySourceAnchor'
	],
	#category : #'Famix-PharoSmalltalk-Generator'
}

{ #category : #accessing }
FamixPharoSmalltalkGenerator class >> packageName [

	^ #'Famix-PharoSmalltalk-Entities'
]

{ #category : #accessing }
FamixPharoSmalltalkGenerator class >> prefix [

	^ #'FamixSt'
]

{ #category : #initialization }
FamixPharoSmalltalkGenerator >> defineClasses [
	super defineClasses.

	access := builder newClassNamed: #Access.
	annotationInstance := builder newClassNamed: #AnnotationInstance.
	annotationInstanceAttribute := builder newClassNamed: #AnnotationInstanceAttribute.
	annotationType := builder newClassNamed: #AnnotationType.
	annotationTypeAttribute := builder newClassNamed: #AnnotationTypeAttribute.
	attribute := builder newClassNamed: #Attribute.
	class := builder newClassNamed: #Class.
	globalVariable := builder newClassNamed: #GlobalVariable.
	implicitVariable := builder newClassNamed: #ImplicitVariable.
	inheritance := builder newClassNamed: #Inheritance.
	invocation := builder newClassNamed: #Invocation.
	localVariable := builder newClassNamed: #LocalVariable.
	pharoEntitySourceAnchor := builder newClassNamed: #PharoEntitySourceAnchor.
	method := builder newClassNamed: #Method.
	namespace := builder newClassNamed: #Namespace.
	package := builder newClassNamed: #Package.
	parameter := builder newClassNamed: #Parameter.
	reference := builder newClassNamed: #Reference.
	scopingEntity := builder newClassNamed: #ScopingEntity.
	unknownVariable := builder newClassNamed: #UnknownVariable
]

{ #category : #initialization }
FamixPharoSmalltalkGenerator >> defineHierarchy [
	super defineHierarchy.

	access --|> #TAccess.

	annotationInstance --|> sourcedEntity.
	annotationInstance --|> #TAnnotationInstance.
	annotationInstance --|> #TWithAnnotationInstanceAttributes.
	annotationInstance --|> #TTypedAnnotationInstance.

	annotationInstanceAttribute --|> sourcedEntity.
	annotationInstanceAttribute --|> #TAnnotationInstanceAttribute.
	annotationInstanceAttribute --|> #TTypedAnnotationInstanceAttribute.

	annotationType --|> namedEntity.
	annotationType --|> #TAnnotationType.
	annotationType --|> #TWithAttributes.

	annotationTypeAttribute --|> attribute.
	annotationTypeAttribute --|> #TAnnotationTypeAttribute.
	annotationTypeAttribute --|> #TTypedAnnotationInstanceAttribute.

	attribute --|> namedEntity.
	attribute --|> #TAttribute.
	attribute --|> #TWithClassScope.
	attribute --|> #THasModifiers.	

	class --|> namedEntity.
	self flag: 'WithTypes should not be necessary but needed in tests like FamixMetricsTest>>testAfferentCouplingFAMIXClassGroup'.
	class --|> #TWithTypes.
	class --|> #TWithExceptions.
	class --|> #TClass.
	class --|> #TClassHierarchyNavigation.
	class --|> #THasModifiers.

	globalVariable --|> namedEntity.
	globalVariable --|> #TGlobalVariable.

	implicitVariable --|> namedEntity.
	implicitVariable --|> #TImplicitVariable.

	inheritance --|> #TInheritance.

	invocation --|> #TInvocation.
	invocation --|> #THasSignature.

	localVariable --|> namedEntity.
	localVariable --|> #TLocalVariable.

	method --|> namedEntity.
	method --|> #TMethod.
	method --|> #TWithAnnotationTypes.
	method --|> #THasModifiers.
	method withPrecedenceOf: #TMethod.

	namedEntity --|> #TPackageable.
	namedEntity --|> #TInvocationsReceiver.
	namedEntity --|> #TWithAnnotationInstances.

	namespace --|> scopingEntity.
	namespace --|> #TNamespace.
	namespace --|> #TInvocationsReceiver.

	package --|> scopingEntity.
	package --|> #TPackage.
	package --|> #TCohesionCouplingMetrics.

	parameter --|> namedEntity.
	parameter --|> #TParameter.

	reference --|> #TReference.

	scopingEntity --|> namedEntity.
	scopingEntity --|> #TWithGlobalVariables.
	scopingEntity --|> #TScopingEntity.
	scopingEntity --|> #TWithTypes.
	scopingEntity --|> #TWithClasses.
	
	pharoEntitySourceAnchor --|> sourceAnchor.
	pharoEntitySourceAnchor --|> #TSourceAnchor.
 
	unknownVariable --|> namedEntity.
	unknownVariable --|> #TStructuralEntity
	

	

]

{ #category : #definition }
FamixPharoSmalltalkGenerator >> defineProperties [
	super defineProperties.
	((method property: #protocol type: #String)
		comment: 'Protocol of the method').
]

{ #category : #initialization }
FamixPharoSmalltalkGenerator >> newBuilder [
	^ super newBuilder
		withImportingContext;
		yourself
]
