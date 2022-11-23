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



//2. compactMap - compactMap will iterate through all elements in an array and will return an updated array only with the elements which satisfied the condition written inside the body of compactMap
//Any element which resulting in a nil value will be excluded(removed/skipped) from the updated array. //following case "$" - this item is  excluded

let coins = ["1", "5", "$", "10", "6"]
//coins.compactMap(<#T##transform: (String) throws -> ElementOfResult?##(String) throws -> ElementOfResult?#>)
let validCoinsUsingCompactMap = coins.compactMap { coin in
    Int(coin)
}
print("Output 1: \(validCoinsUsingCompactMap)") //[1, 5, 10, 6]

let validCoinsUsingCompactMapSyantax2 =  coins.compactMap { Int($0) }
print("Output 2: \(validCoinsUsingCompactMapSyantax2)") //[1, 5, 10, 6]




//3. flatMap - It allows us to transform a set of arrays into a single set that contains all the elements.
//OR - flatMap converts 2D array to one dimensional array.

let words: [[String]] = [["room", "home"], ["train", "green"], ["heroe"]]

//words.flatMap(<#T##transform: ([String]) throws -> Sequence##([String]) throws -> Sequence#>)
let singleArray1 = words.flatMap {(array) in
    array
}
print("Output1 of flatMap: \(singleArray1)")

//'flatMap' is deprecated: Please use compactMap(_:) for the case where closure returns an optional value

let singleArray2 = words.flatMap { $0 }
print("Output2 of flatMap: \(singleArray2)") //["room", "home", "train", "green", "heroe"]

