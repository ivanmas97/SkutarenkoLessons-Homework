import UIKit



mainLoop: for _ in 0...1000{
    for i in 1...20 {
        if i < 15 {
            continue
        }
        if i == 16 {
            break mainLoop
        }
        print(i)
    }
}

var age = 67
var name = "Alex"

switch age {
case 0...16:
    print("школота")
case 17...21:
    print("студент")
case 22...50:
    break
case 51, 56, 57, 60:
    print("Сработало!")
default: break
}

switch name {
case "Alex" where age < 50:
    print("Hi buddy!")
case "Alex" where age >= 50:
    print("I don't know you...")
default:
    break
}

let tuple = (name, age)

switch tuple {

case ("Alex", 60):
    print("Hi Alex 60")
case ("Alex", 59):
    print("Hi Alex 59")
    
case (_, let number) where number >= 70 && number <= 65:
    print("Hi old man!")
    
case ("Alex", _):
    print("Hi Alex")
    
default:
    break
}


let point = (5, -6)

switch point {
case let (x, y) where x == y:
    print ("x == y")
case let (x, y) where x == -y:
    print ("x == -y")
case let (_, y) where y < 0:
    print ("y < 0")
default: break
}

let array: [CustomStringConvertible]  = [5, 5.4, Float(5.4)]

type(of: array)

switch array[1] {
case _ as Int:
print("Int")
case _ as Float:
print("Float")
case _ as Double:
print("Double")
default:
    break
}


// HW part 1: Create random string and iterate characters with "switch" to count  total symbols, vowels, consonants, spaces etc.

print("\n#1. Print count of type of characters from text.")

let text = "Swift includes modern features like type inference, optionals, and closures, which make the syntax concise yet expressive."

var numOfSymbs = 0
var vowels = 0
var consonants = 0
var otherSymbs = 0
var spaces = 0

for char in text {
    if char != " " {
    numOfSymbs += 1
    }
    switch char {
    case "a", "e", "i", "o", "u", "y":
        vowels += 1
    case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z":
        consonants += 1
    case " ":
        spaces += 1
    default:
        otherSymbs += 1
    }
}
print("""
Number of characters: \(numOfSymbs);
Vowels: \(vowels);
Consonants: \(consonants);
Spaces: \(spaces);
Other symbols: \(otherSymbs);
""")

// HW part 2: Create the classification of human age with "Switch - case" op.

print("\n#2. Age classification.")

let humAge = 120
let stage: String



switch humAge {
case 0..<1:
    stage = "Infancy"
case 1..<3:
    stage = "Early childhood"
case 3..<7:
    stage = "Preschool age"
case 7..<12:
    stage = "School age"
case 12..<19:
    stage = "Teenager"
case 19..<44:
    stage = "Youth"
case 44..<60:
    stage = "Middle age"
case 60..<75:
    stage = "Elderly"
case 75..<90:
    stage = "Senile period"
case 90...:
    stage = "Long-liver"
default:
    stage = "Error!"
}

print("The age \(humAge) - \(stage)")

// HW part 3: Create student's Full name.
// If his First name starts with "A" or "O", then adress the person by First name;
// If his Middle name starts with "B" or "D", then adress the person by First name and Middle name;
// If his Last name starts with "E" or "Z", then adress the person by Last name;
// Otherwise adress the persin by Full name.

print("\n#3. Appeal to the person.")

let fullName = (last: "Maslov", first: "Ivan", middle: "Alekseevich")

let greeting: String

switch fullName {
case (_, let firstSymbol, _) where firstSymbol.hasPrefix("A") || firstSymbol.hasPrefix("O"):
    greeting = fullName.first
case (_, _, let firstSymbol) where firstSymbol.hasPrefix("B") || firstSymbol.hasPrefix("D"):
    greeting = fullName.first + " " + fullName.middle
case (let firstSymbol, _, _) where firstSymbol.hasPrefix("E") || firstSymbol.hasPrefix("Z"):
    greeting = fullName.last
default:
    greeting = fullName.last + " " + fullName.first + " " + fullName.middle
}

print("Hello, \(greeting)!")


