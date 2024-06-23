import UIKit

//Creating your own structs

struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn tennis"
print(tennis.name)

//What’s the difference between a struct and a tuple?

struct User {
    var name: String
    var age: Int
    var city: String
}

//Computed properties

struct Sport1 {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport1(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

//Property observers

struct Progress1 {
    var task: String
    var amount: Int
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100


struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}


//Methods

struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()


//Mutating methods

//When you want to change a property inside a method, you need to mark it using the mutating keyword, like this:

struct Person {
    var name: String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()

//Properties and methods of strings

let string = "Do or do not , there is no try."

print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())


//Why are strings structs in Swift?

print(string.count)
print(string.hasPrefix("Hello"))
print(string.uppercased())
print(string.sorted())


//Properties and methods of arrays

var toys = ["Woody"]
print(toys.count)
toys.append("Buzz")
print(toys)
toys.firstIndex(of: "Buzz")
print(toys)
print(toys.sorted())
toys.remove(at: 0)
print(toys)


//Why do strings behave differently from arrays in Swift?
var myString = "ds"

if myString.isEmpty {
//    code
}
print(myString)

if myString.count == 0 {
//    code
}
