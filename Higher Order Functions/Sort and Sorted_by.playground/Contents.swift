import UIKit

var greeting = "Hello, playground"

var numArray = [7,3,9,1,6,2,5,4,8]

// sort() function returns nothing and changes the original sequence (OR - will sort all elements according to the condition written inside the body of the closure.)
// sorted() function creates a new sequence type containing a sorted version of the given sequence. (OR - will sort all elements according to the condition written inside the body of the closure and returns a new array.)
//sort() is faster than sorted()

print(numArray.sort()) //If you try to print this, it will print as (), because function returns nothing and changes the original sequence
print(numArray) // this will print - [1, 2, 3, 4, 5, 6, 7, 8, 9]

numArray.sort { (a,b) -> Bool in
    return a > b
}
numArray.sort { $0 > $1 } //this one and preveous one same only,

//__________________________________________________________________________________

//Sorted and sorted by
var numArray2 = [7,3,9,1,6,2,5,4,8]

print(numArray.sorted()) // this will print -  [1, 2, 3, 4, 5, 6, 7, 8, 9]
//numArray.sorted(by: <#T##(Int, Int) throws -> Bool#>)
//Note - Notice that the argument is a closure. Within this closure we can define exactly how we want to sort our array of numbers. note: Swift is able to infer that numbers is an array of Ints and can show us that the function we need to pass as an argument should be of type (Int, Int) -> Bool. If we were sorting an array of strings the argument would be of type (String, String) -> Bool.

let output0 = numArray2.sorted { (a,b) -> Bool in
    a > b
}
print("Output 0: \(output0)")

let output1 = numArray2.sorted { (a,b) in
    a > b //descending order
}
print("Output 1: \(output1)") //prints - [9, 8, 7, 6, 5, 4, 3, 2, 1]

let output2 = numArray2.sorted { $0 > $1 }
print("Output 2: \(output2)") //[9, 8, 7, 6, 5, 4, 3, 2, 1]

let output3 = numArray2.sorted(by: >)
print("Output 3: \(output3)") //[9, 8, 7, 6, 5, 4, 3, 2, 1]


//Lets try sorting the array by separating even and odd numbers.

let output5 = numArray2.sorted { (a,b) -> Bool in
    return a % 2 == 0
}
print("Output 5: \(output5)") // [8, 4, 2, 6, 7, 3, 9, 1, 5]
//In this case all of the even numbers come before the odd numbers in the array after it has been sorted.
