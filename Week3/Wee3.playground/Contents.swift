import UIKit

if ( 2 > 1 ) {
    print("true")
}

let animal = "Fox"

if (animal == "cat" || animal == "dog") {
    print("house pet")
} else {
    print("not a house pet")
}

switch (animal) {
case "cat", "dog":
    print("house pet")
default:
    print("not a house pet")
}


var hourOfDay = 6
var timeOfDay: String

if (hourOfDay < 6) {
    timeOfDay = "early morning"
} else if (hourOfDay < 12) {
    timeOfDay = "Morning"
} else if (hourOfDay < 17) {
    timeOfDay = "afternoon"
} else {
    timeOfDay = "invalid hour"
}

print(timeOfDay)

switch (hourOfDay) {
case 0...5:
    timeOfDay = "early morning"
case 6...11:
    timeOfDay = "Morning"
default:
    timeOfDay = "invalid hour"
}

var age = 22

if (age > 21) {
    print("can vote")
} else {
    print("cannot vote")
}

var canVote = (age > 21) ? "can vote" : "cannot vote"
print(canVote)

var weekDay = 3

if (weekDay == 1) {
    print("monday")
} else if (weekDay == 2) {
    print("tuesday")
} else if (weekDay == 3) {
    print("wednesday")
} else {
    print("invalid day")
}

switch (weekDay) {
case 1:
    print("monday")
case 2:
    print("tuesday")
case 3:
    print("wednesday")
default:
    print("invalid day")
}

let num = 11

switch (num) {
case let x where x % 2 == 0:
    print("even")
default:
    print("odd")
}

var coordinate: (x: Int, y: Int, z: Int) = (3, 2, 0)

switch (coordinate) {
case (0, 0, 0):
    print("origin")
case (0, _, _):
    print("x axis")
case (_, 0, _):
    print("y axis")
case (_, _, 0):
    print("z axis")
default:
    print("some where on earth")
}

for index in 0..<5 {
    print(index)
}
         
for _ in 0..<5 {
    print("hello")
}

var sum = 0

for _ in 0..<5 {
    sum = sum + 1
}

print(sum)

while (sum < 10) {
//    if (sum == 5) {
//        continue
//    }
    
    sum = sum + 1
    
    if (sum == 8) {
        break
    }
    
}

print(sum)

//var sum1 = 1
//
//repeat {
//    sum1 += 1
//} while sum1 < 100

func printName() {
    print("this is name function")
}

printName()

func printName(name: String) {
    print("my name is \(name)")
}

printName(name: "iOS")

func printAge(outSideName inSideName: Int) {
    print(inSideName)
}

printAge(outSideName: 12)

func printAge1(_ inSideName: Int) {
    print(inSideName)
}

printAge1(12)

func getPerson(name: String, age: Int) -> String {
//    let temp = "my name is \(name), my age is \(age)"
//    return temp
    
    return "my name is \(name), my age is \(age)"
}

var getPersonFunction: (String, Int) -> String = getPerson

let string1 = getPerson(name: "swift", age: 13)
print(string1)

var num2 = 10

func updateValue(num: inout Int) {
    num += 1
}

updateValue(num: &num2)

func add(a: Int, b: Int) -> Int {
    return a + b
}

var addFunction: (Int, Int) -> Int = add

let result1 = addFunction(4, 2)

// parsing a function as a parameter
func printResult(function: (Int, Int) -> Int, a: Int, b: Int) {
    let result = function(a, b)
    print(result)
}

printResult(function: add, a: 4, b: 2)

class PersonClass {
    var name: String
    var age: Int = 21
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    init(name: String) {
        self.name = name
    }
    
    func getPerson() {
        print("my name is \(name), my age is \(age)")
    }
}

extension PersonClass {
    
    func extensionFunction() {
        print("hello from extensionFunction")
    }
}

struct PersonStruc {
    var name: String
    var age: Int
}

var class1 = PersonClass(name: "swift")
class1.name
class1.age
class1.getPerson()
class1.extensionFunction()

var struct1 = PersonStruc(name: "swift struc", age: 22)
struct1.name
struct1.age

var class2 = class1
class2.name = "class 2 name"

class1.name
class1.age

class2.name
class2.age

var stuc2 = struct1
stuc2.name = "stuc 2 name"

struct1.name
struct1.age

stuc2.name
stuc2.age

class Student: PersonClass {
    
}

extension Int {
    
    
}

var optionalValue: Int?
