//https://medium.com/globant/generic-type-in-swift-c37c993080e3


import UIKit
import Foundation

func printArray<T>(collection: [T]) { // Array of Collection - It can be array, dictionary,cant pass Set
    for item in collection {
        print(item, terminator: " ")
    }
    print("\n")
}
printArray(collection: [1, 2, 3, 4, 5]) //1 2 3 4 5
printArray(collection: ["one", "two", "three", "four", "Five"]) //one two three four five

printArray(collection: [["one":1,"Two":2]]) // Passing Dictionary

//printArray(collection: [Set(1,2,3)]) - wont work
/*
You can define generic function by providing a type placeholder inside angular brackets <T>.
You can use anything instead of T for example: Type, DataType etc. whatever you want. e.g. func printArray<Type>(collection: [Type])
Have a look at the note given in apple documentation👇
NOTE:
Always give type parameters upper camel case names (such as T and MyTypeParameter) to indicate that they’re a placeholder for a type, not a value.
*/


//You can declare multiple generic types which can be different while calling like the following:

func hashMap<Key, Value>(key: Key, value: Value) -> Dictionary<Key, Value> {
    return [key: value]
}
print(hashMap(key: "1",value: "One"))
// 👉  ["1": "One"]
//key as String, value as String
print(hashMap(key: 1,value: "One"))
// 👉 [1: 1.0]
//key as Int, value as Double
