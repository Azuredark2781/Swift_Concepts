import UIKit

/*
Control Transfer Statements

Control transfer statements change the order in which your code is executed, by transferring control from one piece of code to another. Swift has five control transfer statements:

1.continue  2. break  3. fallthrough  4. return  5. throw

 */

/* 1.Continue statement: The continue statement tells a loop to stop what it is doing and start again at the beginning of the next iteration through the loop. It says “I am done with the current loop iteration” without leaving the loop altogether.
*/

let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for character in puzzleInput {
    if charactersToRemove.contains(character) {
        continue
    }
    puzzleOutput.append(character)
}
print(puzzleOutput)  // Output: grtmndsthnklk

/* 2.Break statement - In loops and Switch statments
   The break statement ends execution of an entire control flow statement immediately. The break statement can be used inside a switch or loop statement when you want to terminate the execution of the switch or loop statement earlier than would otherwise be the case.
*/

let target = 5
let numberArray = [1,2,3,4,5,6,7,8,9]

//For in loop example
for i in numberArray{
    
    if i == 5{
        break
    }
    
    print(i)
}  // output 1 2 3 4

//Switch statement
switch target {
case 1,3,7,9,14,8:
    print("No Number Found")
case 5:
    print("Number found")  //this case will be executed
case 100:
    print("Number is 100")
default:
    print("I am in default statement")
    
} // Output: Number found

/* 3. Falthrough - The break statement ends execution of an entire control flow statement immediately. The break statement can be used inside a switch or loop statement when you want to terminate the execution of the switch or loop statement earlier than would otherwise be the case.
 
 In Swift, switch statements don’t fall through the bottom of each case and into the next one. That is, the entire switch statement completes its execution as soon as the first matching case is completed. By contrast, C requires you to insert an explicit break statement at the end of every switch case to prevent fallthrough. Avoiding default fallthrough means that Swift switch statements are much more concise and predictable than their counterparts in C, and thus they avoid executing multiple switch cases by mistake.
 */

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
case 90:
    description += " an integer."
default:
    print("I am in default case ")
}
print(description) //Output: The number 5 is a prime number, and also an integer.


