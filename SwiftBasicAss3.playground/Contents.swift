import UIKit


//A singleton is a design pattern that restricts the instantiation of a class to one object.
//Use access modifiers to create a singleton class Logger. This Logger should:
//Provide shared, public, global access to the single Logger object.
//Not be able to be instantiated by consuming code.
//Have a method log() that will print a string to the console.

final class Logger {
    static let shared = Logger()

    private init() {}

    func log(_ message: String) {
        print(message)
    }
}

Logger.shared.log("Đây là thông báo !")


//Declare a generic type Stack. A stack is a LIFO (last-in-first-out) data structure that supports
//the following operations:
//peek: returns the top element on the stack without removing it. Returns nil if the stack
//is empty.
//push: adds an element on top of the stack.
//pop: returns and removes the top element on the stack. Returns nil if the stack is empty.
//count: returns the size of the stack.
//Ensure that these operations are the only exposed interface. In other words, additional
//properties or methods needed to implement the type should not be visible.


struct Stack<T> {
    private var elements: [T] = []

    mutating func push(_ element: T) {
        elements.append(element)
    }

    mutating func pop() -> T? {
        return elements.popLast()
    }

    func peek() -> T? {
        return elements.last
    }

    var count: Int {
        return elements.count
    }
}

var stack = Stack<Int>()
stack.push(1)
stack.push(2)
stack.push(3)

print(stack.peek())
print(stack.pop())
print(stack.count)




//Write a throwing function that converts a String to an even number, rounding down if necessary.
enum error: Error {
    case invalidNumber
    case conversionFailed
}

func convertToEven(_ string: String) throws -> Int {
    guard let number = Int(string) else {
        throw error.invalidNumber
    }
    
    guard number % 2 == 0 else {
        throw error.conversionFailed
    }
    
    return number
}


