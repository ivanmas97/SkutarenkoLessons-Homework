import UIKit

let total = ((5 + 6) - (8 * 3)) - (5 / 10)
let div = 10 / 3
let rest = 10 % 3

2453453463324 % 101

// &+, &-, &*, &/, &%
var small: UInt8 = 0xff
small = small &+ 5

let str = "Hi, " + "there!"

// >, <, >=, <=, ==, !=, ===, !==
let a = 5
let b = 6

if a == b {
    print("yes")
} else {
    print("no")
}

var c: Int
/*if a > b {
    c = a
} else {
    c = b
}
*/

c = (a < b) ? a : b

let text = "123"
let n = Int(text)

/*
 if let opt = n {
    c = opt
} else {
    c = 0
}
*/

/*
if n != nil {
    c = n!
} else {
    c = 0
}
*/

c = n ?? 0

var sum = 5
sum = sum + 1
sum += 1

var good = true
good = !good

//  && = "*", || = "+"

if good {
    print("good")
} else {
    print("bad")
}

true && true
true && false
false && true
false && false

true || true
true || false
false || true
false || false

let i = 5
let j = 6
let k = 7
let m = 8

(i < 3) && (j > k) && ((m != k) || (m > i))

0...5
0..<5

for i in 0..<5 {
    print(i)
}

// ДЗ
//1 часть: посчитать арифметически количество секунд от 1 января до 25 июля, определить в каком квартале я родился.

print("\n#1.1")
print("I was born at 10:00 in 25th of July")
var secToBDay: Int

var secInDay = (60 * 60 * 24) // Secs in one day

var (jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec) = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31) // Days in each month

secToBDay = secInDay * (jan + feb + mar + apr + may + jun + (jul - 6)) + (60 * 60 * 10)
 print("Count of second from 1st of January till my Birthday is \(secToBDay)")

if secToBDay <= (secInDay * (jan + feb + mar)) {
    print("I was born in 1st quarter")
} else if secToBDay >= (secInDay * (jan + feb + mar)) && secToBDay <= (secInDay * (jan + feb + mar + apr + may + jun)) {
    print("I was born in 2nd quarter")
} else if secToBDay >= (secInDay * (jan + feb + mar + apr + may + jun)) && secToBDay <= (secInDay * (jan + feb + mar + apr + may + jun + jul + aug + sep)) {
    print("I was born in 3rd quarter")
} else if secToBDay >= (secInDay * (jan + feb + mar + apr + may + jun + jul + aug + sep)) && secToBDay <= (secInDay * (jan + feb + mar + apr + may + jun + jul + aug + sep + oct + nov + dec)) {
    print("I was born in 4th quarter")
}

print("\n#1.2")
let monthBDay = 7
var quarterNumber = monthBDay / 3

quarterNumber += monthBDay % 3 > 0 ? 1 : 0
print("I was born in \(quarterNumber) quarter")

//2 часть: определить по заданной координате шахматной доски к какоому цвету относится даннле поле.

let numbers = (1, 2, 3, 4, 5, 6, 7, 8)
let letters = ("a", "b", "c", "d", "e", "f", "g", "h")

let cell = (x:1, y:8)
if cell.x % 2 == cell.y % 2 {
    print("Black")
} else {
    print("White")
}

//let chessCoord = ("e", 2)

/*
 for (index, value) in numbers.enumerated() {
    index %= 2 == 1 ? "\(value) нечетное" : "\(value) четное"
}
 */
//if let index = chessCoord.index(type(of: <#T##T#>))

/*
for (numbers.index) in numbers.enumerated() {
    for (numbers.index) in letters.enumerated() {
        if let sum = numbers.index + letters.index % 2 == 0 {
            print("Black")
        } else {
print("White")
        }
*/
