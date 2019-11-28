import UIKit

var names = ["Jemima", "Peter", "David", "Kelly", "Isabella"]
names.sort()

print(names) 
//Output: ["David", "Isabella", "Jemima", "Kelly", "Peter"]

var numbers = [0, 2, 3, 5, 10, 2]
numbers.sort {
  return $0 < $1 //ascending order
}
print(numbers)
//Output: [0, 2, 2, 3, 5, 10]

numbers.sort {
  return $0 > $1 //descending order
}
print(numbers)
//Output: [10, 5, 3, 2, 2, 0]

