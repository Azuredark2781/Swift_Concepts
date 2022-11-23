import UIKit

var greeting = "Hello, playground"

//filter - filter will iterate through all elements in an array and will return an updated array only with the elements which satisfied the condition written inside the body of filter.

//filter retuns an array containing, in order, the element of the sequence that satisfy the give predicate

//filter vs compactMap - The compactMap operator accepts a closure just like the filter operator. The difference is that the return value of the closure is T? , a generic, optional type. The compactMap operator defines what type it returns.


let coins = [1, 5, 2, 10, 6, 2, 7, 4, 10, 15]

let coinsWithValueLessThanSix1 = coins.compactMap { coin in
    coin < 6
}
print("Output with compactMap: \(coinsWithValueLessThanSix1)") //[true, true, true, false, false, true, false, true, false, false]

//The problem is that, compactMap will return an array, it wont skip/remove element. so in that case we need to use filter. In filter we add condition inside closure, that will return filtered array


//filter retuns an array containing, in order, the element of the sequence that satisfy the give predicate
let coinsWithValueLessThanSix2 =  coins.filter { coin in
    coin < 6
}
print("Output with filter: \(coinsWithValueLessThanSix2)") //[1, 5, 2, 2, 4]

//OR short synatx
let coinsWithValueLessThanSix3 =  coins.filter { $0 < 6 }
print("short syntax with filter: \(coinsWithValueLessThanSix3)") //it will return an array in order,


//Example 2
let words: [String] = ["room", "home", "train", "green", "heroe"]

let wordsWithOLetter = words.filter { $0.contains("o")}
print("Words with o letter1: \(wordsWithOLetter)") //["room", "home", "heroe"]

let worthWithO = words.filter { $0.contains("o") && $0.count >= 5 }
print("Words with o letter2: \(worthWithO)") //["heroe"]
