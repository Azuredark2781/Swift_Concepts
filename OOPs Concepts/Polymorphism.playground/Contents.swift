import UIKit

var greeting = "Hello, playground"

//Lets create base class, called Shape with an area property and function to calculate the area of our shape.
class Shape {
    var area:Double?
    
    //Following method is for - Runtime Polymorphism / Method Overriding
    func calculateArea(valueA:Double, valueB:Double) -> Double{
        print("I am in base class")
        return area ?? 0.0
    }
    
    //Following 2 methods are for - Compile Time Polymorphism / Method Overloading
    func addNumbers(valueA:Int, valueB:Int) -> Int{
        return valueA + valueB
    }
    func addNumbers(valueA:Int, valueB:Int, valueC:Int) -> Int{
        return valueA + valueB + valueC
    }
}
//Our base class Shape contains everything we need — a variable to store the area and a function to calculate an area with two input values.

//Let’s create a child class to inherit from our Shape class. What we need to do to demonstrate polymorphism is to obey the “contract” set in Shape, which is to have a calculateArea function.

class Triangle: Shape {
    
    //this is the method overriding
    override func calculateArea(valueA: Double, valueB: Double) -> Double{
        print("I am in child class")
        area = (valueA * valueB) / 2
        return area ?? 0.0
    }
}
//We now have created a subclass called Triangle and have overridden the function to calculate the area.  - We’re calling the same function, but the code inside is relevant to a triangle only.
//This is polymorphism in action.
//The class Shape has a contract that all subclasses must follow which is to use the function calculateArea(valueA:valueB:).  We used it and wrote custom code inside to calculate a triangle’s area.


class Rectangle: Shape {
    
    //this is the method overriding
    override func calculateArea(valueA: Double, valueB: Double) -> Double{
        print("I am in child class")
        area = valueA * valueB
        return area ?? 0.0
    }
}

let triangleObj = Triangle()
let value = triangleObj.calculateArea(valueA: 5, valueB: 5)
print("Triangle Area: \(value)")


//Conclusion - Now we have two separate classes implementing the same exact function, but the logic inside is different — this is polymorphism. One object (Shape) taking different forms (Triangle & Rectangle). We are obeying the contract set by Shape by implementing calculateArea(valueA:valueB:) but in different ways.



//Test check to  Compile Time Polymorphism / Method Overloading
triangleObj.addNumbers(valueA: 1, valueB: 2)
triangleObj.addNumbers(valueA: 1, valueB: 2, valueC: 3)
