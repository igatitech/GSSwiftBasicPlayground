import UIKit



//MARK:- Print Statement

//Print Hello World!!
print("Hello World!!")

//MARK:- Constant & Variable
//Use let to make a constant
let myConstant = 10
print(myConstant)

//The value of a constant doesn’t need to be known at compile time, but you must assign it a value exactly once
let myInt : Int
myInt = 20
print(myInt)

//Providing a value when you create a constant or variable lets the compiler infer its type. In the example below, the compiler infers that strPlayground is a String because its initial value is a String.
var strPlayground = "Hello, playground"
print(strPlayground)
strPlayground = "Variable can be changed as, Hello World!"
print(strPlayground)

//If the initial value does not provide enough information(or if there is no initial value), specify the type by writing it after the variable, separated by a colon
var myValue : Double = 40
print(myValue)
myValue = 30.45
print(myValue)

//Values are never implicitly converted to another type. If you need to convert a value to a different type, explicitly make an instance of the desired type.
let str = "My weight is "
let weight = 50
//If we remove String conversion from the below line, we will get error = "Binary operator '+' cannot be applied to operands of type 'String' and 'Int'"
let strWeight = str + String(weight)
print(strWeight)

//There’s an even simpler way to include values in strings: Write the value in parentheses, and write a backslash (\) before the parentheses.
let shoes = 5
let sandals = 10
let totalShoes = "I have \(shoes) shoes."
let footwear = "I have total \(shoes + sandals) footwear"
print(footwear)



//MARK:- Multiline String

//Use three double quotation marks (""") for strings that take up multiple lines.
let multiLineStr = """
I have \(shoes) shoes.
I have total \(shoes + sandals) footwear
"""
print("Print multiline String : \(multiLineStr)")



//MARK:- Array & Dictionary

//Create Array using brackets([])
var arrFruits = ["apple", "orange"]
//Access their elements using index
print("Fruit at index 0 : \(arrFruits[0])")
//Modify value at specific index
arrFruits[1] = "Banana"
print("Print array of fruits : \(arrFruits)")

//Array automatically grows as you add elements
arrFruits.append("Mango")
print("Print array of fruits after appending a value : \(arrFruits)")

//Create Empty array
let arrEmptyString = [String]()

//Create Dictionary using brackets([])
var dictUsers = [
    "Gati" : "iOS Developer",
    "Shrikant" : "CRM Developer"
]
//Access their elements using key
print("Print value of Gati key from dictUser : \(dictUsers["Gati"] ?? "")")
//Add new key-value in dictionary
dictUsers["Ashwini"] = ".Net Developer"
print("Print dictUser : \(dictUsers)")

//Create Empty Dictionary
let dictEmpty = [String : Any]()



//MARK:- Optional Value
//An optional value either contains a value or contains nil to indicate that a value is missing. Write a question mark (?) after the type of a value to mark the value as optional.
var strOptional : String? = "This is Optional String!"
print(strOptional == nil) //It will print false, indicates that strOptional is not equals to nil.

//You can use if and let together to work with values that might be missing. These values are represented as optionals. If the optional value is nil, the conditional is false and the code in braces is skipped. Otherwise, the optional value is unwrapped and assigned to the constant after let, which makes the unwrapped value available inside the block of code.
if let strTmp = strOptional {
    print("Hello, \(strTmp)")
}

//Another way to handle optional values is to provide a default value using the ?? operator. If the optional value is missing, the default value is used instead
let strFirstName : String? = nil
let strFullName = "Shrikant Sharma"
let strGreeting = "Hello \(strFirstName ?? strFullName)"



//MARK:- Switches
//Switches support any kind of data and a wide variety of comparison operations—they aren’t limited to integers and tests for equality


let strPersonName = "Shrikant Sharma"
switch strPersonName {
case "Gati":
    print("Person's name is Gati")
case "Shah":
    print("Person's name is Shah")
case let x where x.hasSuffix("Sharma"):
    print("Yeahh!! The full name is Shrikant Sharma")
default:
    print("This is the default case, If any of the above case will not be executed, then this statement will be print")
}

//After executing the code inside the switch case that matched, the program exits from the switch statement. Execution doesn’t continue to the next case, so there is no need to explicitly break out of the switch at the end of each case’s code.



//MARK:- Control Flow

//for-in loop to iterate over items in an Array
let arrMarks = [50, 45, 70, 90, 100]
var totalMarks = 0
for mark in arrMarks {
    totalMarks = totalMarks + mark
}
print("Print total Marks : \(totalMarks)")

//for-in loop to iterate over items in a Dictionary
let dictValues = [
    "firstSet" : [5,23,7,21,12,9],
    "secondSet" : [100,200,321,226,525,156]
]
var largestNum = 0
for (key, values) in dictValues {
    for number in values {
        if number > largestNum {
            largestNum = number
        }
    }
}
print("Largets Number is : \(largestNum)")

//You can keep an index in a loop by using ..< to make a range of indexes
var total = 0
for i in 0..<10 {
    total = total + i
}
print("Print total : \(total)")

//Use ..< to make a range that omits its upper value, and use ... to make a range that includes both values.
var grandTotal = 0
for i in 0...10 {
    grandTotal = grandTotal + i
}
print("Print grandTotal : \(grandTotal)")

//Use while to repeat a block of code until a condition changes.
var n = 2
while n < 10 {
    n = n*2
    print("Print value of n : \(n)")
}

//The condition of a loop can be at the end instead, ensuring that the loop is run at least once.
var m = 2
repeat {
    m *= 2
    print("Print value of m : \(m)")
} while m < 20



//MARK:- Functions and Closures

//Use func to declare a function. Call a function by following its name with a list of arguments in parentheses.
func greetPerson(message : String, name : String) -> String {
    return "\(message) \(name)"
}

print(greetPerson(message: "Hellooooo", name: "Bob"))

//Another way of writing method
func greeting(_ name : String, on day : String) -> String {
    return "See you \(name) \(day)"
}

print(greeting("Mr. Smith", on: "Monday"))

//Functions can be nested
func returnValue() -> Int {
    var y = 5
    func add() {
        y += 10
    }
    add()
    return y
}
print("Print value of y : \(returnValue())")


//MARK:- Tuples

//Use Tuples to make a compound value.
//Here we are using tuple to return multiple values from function
func calculateMinMaxSum(arrNum : [Int]) -> (min : Int, max : Int, sum : Int) {
    var min = 0, max = 0, sum = 0
    for num in arrNum {
        if num > max {
            max = num
        }
        if num < min {
            min = num
        }
        sum = sum + num
    }
    return (min, max, sum)
}

let tupleValue = calculateMinMaxSum(arrNum: [11, 44, 22, 33, 77, 99, 88])
print("Print sum from tuple : \(tupleValue.sum)")
print("Print max value from tuple : \(tupleValue.1)") //We can access tuple value using index number
print("Print min value from tuple : \(tupleValue.min)")
print("Print tupleValue : \(tupleValue)")



//MARK:- Higher Order Functions

//Map
var numValues = [1,5,3,8,4,7,9]
//map is used to modify each value in the array
let mappedValues = numValues.map({num in
    3 * num
})
print(mappedValues)

//Sorted
let sortedArray = numValues.sorted {$0 > $1}
print(sortedArray)


