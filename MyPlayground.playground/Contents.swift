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




