//https://www.programiz.com/swift-programming/enum


import UIKit
import Foundation
//import Darwin

//In Swift, an enum (short for enumeration) is a user-defined data type that has a fixed set of related values.
//We use the enum keyword to create an enum

enum Departments:CaseIterable { //enum Departments {
    case IT, Environment, Civil, Mechanical, Electronics, Production
}

//Get enum count
//print("Total is: \(Departments.allCases.count)") //It will work when you arite -> enum Departments: CaseIterable {  //  }

//print(Departments.IT)

var selectedDept = Departments.Civil

switch(selectedDept) {
    
case .IT:
    print("Selected Department is IT and its Available")
    
case .Mechanical:
    print("Selected Department is Mechanical and its Available")

case .Civil:
    print("Selected Department is Civil and its Available")
    
default:
    print("Selected Department is not available")
}

//Iterate Over enum Cases - In Swift, we use the CaseIterable protocol to iterate over an enum. For example,

for caseItem in Departments.allCases {
    print("Case: \(caseItem)")
}


//Swift enums with rawValue - In Swift, we can also assign values to each enum case.
//For example,

enum Age : Int {
    case karan = 18
    case arjay = 28
    case suhas = 26
    case roham = 21
}
//Access enum raw values
//Age.arjay.rawValue
print(Age.arjay.rawValue)
//Note: Raw values can be of strings, characters, integers, or floating-point number types.


//Swift enum Associated Values - In Swift, we can also attach additional information to an enum case.

enum Laptop {

  // associate string value
  case name(String)

  // associate integer value
  case price (Int)
}

// pass string value to name
var brand = Laptop.name("Razer")
print(brand)

// pass integer value to price
var offer = Laptop.price(1599)
print(offer)

