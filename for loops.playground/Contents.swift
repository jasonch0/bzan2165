import UIKit

//for count in 1...5 {
//    print(count)
//}

let tubbies = ["Tinky Winky", "Dispy", "La La", "Po"]

for i in 0...tubbies.count - 1 {
    print(tubbies[i])
}

//half opened range with one less period
print("\nHalf Open Range")
for i in 0..<tubbies.count {
    print(tubbies[i])
}

print("\nIterate through an array")

for tubby in tubbies {
    print(tubby)
}

let quizzes = [72, 81, 89, 95, 92]

var res = 0

for quiz in quizzes {
    res += quiz
}

print("average is \(res / quizzes.count)")

res = 0
for i in 0...quizzes.count - 1 {
    res += quizzes[i]
}

print("average is \(res / quizzes.count)")


// forgot ab double so one example
var decimalRes = 0.0
for i in 0..<quizzes.count {
    decimalRes += Double(quizzes[i])
}

print("average is \(decimalRes / Double(quizzes.count))")


for i in (0...10).reversed() {
    print(i)
}

for year in stride(from: 2024, through: 2048, by: 4) {
    print(year)
}
