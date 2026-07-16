import UIKit


var diceRoll: Int

var rolls = 0

repeat {
    diceRoll = Int.random(in: 1...6)
    rolls += 1
    print("Dice Roll #\(rolls) = \(diceRoll)")
} while diceRoll != 6

print("It took \(rolls) rolls to get a 6")

