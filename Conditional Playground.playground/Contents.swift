import UIKit

var messageString = "I am a Developer!"
print(messageString)
print("Hello", messageString) // adds a space
print("Hello" + messageString) // concatenates Strings
print("Hello There \(messageString)") // string interpolation


var person = "Grace"

if person == "Limor" {
    print("Hello, Lady Ada!")
} else if person != "Limor" {
    print("Hello, Admiral Hopper!")
} else {
    print("Hello There! \(person)")
}
