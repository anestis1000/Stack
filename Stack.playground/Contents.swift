//: Playground - noun: a place where people can play

import UIKit

// A stack gives you a LIFO or last-in first-out order. The element you pushed last is the first one to come off with the next pop.
public struct Stack<T> {
    
    fileprivate var array = [T]()
    
    // Check if a stack is empty
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    // Show how many elements are in the stack
    public var count: Int {
        return array.count
    }
    
    
    // Push to add a new element to the top of the stack
    public mutating func push(_ element: T) {
        array.append(element)
    }
    
    
    // Pop to remove the element from the top
    public mutating func pop() -> T? {
        return array.popLast()
    }
    
    
    // Peek at the top element without popping it off
    public func peek() -> T? {
        return array.last
    }
}



// Examples

var myArray: [Int] = []
var myStack = Stack(array: myArray) // or directly var myStack = Stack(array: [])

myStack.isEmpty

myStack.push(20)

myStack.push(30)

myStack.push(56)

print(myStack)

myStack.pop()

myStack.pop()

myStack.peek()

print(myStack)

myStack.push(90)

print(myStack)

