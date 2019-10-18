import UIKit

/*  Variables and Constants:
      - Constants and Variables must be declared before they used
      - Constants are declared using let keyword
      - Variables are declaured using var keyword
 */

/* Type Annotations: You can provide a type annotations for a variable or constant, to be
                     clear about that kind of the variable or constant can store.
 
 */

/*
   var name; // Error: ype annotation missing in pattern
   print(name)
 
   var name = nil // 'nil' requires a contextual type
   print(name)
 
 */


// Variables

// Implicit - Implicitly it will take string type
var name = "Mallikarjun"
print(name)

//Explicit - giving variable type
var myName: String = "Mallikarjun Hanagandi"
print(myName)

myName = "Mallikarjun Hanagandi"  // Re-assigning the myName variable
print(myName)

//Ineger
var age = 25
print(age)

//Fload and Double
var cirucumference = 110.8
print(cirucumference)

//Boolean - True or False - Implicitlt
var doorIsClosed:Bool = true
print(doorIsClosed)

//Boolean - True or False - Implicitlt
var doorIsClosedExplicitly = false
print(doorIsClosedExplicitly)




//Constants

let metroBusNUmber = "MF-1"

// metroBusNUmber = "MF-12" //Error:  Cannot assign to value: 'metroBusNUmber' is a 'let' constant

let employeedId = 1217


//String Interpolation

var sentence1 = "This ticket is generated from"
var sentence2 = " ITBK/HO/PC-121 IT-Swoftware Team"

print("\(sentence1)\(sentence2 )")
