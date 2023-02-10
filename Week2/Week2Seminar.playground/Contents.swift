import Foundation

let number = 0
//number = 0

let pi: Double = 3.1415926535

var variableNumber = 42
//variableNumber = "hello"
variableNumber = 24

variableNumber = 1_000_000
print(variableNumber)

var integer: Int = 100
var decimal: Double = 12.5

decimal = Double(integer)

integer = Int(decimal)
print(integer)


let coordinate: (Double, Double) = (1, 2)
coordinate.0
coordinate.1

let coordinate1: (x: Double, y: Double) = (x: 10, y: 20)
coordinate1.x
coordinate1.y

let coordinate2: (x: Double, y: Double)
coordinate2.x = 15
coordinate2.y = 25

let circle: (x: Int, y: Int, radius: Int)
circle.x = 11
circle.y = 22
circle.radius = 33

let coordinate3D: (x: Int, y: Int, z: Int) = (2, 3, 1)
print(coordinate3D.x)
print(coordinate3D.y)
print(coordinate3D.z)

let x = coordinate3D.x
let y = coordinate3D.y
let z = coordinate3D.z

let (x1, y1, z1) = coordinate3D
x1
y1
z1

let (x2, y2, _) = coordinate3D
x2
y2

let date : (month:Int, day:Int,year:Int,avgTemp:Double) = (2,4,2005,34.5)

let (_,day,_,avgTemp) = date

print("the day is : \(day) ,the avg temp is : \(avgTemp)")

let name = "name"

let tuple: (Int, Int) = (2, 3)

let (a,b)=tuple

let tuple2 = (1, 2, 3)

let tuple3 = tuple2.0

let add = 2 + 3
let substract = 10 - 2
let multiply = 10 * 2
let divide = 10 / 2
let modulo = 28 % 10

let xx = 11.6
let r = xx.truncatingRemainder(dividingBy: 1.2)

let shiftLeft = 1 << 3
let shiftRight = 32 >> 2

var counter = 10
counter += 1
counter -= 1

let hourlyRate = 19.5
let hoursWorked = 10

let total = Double(hoursWorked) * hourlyRate

var boolTrue: Bool = true
var boolFalse = false

//boolTrue = 25

var flagRaised: Bool = false
var isOver65 = true
var stillWorking = true

var hasDisposableIncome = (isOver65 && stillWorking)

var mightHaveDisposableIncome = (!isOver65 || stillWorking)

let numbers1 = 1...9
let numbers2 = 1..<9

let containsFive = numbers1.contains(10)

let a1 = 100
let b1 = 101

let (a2, b2) = (100, 101)
let aFirst = a2 < b2
aFirst

1 == 2
1 < 2
1 != 2
1 > 2
1 <= 2
1 >= 2

let character: Character = "a"

let characterList: String = "abcdaasdasd"

var message = "hello" + " my name is "
let name1 = "phil"

message += name1

let characterMark = "!"

message += characterMark

let name2 = "Poul"
let age = 12
let message2 = "hello, my name is \(name2), and my age is \(age)"

let guess1 = "a" == "b"
"a" < "b"
"a" > "b"
"a" >= "b"
"a" != "b"

let stringModule = "Mobile Native Application Dev"
stringModule.uppercased()
stringModule.lowercased()

let mul = """
adhkahsdu
asdjakjs
asdjba
"""

print(mul)
