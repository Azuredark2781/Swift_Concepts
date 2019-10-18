import UIKit

/*
   Optionals: You can use optional in situations where a value may be absent
       
             - A Optional represents 2 possibilities:
               1. Either there is a value and you can unwrap optional to access that value
               2. There is not a value
 */


/* Different ways to unwrap the optional */

//1. Force Unwrapping

let email:String? = "mallikarjun.iphone9@gmail.com"

if email != nil{
    print(email!)
}

let email2:String? = nil
print(email2!)  //
