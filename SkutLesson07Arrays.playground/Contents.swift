import UIKit

let constArray = ["a", "b", "c", "d"]
constArray.count

var array = [String]()

if array.isEmpty {
    print("array is empty")
}

array += constArray
array += ["e"]
array.append("f")

var array2 = array

array
array2

array2[0] = "1"

array
array2

//array[1..<4] = ["0"]

array.insert("-", at: 3)

array

array.remove(at: 3)
array

array.dropLast(3)
array

//let test = [Int](repeating: 100, count: 10)

//count how much money in the pocket

let money = [100, 1, 5, 20, 1, 50, 1, 1, 20]
var sum = 0

print("\n#1 variant")

for i in 0..<money.count {
    print("index = \(i), value = \(money[i])")
    sum += money[i]
}
print("Sum of money in the pocket = \(sum)")

sum = 0

print("\n#2 variant")

var index = 0
for value in money {
    print("index = \(index), value = \(value)")
    sum += value
    index += 1
}
print("Sum of money in the pocket = \(sum)")

sum = 0

print("\n#3 variant")
for (index, value) in money.enumerated() {
    print("index = \(index), value = \(value)")
    sum += value
}
print("Sum of money in the pocket = \(sum)")


//HW part 1:

print("\n#1.1: Month number with count of days.")

let monthDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30 ,31]

for i in 0..<monthDays.count {
    print("Month \(i+1) has \(monthDays[i]) days")
}

print("\n#1.2: Month name with count of days.")

let monthNames = ["January", "Febrary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

for (count, name) in monthNames.enumerated() {
    print("The \(name) has \(monthDays[count]) days.")
}

print("\n#1.3: Tuple of month name with count of days.")

var monthTupleArray = [(names: String, days: Int)]()

for (count, name) in monthNames.enumerated() {
    monthTupleArray.append((name, monthDays[count]))
}
for (tupleName, tupleDay) in monthTupleArray {
    print("The \(tupleName) has \(tupleDay) days.")
}

print("\n#1.4: Tuple of month name with count of days (reversed).")

for (tupleName, tupleDay) in monthTupleArray.reversed() {
    print("The \(tupleName) has \(tupleDay) days.")
}

print("\n#1.5: Calculate count of days from the beginning of the year to my Birthday.")

let (month, day) = (7, 25)

var sumDays = day

for count in monthDays[0..<month] {
    sumDays += count
}
print("From the beginning of the year to my Birthday there are \(sumDays) days.")


//HW part 2: Make array of optional integer and sum values in 3 diferent ways.

let intsArray = ["12", "54s", "100", "abc", "54,3"]

print("\n#2.1: Sum optional integers using optional binding.")

sum = 0

for i in intsArray {
    if let value = Int(i) {
        sum += value
    }
}
print("Optional binding sum: \(sum)")

print("\n#2.2: Sum optional integers using force unwrapping.")

sum = 0

var optIntsArray = [Int?]()
for i in intsArray {
    optIntsArray.append(Int(i))
}
optIntsArray

for i in optIntsArray {
    if i != nil {
        sum += i!
    }
}
print("Force unwrapped sum: \(sum)")

print("\n#2.3: Sum optional integers using nil coalescing.")

sum = 0

for i in optIntsArray {
    sum += i ?? 0
}
print("Nil coalescing sum: \(sum)")

// HW part 3: Create String alphabet, and make interation to reverse characters in alphabet.

print("\n#3: Convert String alphabet to reversed array of characters type String.")

var alphabet = "abcdefghijklmnopqrstuvwxyz"
var reversedAlphabet = [String]()

for char in alphabet.reversed() {
    let stringChar = String(char)
    //reversedAlphabet.append(stringChar)
    reversedAlphabet += [stringChar]
}
reversedAlphabet
type(of: reversedAlphabet)

print(reversedAlphabet)
