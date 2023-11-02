import UIKit



//1. Show me an example about a struct have property is another property
//2. What is type property, example by source code

struct Person {
    var name: String
    var age: Int
    var introduce: String {
        return "My name is \(name) and \(age) years old."
    }
}

// Example usage
var person = Person(name: "Trung Hieu", age: 20)
print(person.introduce)



//1. Define struct Coordinate with property have latitude and longitude.
//Write a method to get/set for this property
//2. (Opetional) Compare between class’s method and struct’s method

struct Coordinate {
    var latitude: Double
    var longitude: Double
    
    mutating func setCoordinate(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
    
    func getCoordinate() -> (latitude: Double, longitude: Double) {
        return (latitude, longitude)
    }
}

// Example usage
var coordinate = Coordinate(latitude: 10, longitude: 20)
print("Initial Coordinate: \(coordinate.getCoordinate())")

coordinate.setCoordinate(latitude: 40, longitude: 74)
print("Updated Coordinate: \(coordinate.getCoordinate())")



class A {
    init() {
        print("Initializing A")
    }
    
    deinit {
        print("Destroy A")
    }
}

class B: A {
    override init() {
        print("Initializing B")
        super.init()
        print("B initialized")
    }
    
    deinit {
        print("Destroy B")
    }
}

class C: B {
    override init() {
        print("Initializing C")
        super.init()
        print("C initialized")
    }
    
    deinit {
        print("Destroy C")
    }
}

do {
    let _ = C()
}


//Define a protocol Vehical, this protocol will have some properties like //fuel, speed, and some method like run()…
//Implement at least 3 class conform to this protocol and show me difference //kind of run()
//What do you think about inheritance and protocol for this case?

protocol Vehicle {
    var fuel: Double { get set }
    var speed: Double { get set }
    
    func run()
}

class Car: Vehicle {
    var fuel: Double
    var speed: Double
    
    init(fuel: Double, speed: Double) {
        self.fuel = fuel
        self.speed = speed
    }
    
    func run() {
        print("Car is running at a speed of \(speed) km/h.")
    }
}

class Bicycle: Vehicle {
    var fuel: Double
    var speed: Double
    
    init(fuel: Double, speed: Double) {
        self.fuel = fuel
        self.speed = speed
    }
    
    func run() {
        print("Bicycle is moving at a speed of \(speed) km/h.")
    }
}

class Airplane: Vehicle {
    var fuel: Double
    var speed: Double
    
    init(fuel: Double, speed: Double) {
        self.fuel = fuel
        self.speed = speed
    }
    
    func run() {
        print("Airplane is flying at a speed of \(speed) km/h.")
    }
}
