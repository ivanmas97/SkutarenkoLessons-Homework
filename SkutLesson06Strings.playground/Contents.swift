import Foundation

//var str = String() // строка это структура

var str = "c"
str = str + "a"
str += "b"

//var a = 5
//var b = a

var str1 = "a"
var str2 = str1

str1
str2

str1 = "b"

str1
str2

str1.isEmpty

let char1: Character = "x"

for c in "Hello world!" {
    print(c)
}

str1.append(char1)

// представление строки как строки в Objective-C
//(str1 as NSString).length
//NSString(string: str1).length

let heart = "\u{1F496}"

let eAcute: Character = "\u{E9}"
let combinedEAcute: Character = "е\u{301}" // добавляет ударение

var fun: Character = "ъ\u{301}\u{20dd}"

heart.count

let funString = "What is this? -> \(fun)"
funString.count
(funString as NSString).length

funString.hasPrefix("What")
funString.hasSuffix("ъ\u{301}\u{20dd}")

// ДЗ

print("\n#1.1")

let arrayString = ["5", "44a", "3", "2", "5b"]
var sum = 0
var sumStr = ""

for str in arrayString {
    let value = Int(str)
    sum += value ?? 0
    if !sumStr.isEmpty {
        sumStr += " + "
    }
    if let strValue = value {
        sumStr += String(strValue)
    } else {
        sumStr += "nil"
    }
   //print(str)
}
print("\(sumStr) = \(sum)")

print("\n#1.2")

let (a, b, c, d, e) = ("5", "44a", "3", "2", "5b")
var sum2 = 0
var sumStr2 = ""
var sumStr3 = ""

let aInt = Int(a)
let aStr: String
if aInt == nil {
    aStr = "nil"
} else {
    aStr = a
}
sum2 += aInt ?? 0

var bInt = Int(b)
let bStr: String
if bInt == nil {
    bStr = "nil"
} else {
    bStr = b
}
sum2 += bInt ?? 0

let cInt = Int(c)
let cStr: String
if cInt == nil {
    cStr = "nil"
} else {
    cStr = c
}
sum2 += cInt ?? 0

let dInt = Int(d)
let dStr: String
if dInt == nil {
    dStr = "nil"
} else {
    dStr = d
}
sum2 += dInt ?? 0

let eInt = Int(e)
let eStr: String
if eInt == nil {
    eStr = "nil"
} else {
    eStr = e
}
sum2 += eInt ?? 0

sumStr2 = aStr + " + " + bStr + " + " + cStr + " + " + dStr + " + " + eStr + " = " + String(sum)
sumStr3 = "\(aStr) + \(bStr) + \(cStr) + \(dStr) + \(eStr) = \(sum)"

print(sumStr2)
print(sumStr3)

print("\n#2")
let stringUnicode = "\u{1F122} \u{2764} \u{262d} \u{f8ff} \u{aa80}"

print(stringUnicode)
print("Swift lenght: \(stringUnicode.count)\nObjective-C lenght: \((stringUnicode as NSString).length)")

print("\n#3")

let alphabet = "abcdefghijklmnopqrstuvwxyz"
let searchCharacter: Character = "t"
var index = 0
for letter in alphabet {
    if letter == searchCharacter {
        print("Letter \(searchCharacter) is on \(index) index of English alphabet.")
    }
    index += 1
}
