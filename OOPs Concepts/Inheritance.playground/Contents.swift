import UIKit

var greeting = "Hello, playground"


class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        // do nothing - an arbitrary vehicle doesn't necessarily make a noise
    }
}

//let someVehicle = Vehicle()
//print("Vehicle: \(someVehicle.description)") // Vehicle: traveling at 0.0 miles per hour


//Subclassing - The following example defines a subclass called Bicycle, with a superclass of Vehicle:

class Bicycle: Vehicle {
    var hasBasket = false //its stored property
}

//By default, any new Bicycle instance you create will not have a basket. You can set the hasBasket property to true for a particular Bicycle instance after that instance is created:

let bicycle = Bicycle()
bicycle.hasBasket = true

//You can also modify the inherited currentSpeed property of a Bicycle instance, and query the instance’s inherited description property:

bicycle.currentSpeed = 15.0
print("Bicycle: \(bicycle.description)")
// Bicycle: traveling at 15.0 miles per hour


//Overriding - A subclass can provide its own custom implementation of an instance method, type method, instance property, type property, or subscript that it would otherwise inherit from a superclass. This is known as overriding.

//To override a characteristic that would otherwise be inherited, you prefix your overriding definition with the override keyword

//The following example defines a new subclass of Vehicle called Train, which overrides the makeNoise() method that Train inherits from Vehicle:

class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo")
    }
}

//If you create a new instance of Train and call its makeNoise() method, you can see that the Train subclass version of the method is called:

let train = Train()
train.makeNoise() // Prints "Choo Choo"

//Overriding Properties

class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}

//If you create an instance of the Car class and set its gear and currentSpeed properties, you can see that its description property returns the tailored description defined within the Car class:
let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print("Car: \(car.description)")
// Car: traveling at 25.0 miles per hour in gear 3


//Preventing Overrides

//You can prevent a method, property, or subscript from being overridden by marking it as final.
//Do this by writing the final modifier before the method, property, or subscript’s introducer keyword (such as final var, final func, final class func, and final subscript).

