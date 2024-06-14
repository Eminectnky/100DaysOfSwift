import UIKit

let soyadi = { print("Çetinkaya")}
soyadi()

func toplamciklar(sayi1: Int, sayi2: Int) -> Int {
    return sayi1 + sayi2
}

let toplama = {
    (sayi1: Int, sayi2: Int) -> Int in
    return sayi1 + sayi2
}
let sonuc = toplama(10, 20)
print(sonuc)

var sayaclar: [Int] = [45, 4, 56, 7, 78, 90, 1, -5]

let azalanDurum = sayaclar.sorted(by: {a, b in  a > b})

var siraliSayac = sayaclar.sorted(by: {
    (sol: Int, sag: Int) -> Bool in
    return sol < sag
})

let artanDurum = sayaclar.sorted(by: {x, y in x < y})
print(azalanDurum)
print(artanDurum)

var kisaYol:(String, String) -> String
kisaYol = { $1 }
print(kisaYol("bir", "iki"))

var kitalar = ["Asya", "Avrupa", "Amerika"]
let kitaSiralar = kitalar.map({
    (durum: String) -> String in
    return durum.uppercased()
})
print(kitaSiralar)


struct Student {
    let name: String
    var testScore: Int
}

let students = [Student(name: "Luke", testScore: 88),
                Student(name: "Han", testScore: 73),
                Student(name: "Leia", testScore: 95),
                Student(name: "Chewy", testScore: 78),
                Student(name: "Obi-Wan", testScore: 65),
                Student(name: "Ahsoka", testScore: 86),
                Student(name: "Yoda", testScore: 68),

]

var topStudentFilter: (Student) -> Bool = { student in
    return student.testScore > 80
}

func topStudentFilterF(student: Student) -> Bool {
    return student.testScore > 70
}

let topStudents = students.filter { $0.testScore > 80 }
let studentRanking = topStudents.sorted { $0.testScore > $1.testScore }

for topStudent in topStudents {
    print(topStudent.name)
}
