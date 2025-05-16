Class {
	#name : 'CounterTest',
	#superclass : 'TestCase',
	#category : 'MyCounter',
	#package : 'MyCounter'
}

{ #category : 'tests' }
CounterTest >> testCounterIsSetAndRead [

| c |
c := Counter new.
c count: 7.
self assert: c count equals: 7
]

{ #category : 'tests' }
CounterTest >> testDecrement [

| c |
c := Counter new.
c count: 2.
c decrement ; decrement.
self assert: c count equals: 0
]

{ #category : 'tests' }
CounterTest >> testIncrement [

| c |
c := Counter new.
c count: 2.
c increment ; increment.
self assert: c count equals: 4
]

{ #category : 'tests' }
CounterTest >> testInitialize [

| c |
c := Counter new.
self assert: c count equals: 0
]

{ #category : 'tests' }
CounterTest >> testStartingAt2 [

| c |
c := Counter startingAt: 2.
self assert: c count equals: 2
]

{ #category : 'tests' }
CounterTest >> testWellInitialize [

| c |
c := Counter startingAt: 2.
self assert: (c increment ; increment ; count) equals: 4
]
