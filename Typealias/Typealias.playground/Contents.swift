//https://www.programiz.com/swift-programming/typealias

import UIKit

/* Swift Typealias

- A type alias allows you to provide a new name for an existing data type into your program. After a type alias is declared, the aliased name can be used instead of the existing type throughout the program.
- Type alias do not create new types. They simply provide a new name to an existing type.
- The main purpose of typealias is to make our code more readable, and clearer in context for human understanding.
 */


/*
//How to create a typealias - It is declared using the keyword typealias as:

typealias name = existing type
 
In Swift, you can use typealias for most types. They can be either:

  1.Built-in types (for.eg: String, Int)
  2.User-defined types (for.e.g: class, struct, enum)
  3.Complex types (for e.g: closures)
*/


let name:String = "Mallikarjun"
print(name)

// A. Typealias for built-in types
typealias nameType = String

let firstName:nameType = "Arjun"
let lastName:nameType = "H"
print("Full Name: \(firstName) \(lastName)")

//B. Typealias for user defined types
class Student {

}

var students:Array<Student> = [] // without Typealias

typealias Students = Array<Student>
var students2:Students = [] // withTypealias


// C. Typealias for complex types


func someMethod(oncomp:(Int)->(String)){ // without Typealias

}

typealias CompletionHandler = (Int)->(String) //defining expression

func someMethod2(oncomp:CompletionHandler){ // with Typealias

}
