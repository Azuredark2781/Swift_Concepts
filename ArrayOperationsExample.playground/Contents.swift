import Foundation

 let numbers = [19, 2, 13, 4, 85, 67, 40]

// Example 1: Getting min and max value - with in-built functions

let minNumber = numbers.min()
print("Min value is:\(minNumber!)")
//OR
let numMin = numbers.reduce(Int.max, { min($0, $1) })
print(numMin)

let maxNumber = numbers.max()
print("Max value is:\(maxNumber!)")
//OR
let numMax = numbers.reduce(Int.min, { max($0, $1) })
print(numMax) 

//Finding min and max value using programatically

    let numberArray2 = [145, 206, 116, 809, 540, 176]
    var i = 0
    var largest = numberArray2[0]
    var small = numberArray2[0]
    while i < numberArray2.count{

        if (numberArray2[i] > largest) {
            largest = numberArray2[i]
        }
        if (numberArray2[i] < small) {
            small = numberArray2[i]
        }
        i = i + 1
         
    } 
    print("Maximum Number ====================\(largest)")// 809
    print("Minimum Number ====================\(small)")// 116 


 
