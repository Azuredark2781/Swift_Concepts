import Foundation

//Reversing string with default function
var name = "Mallikarjun"
name = String(name.reversed())
print(name)

//Programatically reversing string

var firstName = "Mallikarjun"

func reverse(_ s: String) -> String {
 var str = ""
 //.characters gives the character view of the string passed. You can think of it as array of characters.
 for character in s {
    str = "\(character)" + str
    //This will help you understand the logic. 
    //!+""
    //p+!
    //l+p! ... goes this way
    //print ( str)
 }
 return str
}

let reversedSrting = reverse("!pleH")
print(reversedSrting)

//String reverse using higher order function

extension String {
func reverse() -> String  { return self.reduce("") { "\($1)" + $0 } }
}

//Another approach to reverse string

var string = "My,playground and my Swift" 
var reverseString = ""  
for str in string { 
    reverseString.insert(str, at: reverseString.startIndex) 
}  
print(reverseString)

//Another approach'

var strnew = "hello world new" 

var reverseStr = ""

for each in strnew
{
    reverseStr = String(each) + reverseStr
}

print(reverseStr)
