//: Playground - noun: a place where people can play

import UIKit

// In a Queue, new elements are added to the end of the queue. Dequeuing pulls elements from the front of the queue.
// First-in first-out queue (FIFO)

public struct Queue<T> {
    
    fileprivate var array = [T]()
    
    // Show how many elements are in the queue
    public var count: Int {
        return array.count
    }
    
    
    //Check if a queue is empty
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    // Enqueue to add a new element to the end of the queue
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    // Dequeue pulls elements from the front of the queue
    public mutating func dequeue() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
    
    // Peek at the first element of the queue without popping it off
    public func peek() -> T? {
        return array.first
    }
}



// Examples

var myArray: [Int] = []
var myQueue = Queue(array: myArray) // or directly var myStack = Stack(array: [])

myQueue.isEmpty

myQueue.enqueue(20)

myQueue.enqueue(30)

myQueue.enqueue(56)

print(myQueue)

myQueue.dequeue()

myQueue.dequeue()

myQueue.peek()

print(myQueue)

myQueue.enqueue(90)

print(myQueue)

