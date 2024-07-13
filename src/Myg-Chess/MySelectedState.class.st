Class {
	#name : 'MySelectedState',
	#superclass : 'Object',
	#instVars : [
		'board',
		'selection'
	],
	#category : 'Myg-Chess',
	#package : 'Myg-Chess'
}

{ #category : 'instance creation' }
MySelectedState class >> board: aBoard selected: aMyChessSquare [

	^ self new
		  board: aBoard;
		  selection: aMyChessSquare;
		  yourself
]

{ #category : 'accessing' }
MySelectedState >> board [

	^ board
]

{ #category : 'accessing' }
MySelectedState >> board: anObject [

	board := anObject
]

{ #category : 'events' }
MySelectedState >> clickOn: aMyChessSquare [
	"We should only move if it's legal but..."

	selection unselect.
	board unhighLightTargets: selection contents targetSquares.
	board game move: selection contents to: aMyChessSquare.

	^ MyUnselectedState board: board
]

{ #category : 'accessing' }
MySelectedState >> selection [

	^ selection
]

{ #category : 'accessing' }
MySelectedState >> selection: anObject [

	selection := anObject
]