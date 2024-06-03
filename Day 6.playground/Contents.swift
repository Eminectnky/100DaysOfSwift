import UIKit

//Closures, part one

//Creating basic closures

let driving1 = {
    print("I'm driving in my car")
}
driving1()

//Accepting parameters in a closure

let driving = { (place: String) in
    
    print("I'm going to \(place) in my car")
}
driving("London")

//Why are Swift’s closure parameters inside the braces?

func pay(user: String, amount: Int ) {
//    code
}

let payment = { (user: String, amount: Int) in
//    code
    
}

//Returning values from a closure

let driving2 = { (place: String) in
    print("I'm going to \(place) in my car")
}

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)

//How do you return a value from a closure that takes no parameters?

//A closure that accepts a parameter and returns nothing
let payment1 = { (user: String) in
    print("Paying \(user)...")
}

//A closure that accepts a parameter and returns a Boolean value
let payment2 = { (user: String) -> Bool in
    print("Paying \(user)...")
    return true
}

//A closure that returns a value without accepting any parameters
let payment3 = { () -> Bool in
    print("Paying an anonymous person...")
    return true
}

//Closures as parameters

let driving3 = {
    print("I'm driving in my car")
}

// () -> Void - Swift's way of saying "nothing" - It accepts no parameters and returns Void

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel(action: driving3)

//Trailing closure syntax

func travel1(action: () -> Void) {
    print("I!m getting ready to go.")
    action()
    print("I arrived")
}

travel1() {
    print("I'm driving in my car")
}

travel1 {
    print("I'm driving in my car")
}

//Why does Swift have trailing closure syntax?

func animate(duration: Double, animations: () -> Void) {
    print("Starting a \(duration) second animation...")
    animations()
}

animate(duration: 3, animations: {
    print("Fade out the image")
})

animate(duration: 3) {
    print("Fade out the image")
}

