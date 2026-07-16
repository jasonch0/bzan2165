import UIKit

func rollDice() {
    print("You rolled a \(Int.random(in: 1...10))")
}

rollDice()
rollDice()
rollDice()

print("")

func rollSidedDice(sides: Int) {
    print("You rolled a \(Int.random(in: 1...sides)) on a \(sides)-sided dice.")
}

rollSidedDice(sides: 4)
rollSidedDice(sides: 7)

print("")

func rollSeveralDice(numberOfDice: Int, diceSides: Int) {
    print("Rolling \(numberOfDice), \(diceSides)-sided dice.")
    var total = 0
    for _ in 1...numberOfDice { //not using iterative value
        let roll = Int.random(in: 1...diceSides)
        print("\(roll)")
        total += roll
    }
    print("\(total)")
}

rollSeveralDice(numberOfDice: 2, diceSides: 10)

func rollSeveralDiceV2(numberOfDice: Int, diceSides: Int) {
    guard numberOfDice > 0 else {
        print("Cmon lil bro")
        return
    }
    print("Rolling \(numberOfDice), \(diceSides)-sided dice.")
    var total = 0
    var msg = ""
    for i in 1...numberOfDice { //not using iterative value
        let roll = Int.random(in: 1...diceSides)
        if i == numberOfDice {
            msg += "\(roll)"
        } else {
            msg += "\(roll), "
        }
        
        total += roll
    }
    print(msg)
    print("Total Roll: \(total)")
    
}

rollSeveralDiceV2(numberOfDice: 1, diceSides: 6)


func average(grades: [Int]) -> Double {
    var total = 0
    for grade in grades {
        total += grade
    }
    return Double(total) / Double(grades.count)
}

var michaelGrades = [40, 65, 70, 68]

print("Michael earned a: \(averages(grades: michaelGrades))")
