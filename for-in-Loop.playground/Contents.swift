
//For-in Loop syntax

/*for <value> in <range> {
	<some work here>
} */
//Example:

/* for i in 1...100 {
	//outputs Hello world for 100 times in the screen
	print("Hello, World! at Index \(i)")
} */

// This example neglects value and uses half open range operator
/* for _ in 1..<3 {
    //outputs Hello world for 2 times
	print("Hello world!")
}*/

//For-in loop using stride method
let interval = 2
for i in stride(from: 1, to: 10, by: interval) {
	print(i)
}
//Output: 1, 3, 5, 7, 9

//Accessing elements of an array (collection) using for-in loop
let programmingLanguages = ["Swift", "Java", "Go", "JavaScript", "Kotlin", "Python"]
for language in programmingLanguages {
      print(language)
}

//Accessing indices of an array using for-in loop
for (index, language) in programmingLanguages.enumerated() {
      print("\(index):\(language)")
}
//Accessing elements of a string (collection) using for-in loop
for value in "I♥Swift!" {
	print(value)
}

//



