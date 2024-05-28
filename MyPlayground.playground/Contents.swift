import UIKit


//Variables

var greeting = "Hello, playground"
greeting = "Goodbye"
greeting = "Hello"

var favoriteShow = "Orange is the New Black"
favoriteShow = "The Good Place"
favoriteShow = "Doctor Who"


//Strings and integers

var str = "Hello, playground"
var age = 38
var population = 8_000_000

var meaningOfLife = 42


//Multi-line strings

var str1 = """
This goes
over multiple
lines
"""
var quote = "Change the world by being yourself"
var  burns = """
The best laid schemes
O'mice and men
Gang aft agley
"""

//Doubles and booleans

var pi = 3.141
var awesome = true


var myInt = 1
var myDouble = 1.0


//String interpolation

var score = 85
var str2 = "Your score was \(score)"
var results = "The test results are here: \(str2)"
var city = "Cardiff"
var message = "Welcome to \(city)!"

//Constants

let taylor = "swift"


//Type annotations

let str3 = "Hello, playground"

let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true

var percentage: Double = 99

var name: String


//Arrays

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

beatles[1]

//Sets

let colors = Set(["red", "green", "blue"])

let colors2 = Set(["red", "green", "blue", "red", "blue" ])


// Tuples

var name1 = (first: "Taylor", last: "Swift")
name1.0
name1.first = "Emine"
name1.0

var website = (name1: "Apple", url: "www.apple.com")
website.name1
website.url

var website1 = ["Apple", "www.apple.com"]
website1[0]
website1[1]

var person = (name: "Emine", age: 25, isMarried: false)


//Arrays vs sets vs tuples

//Tuples
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")

//Sets
let set = Set(["aardvark", "astronaut", "azalea"])

//Arrays
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]


//Dictionaries

let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
heights["Taylor Swift"]


//Dictionary default values

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favoriteIceCream["Paul"]
favoriteIceCream["Charlotte"]
favoriteIceCream["Charlotte", default: "Unknown"]

let results1 = [
    "english": 100,
    "french": 85,
    "geography": 75
]
let historyResult = results1["history", default: 0]


//Creating empty collections

var teams = [String: String]()
teams["Paul"] = "Red"

var results2 = [Int]()

var words = Set<String>()
var numbers = Set<Int>()

var scores = Dictionary<String, Int>()
var results3 = Array<Int>()

let names = ["Eleanor", "Chidi", "Tahani", "Jianyu", "Michael", "Janet"]


//Enumerations

let result = "failure"
let result2 = "failed"
let result3 = "fail"


enum Result {
    case success
    case failure
}

let result4 = Result.failure
let result5 = Result.success
 

//Enum associated values

enum Activity {
    case bored
    case running
    case talking
    case singing
}

enum Activity1 {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity1.talking(topic: "football")

enum Weather {
    case sunny
    case windy(speed: Int)
    case rainy(chance: Int, amount: Int)
}


//Enum raw values

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 3)


enum Mood: Int {
    case happy
    case sad
    case grumpy
    case sleepy
    case hungry
}


//Arithmetic operators

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

let remainder = 13 % secondScore


let value: Double = 90000000000000001
let value1: Int = 90000000000000001


//Why does Swift have a dedicated division remainder operator?

let weeks = 465 / 7
print("There are \(weeks) weeks until the event.")
let weeks1: Double = 465 / 7
print("There are \(weeks1) weeks until the event.")

let weeks2 = 465 / 7
let days = 465 % 7
print("There are \(weeks2) weeks and \(days) days until the event.")
let number = 465
let isMultiple = number.isMultiple(of: 7)


//Operator overloading

let meaningOfLife1 = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna"
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles1 = firstHalf + secondHalf

//Compound assignment operators

var score1 = 95
score1 -= 5

var quote1 = "The rain in Spain falls mainly on the "
quote1 += "Spaniards"


//Comparison operators

let firstScore1 = 6
let secondScore1 = 4

firstScore1 == secondScore1
firstScore1 != secondScore1
firstScore1 < secondScore1
firstScore1 >= secondScore1

"Taylor" <= "Swift"

//How does Swift let us compare many types of data?

let firstName = "Paul"
let secondName = "Sophie"

let firstAge = 40
let secondAge = 10

print(firstName == secondName)
print(firstName != secondName)
print(firstName < secondName)
print(firstName >= secondName)

print(firstAge == secondAge)
print(firstAge != secondAge)
print(firstAge < secondAge)
print(firstAge >= secondAge)


enum Sizes: Comparable {
    case small
    case medium
    case large
}

let first = Sizes.small
let second = Sizes.large
print(first < second)


//Conditions

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
    print("Blackjack!")
} else  {
    print("Regular cards")
}

if firstCard + secondCard == 2 {
    print("Aces - lucky!")
}else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}


//What’s the difference between if and else if?

let scorex = 9001

if scorex > 9000 {
    print("It's over 9000!")
}

if scorex > 9000 {
    print("It's over 9000!")
}
if scorex <= 9000 {
    print("It's not over 9000!")
}

if scorex > 9000 {
    print("It's over 9000!")
} else {
    print("It's not over 9000!")
}


if scorex > 9000 {
    print("It's over 9000!")
} else {
    if scorex == 9000 {
        print("It's exactly 9000!")
    } else {
        print("It's not over 9000!")
    }
}

if scorex > 9000 {
    print("It's over 9000!")
} else if scorex == 9000 {
    print("It's exactly 9000!")
} else {
    print("It's not over 9000!")
}


//Combining conditions

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}


if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}


//The ternary operator

let firstCard1 = 11
let secondCard1 = 10
print(firstCard1 == secondCard1 ? "Cards are the same" : "Cards are different")

if firstCard1 == secondCard1 {
    print("Cards are the same")
} else {
    print("Cards are different")
}


//When should you use the ternary operator in Swift?

let isAuthenticated = true
print(isAuthenticated ? "Welcome!" : "Who are you?")

if isAuthenticated {
    print("Welcome")
} else {
    print("Who are you?")
}


//Switch statements

let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy you day!")
}


//Range operators

// 1..<5 (1,2,3,4)
// 1...5  (1,2,3,4,5)

let score2 = 85

switch score2 {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}


//Why does Swift have two range operators?

let names1 = ["Piper", "Alex", "Suzanne", "Gloria"]

print(names1[0])

print(names1[1...3])

print(names1[1...])

