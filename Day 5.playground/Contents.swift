import UIKit

//Writing functions

func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    
    print(message)
}

printHelp()

//Accepting parameters

func square(number: Int) {
    print(number * number)
}

square(number: 8)

//Returning values

func square1(number: Int) -> Int {
    return number * number
}
let result = square1(number: 8)
print(result)

//When is the return keyword not needed in a Swift function?

5 + 8

print("Emine")

let isAdmin = true
let isOwner = false
let isEditingEnabled = false

isOwner == true && isEditingEnabled || isAdmin == true

let name = "Otis"

if name == "Maeve" {
    print("Hello, Maeve!")
    print("How are you?")
}

func doMath() -> Int {
    return 5 + 5
}

func doMoreMath() -> Int {
    5 + 5
}

func greet(name: String) -> String {
    if name == "Taylor Swift" {
        "Oh wow!"
    } else {
        "Hello, \(name)"
    }
}

//func greet(name: String) -> String {
//    if name == "Taylor Swift" {
//        "Oh wow!"
//    } else {
//        let greeting = "Hello, \(name)"
//        return greeting
//    }
//}

func greetx(name: String) -> String {
    let response = if name == "Taylor Swift" {
    "Oh wow!"
} else {
    "Hello, \(name)"
}

return response
}

//func greetxx(name: String) -> String {
//    let response = name = "Taylor Swift" ? "Oh wow!" : "Hello, \(name)"
//    return response
//}


//How can you return two or more values from a function?

func getUser() -> [String] {
    ["Taylor", "Swift"]
    
}

let user = getUser()
print(user[0])


func getUser1() -> [String: String] {
    ["first": "Taylor", "last": "Swift"]
}
let user1 = getUser1()
print(user1["first"])

func getUser2() -> (first: String, last: String) {
    (first: "Taylor", last: "Swift")
}

let user2 = getUser2()
print(user2.last)

//Parameter labels

func square3(number: Int) -> Int {
    return number * number
}
let result3 = square3(number: 8)

func sayHello(to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Taylor")

//Why does Swift use parameter labels?

//setReactorStatus(true, true, false)

func setReactorStatus(primaryActive: Bool, backupActive: Bool, isEmergency: Bool) {
//    code here
}

setReactorStatus(primaryActive: true, backupActive: true, isEmergency: false)

func setAge(for person: String, to value: Int) {
    print("\(person) is now \(value)")
}
 setAge(for: "Paul", to: 40)

//
//func setAge(for: String, to: Int) {
//    print("\(for) is now \(to)")
//}

//Omitting parameter labels

func greet(_ person: String) {
    print("Hello, \(person)!")
}
greet("Emine")
