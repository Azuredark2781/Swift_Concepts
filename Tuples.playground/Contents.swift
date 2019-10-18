import UIKit

/* Tuples:

  - Tuples group multiple values into a single compound value
  - The value within tuple can be any type and do not have to be of same type as each other
 */

let http404Error = (404, "Not Found")

let (statusCode, statusMessage) = http404Error

//decomosing

print("The status code is: \(statusCode)")  //prints =  404
print("The status Mesage is: \(statusMessage)") // //prints = Not Found

/*
  If you only need some of the tuples values, igore parts of the tuples with an underscore(_), when you decomose the tuple
  
  Example : Below check
 */

  let (justTheStatusCode, _) = http404Error
 print("The status code is: \(justTheStatusCode)") // prints = 400

/*
   Alternatively access the individual element values in a tuple using index numbers starting at zero
 */

print("The status code is: \(http404Error.0)") // prints = 400

/* You can name the individual elements in a tuple when the tuple is defined*/

let htt200Status = (ststusCode: 200, description: "OK")
print("The status code is: \(htt200Status.description)") //prints = PK
