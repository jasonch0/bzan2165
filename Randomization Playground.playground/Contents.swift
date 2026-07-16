import UIKit

//let diceRoll = Int.random(in: 1...6)
//
//let randomDecimal = Double.random(in: 0.0...1.0)
//
//print("You rolled \(diceRoll)")
//print("decimal is between 0 and 1 is \(randomDecimal)")


let dice1 = Int.random(in:1...3)
let dice2 = Int.random(in:1...3)
let dice3 = Int.random(in:1...3)

let res = dice1 + dice2 + dice3

print("You rolled a result of \(res)")


let coinFlip = Bool.random()

print("Coin Flip: \(coinFlip ? "Heads" : "Tails")")

var messages = ["🎉", "🎈", "🎊", "🎁"]



print(messages[Int.random(in: 0...messages.count - 1)])




