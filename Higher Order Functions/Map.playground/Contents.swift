import UIKit

var greeting = "Hello, playground"

//Map - map(), flatMap(), compactMap()
//Mapping is similar to sort in that it iterates through the array that is calling it, but instead of sorting it changes each element of the array based on the closure passed to the method.
//(OR - map will iterate through all elements in an array and will return an updated array.)

var numArray = [8,2,3,7,9,1,5,2,4,6]
//numArray.map(<#T##(Self.Element) -> T#>)
//numArray.flatMap(<#T##(Self.Element) -> SegmentOfResult#>)
//numArray.compactMap(<#T##(Self.Element) -> ElementOfResult?#>)

let stringArray1 = numArray.map { (a) -> String in
    return String(a)
}
print(stringArray1) //["8", "2", "3", "7", "9", "1", "5", "2", "4", "6"] //it changes each element of the array based on the closure passed to the method.

let stringArray2 = numArray.map { String($0) }
print(stringArray2) //["8", "2", "3", "7", "9", "1", "5", "2", "4", "6"]


let nameArray = ["AJUN", "KARAN", "SAGAR", "C SHIVAJI", "B THAKARE"]
let smallCaseNameArray = nameArray.map { (name) -> String in
    
    return name.lowercased() // name.uppercased()
}
print("Lower Case Name Array: \(smallCaseNameArray)") //["ajun", "karan", "sagar", "c shivaji", "b thakare"]
let smallCaseNameArray2 = nameArray.map { $0.uppercased() }
print(smallCaseNameArray2) //["AJUN", "KARAN", "SAGAR", "C SHIVAJI", "B THAKARE"]

let smallCaseNameArray3 = nameArray.map { $0.lowercased() }
print(smallCaseNameArray3) //["ajun", "karan", "sagar", "c shivaji", "b thakare"]
