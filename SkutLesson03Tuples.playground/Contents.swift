import UIKit

// var simpleTuple: (Int, String, Bool, Double) = (1, "Hello", true, 2.5)
var simpleTuple = (1, "Hello", true, 2.5)

let (number, greeting, chek, decimal) = simpleTuple

number
greeting
chek
decimal

let (_, _, chek2, _) = simpleTuple
chek2

simpleTuple.0
simpleTuple.1
simpleTuple.2
simpleTuple.3

var tuple = (index:1, phrase:"Hello", registred:true, latency:2.5)

tuple.0
tuple.1
tuple.2
tuple.3


tuple.index
tuple.phrase
tuple.registred
tuple.latency

// change tuple's value
tuple.index = 2

tuple

let a = (x:1, y:2)
var b = (x:2, y:3)

b = a

/*
let redColor = "red"
let greenColor = "green"
let blueColor = "blue"
*/

let (redColor, greenColor, blueColor) = ("red", "green", "blue")

redColor
greenColor
blueColor


let totalNumber = 5
let merchantName = "Alex"
print("\(totalNumber) \(merchantName)")
print((totalNumber, merchantName))
print(simpleTuple)


// ДЗ 1 часть: создать параметризированный кортеж о максимальном количестве упражнений

let myMaxWorkoutCounts = (maxPushUps: 50, maxPullUps: 15 , maxSitUps:45)

print("Мое максимальное количество отжиманий равно \(myMaxWorkoutCounts.maxPushUps) раз")
print("Мое максимальное количество подтягиваний равно \(myMaxWorkoutCounts.1) раз")
print("Мое максимальное количество приседаний равно \(myMaxWorkoutCounts.maxSitUps) раз")

var herMaxWorkoutCounts = (maxPushUps: 35, maxPullUps: 10 , maxSitUps:40)

herMaxWorkoutCounts.maxPushUps = 29
herMaxWorkoutCounts.maxPullUps = 7
herMaxWorkoutCounts.2 = 51

print("Ее максимальное количество отжиманий равно \(herMaxWorkoutCounts.0) раз")
print("Ее максимальное количество подтягиваний равно \(herMaxWorkoutCounts.maxPullUps) раз")
print("Ее максимальное количество приседаний равно \(herMaxWorkoutCounts.maxSitUps) раз")

//let differencePushUps = myMaxWorkoutCounts.0 - herMaxWorkoutCounts.0
//let differencePullUps = myMaxWorkoutCounts.1 - herMaxWorkoutCounts.maxPullUps
//let differenceSitUps = myMaxWorkoutCounts.maxSitUps - herMaxWorkoutCounts.2

//let differenceTuple = (differencePushUps, differencePullUps, differenceSitUps)

//print("Я отжимаюсь на \(differenceSitUps) раз больше, подтягиваюсь на \(differenceTuple.1) раз больше и приседаню на \(differenceSitUps) раз больше.")

var differencePushUps, differencePullUps, differenceSitUps: Int

if myMaxWorkoutCounts.maxPushUps > herMaxWorkoutCounts.maxPushUps {
    differencePushUps = myMaxWorkoutCounts.0 - herMaxWorkoutCounts.0
    print("Я отжимаюсь больше нее на \(differencePushUps) раз")
} else {
    differencePushUps = herMaxWorkoutCounts.0 - myMaxWorkoutCounts.0
    print("Она отжимается больше меня на \(differencePushUps) раз")
}

if myMaxWorkoutCounts.1 > herMaxWorkoutCounts.1 {
    differencePullUps = myMaxWorkoutCounts.maxPullUps - herMaxWorkoutCounts.maxPullUps
    print("Я подтягиваюсь больше нее на \(differencePullUps) раз")
} else {
    differencePullUps = herMaxWorkoutCounts.maxPullUps - myMaxWorkoutCounts.maxPullUps
    print("Она подтягивается больше меня на \(differencePullUps) раз")
}

if myMaxWorkoutCounts.maxSitUps > herMaxWorkoutCounts.2 {
    differenceSitUps = myMaxWorkoutCounts.maxSitUps - herMaxWorkoutCounts.2
    print("Я приседаю больше нее на \(differenceSitUps) раз")
} else {
    differenceSitUps = herMaxWorkoutCounts.maxSitUps - myMaxWorkoutCounts.2
    print("Она приседает больше меня на \(differenceSitUps) раз")
}

let difTuple = (difPushUps:differencePushUps, difPullUps:differencePullUps, difSitUps:differenceSitUps)
