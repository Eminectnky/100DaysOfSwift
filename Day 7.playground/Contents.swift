import UIKit

//Closures, part two

//Using closures as parameters when they accept parameters

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}

//When would closures with parameters be used as parameters?

let changeSpeed = { (speed: Int) in
    print("Changing speed to \(speed)kph")
}

func buildCar(name: String, engine: (Int) -> Void){
//    build the car
}

//Using closures as parameters when they return values

func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived")
}

travel { (place: String) -> String in
    return("I'm going to \(place) in my car")
}

//When would you use closures with return values as parameters to a function?

func reduce(_ values: [Int], using closure: (Int, Int) -> Int) -> Int {
//    start with a total equal to the first value
    var current = values[0]
    
//    loop over all the values in the array, counting from index 1 onwards
    for value in values[1...] {
//        call our closure with the current value and the array element, assigning its result to our current value
        current = closure(current, value)
    }
    
//    send back the final current value
    return current
}

let numbers = [10, 20, 30]

let sum = reduce(numbers) { (runningTotal: Int, next: Int) in
    runningTotal + next
}
print(sum)


let multiplied = reduce(numbers) { (runningTotal: Int, next: Int) in
    runningTotal * next
}

let sum1 = reduce(numbers, using: +)


//Shorthand parameter names

func travel1(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel1 { (place: String) -> String in
  return "I'm going to \(place) in my car"
}

travel1 { place in
    return "I'm going to \(place) in my car"
}

travel1 { place in
    "I'm going to \(place) in my car"
}

travel1 {
    "I'm going to \($0) in my car"
}


//Closures with multiple parameters

func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel {
    "I'm going to \($0) at \($1) miles per hour."
}

//Returning closures from functions

func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel()
result("London")
let result2 = travel()("London")


//Returning closures from functions

print(Int.random(in: 1...10))

func getRandomNumber() -> Int {
    Int.random(in: 1...10)
}
print(getRandomNumber())

func makeRandomGenerator() -> () -> Int {
    let function = {Int.random(in: 1...10)}
    return function
}
let generator = makeRandomGenerator()
let random1 = generator()
print(random1)

//Capturing values

func travel3() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result3 = travel3()
result3("London")

func travel4() -> (String) -> Void {
    var counter = 1
    
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}
let result4 = travel4()
result4("London")
result4("London")


//Why do Swift’s closures capture values?

func makeRandomNumberGenerator() -> () -> Int {
    return {
        var previousNumber = 0
        var newNumber: Int
        
        repeat {
            newNumber = Int.random(in: 1...3)
        } while newNumber == previousNumber
        
        previousNumber = newNumber
        return newNumber
    }
}

let generator1 = makeRandomNumberGenerator()

for _ in 1...10 {
    print(generator1())
}

