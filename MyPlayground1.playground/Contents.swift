import UIKit

//Loops

let count = 1...10

for number in count {
    print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

print("Players gonna")
for _ in 1...5 {
    print("play")
}

//Why does Swift use underscores with loops?

let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

for name in names {
    print("\(name) is a secret agent")
}

for _ in names {
    print("[CENSORED] is a secret agent!")
}

//While loops

var number = 1

while number <= 20 {
    print(number)
    number += 1
}
 print("Ready or not, here I come!")

//Repeat loops

var numberx = 1

repeat {
    print(numberx)
    numberx += 1
} while numberx <= 20
    print("Ready or not, here I come!")

repeat {
    print("This is false")
} while false


//When should you use a repeat loop?

let number1 = [1, 2, 3, 4, 5]
let random = number1.shuffled()

var random1 = number1.shuffled()
while random1 == number1 {
    random1 = number1.shuffled()
}

var random2: [Int]
repeat {
    random2 = number1.shuffled()
}while random2 == number1

//Exiting loops

var countDown = 10

while countDown >= 0 {
    print(countDown)
    countDown -= 1
}
print("Blast off!")

while countDown >= 0 {
    print(countDown)
    
    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }
    countDown -= 1
}

//Why would you want to exit a loop?

let scores = [1, 8, 4, 3, 0, 5, 2]
var count1 = 0

for score in scores {
    if score == 0 {
        break
    }
    count1 += 1
}
print("You had \(count1) scores before you got 0.")

//Exiting multiple loops

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
        
        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

//Why does Swift have labeled statements?

let options = ["up", "down", "left", "right"]
let secretCombination = ["up", "up", "right"]

outerLoop: for option1 in options {
    for option2 in options {
        for option3 in options {
            print("In loop")
            let attempt = [option1, option2, option3]
            
            if attempt == secretCombination {
                print("The combination is \(attempt)!")
                break outerLoop
            }
                      
        }
    }
}

//Skipping items

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    print(i)
}

//Infinite loops

var counter = 0

while true {
    print(" ")
    counter += 1
    
    if counter == 273 {
        break
    }
}

//Why would you want to make an infinite loop?
var isAlive = false

while isAlive == true {
    print("I'm alive!")
}
print("I have snuffed it!")
