import UIKit

// продажи
/*
50 + 20 = 70
10 - 10 = 0
0
 */

/*
is it Satueday?
true / false / nil
*/

/*
Петя в кармане 5 яблок - 5
Вася не карманов
 */

var apples: Int? = 5

apples = nil

if apples == nil {
    print("No apples")
} else {
    //print(apples)
    let a = apples! + 2
}


if var numbers = apples {
    numbers = numbers + 3
} else {
    print("No apples")
}

let age = "60ds"

if let ageInt = Int(age) {
    print(ageInt)
} else {
    print("No int!")
}


var apples2: Int! = nil

apples2 = 2

apples2 = apples2 + 5

// ДЗ 1 часть: создать 5 констант типа String, которые содержать как числа так и нет, и просуммировать их.

print ("\n#1")

let (a, b, c, d, e) = ("12", "54s", "100", "abc", "54,3")
var sum = 0

if let aInt = Int(a) {
    sum += aInt
}

if let bInt = Int(b) {
    sum += bInt
}

if let cInt = Int(c) {
    sum += cInt
}

if let dInt = Int(d) {
    sum += dInt
}

if let eInt = Int(e) {
    sum += eInt
}
print("Sum of Int strings equals = \(sum)")


// 2 часть: Status message 200-300

var (status, message) = ("242", "Status bla-bla-bal")

if let statusInt = Int(status) {
    if statusInt > 200 && statusInt < 300 {
        print(message)
    }
} else {
    print("Error")
}

print ("\n#2.1")

var response: (statusCode: Int, statusMessage: String?, errorMessage: String?) = (250, "Response", nil)
//response = (404, nil, "Not found")

if response.statusCode >= 200 && response.statusCode < 300 {
    if let message = response.statusMessage {
        print("Success. Code: \(response.statusCode), Message: \(message).")
    } else {
        print("Success. Code: \(response.statusCode), No message!")
    }
} else {
    if let message = response.errorMessage {
        print("Error. Code: \(response.statusCode), Message: \(message).")
    } else {
        print("Error. Code: \(response.statusCode), No message!")
    }
}

print ("\n#2.2")

if let message = response.statusMessage {
    print(message)
} else if let errorMessage = response.errorMessage {
    print(errorMessage)
} else {
    print ("No message")
}


// 3 часть: кортеж с именами, номерами машини и оценками 5 студентов

print ("\n#3")

var stud1: (name: String?, car: String?, mark: Double?)
var stud2: (name: String?, car: String?, mark: Double?)
var stud3: (name: String?, car: String?, mark: Double?)
var stud4: (name: String?, car: String?, mark: Double?)
var stud5: (name: String?, car: String?, mark: Double?)

stud1.name = "Ivan"
stud2.name = "Arkady"
stud3.name = "Egor"
stud4.name = "Semen"
stud5.name = "Nikita"

stud1.car = "Lada-2105"
stud2.car = "Hyudai Solaris"
stud4.car = "Audi A6"

stud1.mark = 4.5
stud3.mark = 3.67
stud4.mark = 4.1
stud5.mark = 4.4

var arrayStudent = [stud1, stud2, stud3, stud4, stud5]
for student: (name: String?, car: String?, mark: Double?) in arrayStudent {
    if let studName = student.name {
        print("Name: \(studName)", terminator: ", ")
    }
    if let studCar = student.car {
        print("Car: \(studCar)", terminator: ", ")
    } else {
        print ("Has no car", terminator: ", ")
    }
    if let studMark = student.mark {
        print("Mark: \(studMark)")
    } else {
        print("No entered class")
    }
}
