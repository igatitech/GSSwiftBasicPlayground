# GSSwiftBasicPlayground

**Swift tour Examples**

Swift is the recommended programming language for writing iOS apps. The Swift language is more stable and mature.

## Let's execute Swift tour in Playground.
- Xcode has a built-in feature called Playground.
- It's an interactive development environment for developers to experiment Swift programming and allows you to see the result of your code immediately.

## How to work with Playground?

- To begin with, open the Xcode app: Click on the "Get started with a playground"

![alt text](https://github.com/igatitech/GSSwiftBasicPlayground/blob/master/Resources/WelcomeToXcode.png)

<br/>

- You'll then be prompted to select a template for your playground. Choose Blank under the iOS section to create a blank file. Click Next to continue.

![alt text](https://github.com/igatitech/GSSwiftBasicPlayground/blob/master/Resources/Template.png)

<br/>

- Once you confirm to save the file, Xcode opens the Playground interface. Your screen should like this:

![alt text](https://github.com/igatitech/GSSwiftBasicPlayground/blob/master/Resources/Playground.png)

<br/>

- On the left hand side, it is showing the editor area. When you want to check the outcome of your code, hit the play button as shown in the above picture. 

-  Playground immediately interprets the code (up to the line of the Play button) and displays the result on the right pane.

## Key Features:
**1. Constants & Variables**
```swift
//Use let to make a constant. Once it is assigned, the value can't be changed.
let myConstant = 10
print(myConstant)

//The value of a constant doesn’t need to be known at compile time, but you must assign it a value exactly once
let myInt : Int
myInt = 20
print(myInt)

// When you provide a value while creating constant or variable lets the compiler know it's type. In the example below, the compiler detects that strPlayground is a String type variable because it's initial value is a String.
var strPlayground = "Hello, playground"
print(strPlayground)
strPlayground = "Variable can be changed as, Hello World!"
print(strPlayground)

//If the initial value does not provide enough information such as in below example, myValue is given the value 40. Compiler will detect this value as Int. But if you want myValue to be a Double value then you need to explicitly define it. Specify the type by writing it after the variable, separated by a colon.
var myValue : Double = 40
print(myValue)
myValue = 30.45
print(myValue)

//Values are never implicitly converted to another type. You need to convert it explicitly.
let str = "My weight is "
let weight = 50
//If we remove String conversion from the below line, we will get error = "Binary operator '+' cannot be applied to operands of type 'String' and 'Int'"
let strWeight = str + String(weight)
print(strWeight)

//There’s an another way of writing strings: Write the value in parentheses, and write a backslash (\) before the parentheses.
let shoes = 5
let sandals = 10
let totalShoes = "I have \(shoes) shoes."
let footwear = "I have total \(shoes + sandals) footwear"
print(footwear)
```

**2. Multiline String**
```swift
//Use three double quotation marks (""") for strings that take up multiple lines.
let multiLineStr = """
I have \(shoes) shoes.
I have total \(shoes + sandals) footwear
"""
print("Print multiline String : \(multiLineStr)")
```

**3. Array & Dictionary**
```swift
//Create Array using brackets([])
var arrFruits = ["apple", "orange"]
//Access elements of array using index
print("Fruit at index 0 : \(arrFruits[0])")
//Modify a particular value by mentioning the specific index
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
//Access elements of dictionary using key
print("Print value of Gati key from dictUser : \(dictUsers["Gati"] ?? "")")
//Add new key-value in dictionary
dictUsers["Ashwini"] = ".Net Developer"
print("Print dictUser : \(dictUsers)")

//Create Empty Dictionary
let dictEmpty = [String : Any]()
```

**4. Optional Value**
```swift
//Declare optional value using question mark(?) at the end of the type of a value to mark the value as optional. Question mark in the declaration indicated that an optional value either contains a value or contains nil(value is missing).
var strOptional : String? = "This is Optional String!"
print(strOptional == nil) //It will print false, indicates that strOptional is not equals to nil.

//You can use if let statement while using an optional value. If let statement unwrapped the optional value and assign it to the constant after let and if the value is nil, the if condition is false and the code in the if braces will be skipped. It reduces unwanted crashes in the application which occurs due to nil value of any variable.
if let strTmp = strOptional {
    print("Hello, \(strTmp)")
}

//Another way to handle optional values is to provide a default value using the ?? operator. If the optional value is missing, the default value is used instead
let strFirstName : String? = nil
let strFullName = "Shrikant Sharma"
let strGreeting = "Hello \(strFirstName ?? strFullName)"
```

**5. Switches**
```swift
//Switches are no more limited to integeers and tests for equality only. Now they support any kind of data and a wide variety of comarision operations.
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

//Now there is no need to mention break statement explicitly. Once the switch case executes by maching condition, the execution exits and it will not go further to check other test cases.
```

**6. Control Flow**
```swift
//for-in loop is used to iterate through items in an Array
let arrMarks = [50, 45, 70, 90, 100]
var totalMarks = 0
for mark in arrMarks {
    totalMarks = totalMarks + mark
}
print("Print total Marks : \(totalMarks)")

//for-in loop is used to iterate through items in a Dictionary
let dictValues = [
    "firstSet" : [5,23,7,21,12,9],
    "secondSet" : [100,200,321,226,525,156]
]
var largestNum = 0
for (key, values) in dictValues {
    print(key)
    for number in values {
        if number > largestNum {
            largestNum = number
        }
    }
}
print("Largets Number is : \(largestNum)")

//You can define range of indexes in a loop
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

//Use while to repeat a block of code until a condition is true.
var n = 2
while n < 10 {
    n = n*2
    print("Print value of n : \(n)")
}

//repeat while is similar to do while loop. Here, condition of a loop will be at the end instead at the begining to make sure that the loop will be executed at least once.
var m = 2
repeat {
    m *= 2
    print("Print value of m : \(m)")
} while m < 20
```

**7. Functionas and Closures**
```swift
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
```

**8. Tuples**
```swift
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
```

**9. Higher Order Functions**
```swift
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
```

**10. Objects & Classes**
```swift
//Use class followed by the class's name to crate a class.
class Students {
    var totalStudent = 3000
    func describeAllStudents() -> String {
        return "Total number of students in the class is : \(totalStudent)"
    }
}

//Create an instance of a class by putting parentheses after the class name. Use dot syntax to access the properties and methods of the instance.
var student = Students()
student.totalStudent = 3200
var strDescription = student.describeAllStudents()
print("Print Student Class Description : \(strDescription)")

//Add an initializer to set up the class when an instance is created. Use init to create one.
class Vehicle {
    var numOfDoors = 4
    var name : String
    
    init(name : String) {
        self.name = name
    }
    func describeVehicle() -> String {
        return "The vehicle has total \(numOfDoors) doors"
    }
}
let veh = Vehicle(name: "Gati")
let descVeh = veh.describeVehicle()
print("Vehicle Description : \(descVeh)")

//Inheritance : Subclass inherits it's superclass by mentioning class name separated by colon.
class Bike : Vehicle {
    var seatLength : Double
    init(seatLength : Double, name : String) {
        self.seatLength = seatLength
        super.init(name: name)
    }
    
    func square() -> Double{
        return seatLength * seatLength
    }
    
    override func describeVehicle() -> String {
        return "A bike has \(seatLength) seat length"
    }
}
let check = Bike(seatLength: 11.0, name: "Shrikant")
let valueSquare = check.square()
print("Value of square is : \(valueSquare)")
let strBike = check.describeVehicle()
print("Bike description : \(strBike)")

//Properties can have getter and setter
class Scooty : Vehicle {
    var seatLength : Double = 0.0
    init(seatLength : Double, name : String) {
        self.seatLength = seatLength
        super.init(name: "Shrikant")
    }
    
    var totalLength : Double {
        get {
            return seatLength * 3
        } set {
            seatLength = newValue / 3.0
        }
    }
}
var objScooty = Scooty(seatLength: 3.3, name: "Gati")
print("Get value of total length : \(objScooty.totalLength)")
objScooty.totalLength = 9.0
print("Set the value of seat length : \(objScooty.seatLength)")
```

**11. Enumerations & Structures**
```swift
//User enum to create enumerations, enumerations can have methods associated with them
//By default, Swift assigns the raw values starting at zero and incrementing by one each time, but you can change this behavior by explicitly specifying values. In the example below, Monday is explicitly given a raw value of 1, and the rest of the raw values are assigned in order.
enum Days: Int {
    case Monday = 1
    case Tuesday, Wednesday, Thursday
    case Friday, Saturday, Sunday
    
    func simpleDescription() -> String {
        switch self {
        case .Monday:
            return "Monday"
        case .Tuesday:
            return "Tuesday"
        case .Wednesday:
            return "Wednesday"
        case .Thursday:
            return "Thursday"
        case .Friday:
            return "Friday"
        case .Saturday:
            return "Saturday"
        default:
            return String(self.rawValue)
        }
    }
}
let mon = Days.Monday
print("mon : \(mon)")
let monRawValue = mon.rawValue
print("Row value of mon : \(monRawValue)")

//Use struct to create structure. Structures support many of the same behaviors as classes, including methods and initializers.
//One of the most important differences between structures and classes is that structures are value type and always copied when they are passed around in your code, but classes are reference type.
struct Week {
    var day : Days
    func weekDayDescription() -> String {
        return "The day is \(day.simpleDescription())"
    }
}

let week = Week(day: .Thursday)
print("Week day description : \(week.weekDayDescription())")
```

**12. Error Handling**
```swift
//Use throw to throw an error and throws to mark a function that can throw an error.
enum errorType : Error {
    case notFound
    case somethingWentWrong
}

func sendMessage(name : String, message : String) throws -> String {
    if name == "Not Found" {
        throw errorType.notFound
    }
    return "Shrikant Hello"
}

//There are several ways to handle errors.
//One way is to use do-catch.
//Inside do block, you mark the code that can throw an error by writing try in front of it following by a catch block.
do {
    let printResponse = try sendMessage(name: "Shrikant Sharma", message: "Hiii")
    print("Print Response : \(printResponse)")
} catch {
    print(error)
}

//You can provide multiple catch blocks that handle specific errors.
do {
    let strResponse = try sendMessage(name: "Gati Shah", message:
    "Helloooo")
    print("strResponse : \(strResponse)")
} catch errorType.notFound {
    print("Not found error")
} catch errorType.somethingWentWrong {
    print("Something went wrong!")
} catch {
    print(error)
}

//Another way to handle error is to use try? to convert the result to an optional. If the function throws an error, the specific error is discarded and result is nil
let printSuccess = try? sendMessage(name: "Arav", message: "Let's go")
let printFailure = try? sendMessage(name: "Not Found", message: "Failure")
print("Success :\(printSuccess ?? "")")
print("Failure :\(printFailure ?? "")")
```

**13. Use of Defer**
```swift
//Use defer to write a block of code that is executed after all other code in the function, just before the function returns.
var isStudentPresent = false
let students = ["Arav", "Rahul", "Pihu", "Anaya"]

func studentContains(student : String) -> Bool {
    isStudentPresent = true
    defer {
        isStudentPresent = false
    }
    print("Inside func isStudentPresent : \(isStudentPresent)")
    let result = students.contains(student)
    return result
}
print("Is student contains : \(studentContains(student: "Pihu"))")
print("Is student present : \(isStudentPresent)")
```

**14. Generics**
```swift
//Write a name inside angle brackets to make a generic function or type.
func makeArray<Item>(repeating item : Item, numberOfTimes : Int) -> [Item] {
    var result = [Item]()
    for _ in 0..<numberOfTimes {
        result.append(item)
    }
    return result
}
let arrMake = makeArray(repeating: "Hello", numberOfTimes: 5)
print("Generic Array Data : \(arrMake)")
```

## How to run the project?
- Download or Clone the project
- Open .playground file from your project folder.
- Run the project from Xcode as explained above.

## Ackowledgement
- In this project I have written some code in Playground which is mentioned on Apple's Swift Tour Guidlines.
- Please remember, the purpose of this exercise is to let you experience Swift Programming and learn it's basic.
- This project will not cover every features of Swift but it will clear some of the basic fundamentals of Swift Programming Language.

**Happy Coding! Cheers!!** 🥂 

## How to Contribute?

Have an idea? Found a bug? See [how to contribute](https://github.com/igatitech/GSSwiftBasicPlayground/blob/master/CONTRIBUTION.md). Every small or large contribution to this project is appreciated.

## Author
You can find more about me here : [Gati Shah](https://igati.tech)

If you wish to contact me, 
Email at: [connect@igati.tech](connect@igati.tech)

Reach me on: [LinkedIn](https://www.linkedin.com/in/igatitech/)

## License
Copyright 2020 iGatiTech

This project is distributed under the terms & conditions of [MIT License](https://github.com/igatitech/GSSwiftBasicPlayground/blob/master/LICENSE).

