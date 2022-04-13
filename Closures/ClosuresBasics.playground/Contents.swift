//Reference - https://medium.com/@anuj.rai2489/closure-vs-function-vs-protocol-in-swift-94d0ecd03406


/*
What is Closure
Closure is self-contained blocks of functionality, that can be passed around and used in our code. This is similar to blocks in Objective-C and C.
Closures can capture and store references to any constants or variables from the context in which they are defined. We can say that closure is also a type of function.
Like functions, closures can accept parameters and return values.
We can also pass closure as a parameter to a function

Difference between Function and Closure
  1.Function is declared using func keyword whereas Closure doesn’t have func keyword.
  2.Function has always name but Closure doesn’t have.
  3.Function doesn’t have in keyword but closure has in the keyword.

*/


import UIKit

print("Hello, playground")

/*
// Closure Syantax
 
  { (parameters) -> retun type in
    //body //logic code
  }
*/
//***************************************
//1 Simple Closure
//***************************************
//1.1 A
let simpleClosure1 = {
    print("Simple Closure 1.1 A")
}
//In the above program, you have defined a closure simpleClosure. The type of the simpleClosure is inferred to be of () -> () because it doesn't accept parameter and does not return a value.It will only print

//1.1 B
let simpleClosure2 = { () -> () in
    print("Simple Closure 1.1 B")
}
simpleClosure1()
simpleClosure2()
//Note: these 2 example are same only - will give same result


//***************************************
//2 Closure which accepts a parameter
//***************************************

let simpleClosureWithParams:(String) -> () = { name in
    print(name)
}
//In the above program, the type of closure (String) -> () states that the closure takes an input of type String but does not return value.
simpleClosureWithParams("Mallikarjun")

//***************************************
//3 Closure which accepts a parameter and retuns the value
//***************************************

let simpleClosureWithParamsWithReturnValue:(Int, Int) -> Int = { number1, number2 in

    return number1 + number2
}
print(simpleClosureWithParamsWithReturnValue(6, 4))
/* //same closure with Functions
func sampleAddition(number1:Int, number2:Int) -> Int {
    return number1 + number2
}
print(sampleAddition(number1: 4, number2: 4))
*/

//Another example of adding all the elements of an array and return added numbers using a closure
let simpleClosureWithParamsWithReturnValue2 = {
    (additionFromArray:[Int]) -> Int in
    
    var result = 0
    for val in additionFromArray {
        result = result + val
    }
    return result
}

print(simpleClosureWithParamsWithReturnValue2([1,2,3,4]))

//OR
let abc:([Int]) -> Int = { someArray in
    
    var result = 0
    for num in someArray {
        result = result + num
    }
    return result
}

print(abc([10,20,30]))
print("Addition from Array ended")


//***************************************
//4 Passing closure inside a function like completion handler
//***************************************


func functionPassingClosureWithCompletionhandler(numbers:[Int], completionHandler:(_ additionOfNumberUsingClosure: Int) -> Void) {
    
    var result = 0
    for num in numbers {
        result = result + num
    }
    completionHandler(result)
}

functionPassingClosureWithCompletionhandler(numbers: [1,23,9]) { additionOfNumberUsingClosure in
    print(additionOfNumberUsingClosure)
}

