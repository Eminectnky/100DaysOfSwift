import UIKit

//Initializers

struct User {
    var userName: String
    
    init() {
       userName = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.userName = "twostraws"

//How do Swift’s memberwise initializers work?

//struct Employee {
//    var name : String
//    var yearsActive = 0
//}
//
//let roslin = Employee(name: "Laura Roslin")
//let adama = Employee(name: "William Adama", yearsActive: 45)


//struct Employee {
//    var name: String
//    var yearsActive = 0
//    
//    init(name: String, yearsActive: Int = 0) {
//        self.name = "Anonymous"
//        print("Creating an anonymous employee...")
//    }
//}
//
//let roslin = Employee(name: "Laura Roslin")


struct Employee {
    var name: String
    var yearsActive = 0
}

extension Employee {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee...")
    }
}

let roslin = Employee(name: "Laura Roslin")
let anon = Employee()


//Referring to the current instance

struct Person {
    var name: String
    
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}


//When would you use self in a method?


struct Studet {
    var name: String
    var bestFriend: String
    
    init(name studentName: String, bestFriend studentBestFriend: String) {
        print("Enrolling \(studentName) in class...")
        name = studentName
        bestFriend = studentBestFriend
    }
}

//Lazy properties

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}


struct Person1 {
    var name: String
    var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}

var ed = Person1(name: "Ed")
//lazy var familyTree = FamilyTree()
ed.familyTree

//Static properties and methods

struct Student {
    static var classSize = 0
    var name: String
  
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

print(Student.classSize)

//What’s the point of static properties and methods in Swift?

struct Unwrap {
    static let appURL = "https://itunes.apple.com/app/id1440611372"
    
    
    private static var entropy = Int.random(in: 1...1000)
    static func getEntropy() -> Int {
        entropy += 1
        return entropy
    }
}



//Access control

struct Person2 {
    private var id: String
    
    init(id: String) {
        self.id = id
    }
    
    func identify() -> String {
        return "My social security number is \(id)"
    }
}

//What’s the point of access control?

private var learnedSections = Set<String>()
