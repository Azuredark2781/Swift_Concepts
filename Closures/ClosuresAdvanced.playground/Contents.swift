//https://www.youtube.com/watch?v=ZP4pEHtndFE


import UIKit

print("Hello, playground")


//***************************************
//Part 1 - typealias with closure syntax
//***************************************

typealias AddTwoNumbersClosure = (_ number1:Int, _ number2:Int) -> Int //signature or syntax or ...

//let additionClosure: (_ number1:Int, _ number2:Int) -> Int = {
let additionClosure: AddTwoNumbersClosure = {
    (_ number1:Int, _ number2:Int) -> Int in
    
    return number1 + number2
}
print("Addition Result: \(additionClosure(85,15))")


//*******************************************
//Part 2 - Function call sequence with closures
//*******************************************

//A - With Methods
func printGoodMorningMessage(isMorning:Bool,name:String) {
    
    if isMorning {
        debugPrint("Good morning, \(name)")
    }
}

func assignName(name:String) -> String {
    print("assignName is called")
    return name
}
printGoodMorningMessage(isMorning: true, name: assignName(name: "Mallikarjun1"))
printGoodMorningMessage(isMorning: false, name: assignName(name: "Mallikarjun2"))
// in this case even isMorning is false, it will execute somelines/logic from printGoodMorningMessage method. Assume that it contains heavey operations like API call or other, if isMorning is false unnessesary it will call that lines of code which is useless

//B - With Closures

//func printGoodMorningMessage2(isMorning:Bool,name:() -> String) { //without autoclosure
func printGoodMorningMessage2(isMorning:Bool,name: @autoclosure () -> String) { //witj autoclosure
    
    if isMorning {
        debugPrint("Good morning, \(name())")
    }
}

func assignName2(name:String) -> String {
    print("assignName is called from closure")
    return name
}

//printGoodMorningMessage2(isMorning: false) { () -> String in
  //  assignName2(name: "Mallikarjun with Closure")
//}
/* // in this false case, assignName2 itself not called because closure will be called first and there it will check isMorning is true, if false then assignName2 will not call
 
printGoodMorningMessage2(isMorning: false) { () -> String in
    assignName2(name: "Mallikarjun with Closure")
}
*/


//autoclosure
//- it actually get rid of expression like this (check preveous func call)
  //  () -> String in
   //     assignName2(name: "Mallikarjun with Closure")


printGoodMorningMessage2(isMorning: true, name: assignName2(name: "Arjun"))

//Note - Using autoclosure can make hard to understand. The function and context name should make it clear that evaluates us being deffered
//Try to avoid autoclosure. It is good to see/read, but it impacts the code readibility


//Escaping and Non-escaping Closures

//In Swift, default closure are non-escaping type, because in the case of non-escaping closures swift doent have to allocate any memory and non escaping closure are executed then and there, so due to performance default closures are non-escaping type


//1. Non-escaping Closures - Suppose you have a function, and its is having a paramter with closure type. If this closure is called before end of the function or before return, in that case such closures are called Non-escaping Closures

/* //Example
func printGoodMorningMessage2(isMorning:Bool,name: @autoclosure () -> String) { //with autoclosure
    
    if isMorning {
        debugPrint("Good morning, \(name())") // here closure is being called
    }
}
*/

//2. Escaping Closures - In this case, first function is returned and then closure is called
//@escaping
//Example - here, it wont call closure first, it will memory for your closure, so closure can run later

//This can be used (should be used) only if you are calling API calls or database related activity
func getAPIData<T:Decodable>(requestURL: URL, resultType: T.Type, completionHandler: @escaping(_ result:T?) -> Void ) {
    
    //API call method/logic
    URLSession.shared.dataTask(with: requestURL) {responseData,httpUrlResponse,error in
        
    }
}

//open func datatTask(with url:URL, completionHandler:@escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask
