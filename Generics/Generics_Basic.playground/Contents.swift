//https://www.programiz.com/swift-programming/generics


import UIKit

//Swift Generics allows us to create a single function and class (or any other types) that can be used with different data types.
//This helps us to reuse our code.

//A. Swift Generic Function - In Swift, we can create a function that can be used with any type of data. Such a function is known as a Generic Function.

//Here's how we can create a generic function in Swift:

func displayData<T>(data: T){
  //...
}
/*
Here,
  -  We have created a generic function named displayData().
  -   T used inside the angle bracket <> is called the type parameter.
  -  And based on the type of the value passed to the function, the T is replaced by that data type (Int, String, and so on).

Note: We can provide any name to the type parameter: <S>, <Element>, etc. But generally, we use T.
*/

//Generic Function
func displayData2<T>(data: T) { //if you dont write <T> then it will give error like "Cannot find type 'T' in scope". Its required for generics
    print("Passed Value: \(data)")
}

//displayData2(data: 4) //Accepts Int
//displayData2(data: 1.9) //Accepts Double/Float
//displayData2(data: "Test String") //Accepts String

func returnSomeValue(name:String) -> String {
    return name
}

displayData2(data: returnSomeValue(name: "mallikarjun")) //Accepts function as param

//____________________________________________________________________________________

//B. Swift Generic Class

//Similar to the generic function, we can also create a class that can be used with any type of data. Such a class is known as Generic Class.

// create a generic class
class Information<T> {

  // property of T type
  var data: T

  init (data: T) {
    self.data = data
  }

  // method that return T type variable
  func getData() -> T {
    return self.data
  }
}

// initialize generic class with Int data
var intObj = Information<Int>(data: 6)
print("Generic Class returns:", intObj.getData())

// initialize generic class with String data
var strObj = Information<String>(data: "Swift")
print("Generic Class returns:", strObj.getData())


//C Type Constraints in Swift Generics

//In general, the type parameter can accept any data type (Int, String, Double, ...)
//However, if we want to use generics for some specific types (such as accepting data of number types) only, then we can use type constraints.

//Here's how we create type constraints:

func addition<T: Numeric>(num1: T, num2: T) {
   //...
}
//Here, <T: Numeric> adds constraints to the type parameter. It defines that T needs to conform to the Numeric protocol.

//Note: Numeric is the built-in protocol for numeric values like Int and Double.

//create a generic function with type constraint
func addition1<T: Numeric>(num1: T, num2: T) {

  print("Sum:", num1 + num2)
}

//addition1(num1: 4, num2: 2)
//addition1(num1: 4, num2: 2.4)
//addition1(num1: 4, num2: "Arjun") //Cannot convert value of type 'String' to expected argument type 'Int'


func printAndDisplay<T: NSString>(str1: T, str2: T) { // <T: String> - this wont work here //Reason You can't do `Key: String` because `String`, as a struct, cannot have any subtypes. `Key: NSString`, for instance, works.

  print("Received String: \(str1) \(str2)")
}

printAndDisplay(str1: "iOS", str2: "Developer")
