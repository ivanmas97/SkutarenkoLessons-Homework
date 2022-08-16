import UIKit

//let dict: [String: String] = ["машина": "car", "мужик": "man"]
//let dict2: [Int, String] = [1: "car", 2: "man"]
//let dict3: Dictionary<Int, String> = [1, "a"]

var dict = ["машина": "car", "мужик": "man"]

dict["мужик"]

dict.count
dict.isEmpty

var dict3 = [String: String]()

dict3.count
dict3.isEmpty

dict["комп"] = "computer"
dict

dict.keys
dict.values

//dict["комп"] = "mac"
dict

dict.updateValue("mac", forKey: "комп")
dict

//let comp: String? = dict["комп"]

if let comp = dict["комп"] {
print(comp)
} else {
    print("no value for key комп2")
}

//dict["мужик"] = nil
//dict

/*
dict.removeValue(forKey: "мужик")
dict

dict = [:]
dict.isEmpty

dict["hello"] = "world"
dict
*/

//for key in dict.keys {
  //  print("key = \(key), value = \(dict[key]!)")
//}

for key in dict.keys {
    if let value = dict[key] {
        print("key = \(key), value = \(value)")
    }
}

for (key, value) in dict {
    print("key = \(key), value = \(value)")
}

//HW part 1: Students and their marks.
print("\n#1.")

var dictStud = ["Maslov Ivan": 5, "Nikita Peven": 4, "Semen Kroshkin": 3, "Timur Rusanov": 3, "Egor Parshin": 4]
dictStud.updateValue(5, forKey: "Nikita Peven")
dictStud.updateValue(4, forKey: "Timur Rusanov")
dictStud["Arkady Kazansky"] = 5
dictStud
dictStud.removeValue(forKey: "Semen Kroshkin")
dictStud.removeValue(forKey: "Timur Rusanov")
dictStud

var sum = 0
var averageMark: Double = 0
for key in dictStud.keys {
    if let value = dictStud[key] {
    sum += value
        averageMark = Double(sum) / Double(dictStud.count)
    }
}
print("The sum of students marks for Control work equals \(sum)")
print("Average mark for Control work is \(averageMark)")

//HW part 2: Months.

//let monthsDict = ["January": 31, "Febrary": 28, "March": 31, "April": 30, "May": 31, "June": 30,
//                  "July": 31, "August": 31, "September": 30, "October": 31, "November": 30, "December": 31]

var monthsDict = [String: Int]()
let months = ["January", "Febrary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
let days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
for (index, value) in days.enumerated() {
    monthsDict[months[index]] = value
}
//monthsDict.sorted(<)

print("\n#2.1. Tuples of months and days.")

for (month, day) in monthsDict {
    print("The \(month) has \(day) days.")
}

print("\n#2.2. Flow of keys of months and days.")

for i in monthsDict.keys {
    print("The \(i) has \(monthsDict[i] ?? 0) days")
}

print("\n#3. The color of cell in chess board.")

var cell = true // true = white, false = black
let chessLetter = "abcdefgh"
var chessDict = [String: Bool]()
for char in chessLetter {
    for number in (1...8) {
        let key = String(char) + String(number)
        chessDict[key] = cell
        cell = !cell
    }
}
print("\(chessDict)")
