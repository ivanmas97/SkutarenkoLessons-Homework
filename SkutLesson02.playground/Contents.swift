import UIKit
import Security
import SwiftUI

//1 часть: вывод диапазонов значений Integer и Unsigned Integer разной разрядности.

Int8.min
Int8.max
UInt8.min
UInt8.max

print("""
Int8 имеет диапазон значение от \(Int8.min) до \(Int8.max)
UInt8 имеет только положительные значения от \(UInt8.min) до \(UInt8.max)
""")

Int16.min
Int16.max
UInt16.min
UInt16.max

print("""
Int16 имеет диапазон значений от \(Int16.min) до \(Int16.max)
UInt16 имеет только положительные значения от \(UInt16.min) до \(UInt16.max)
""")

Int32.min
Int32.max
UInt32.min
UInt32.max

print("""
Int32 имеет диапазон значений от \(Int32.min) до \(Int32.max)
UInt32 имеет только положительные значения от \(UInt32.min) до \(UInt32.max)
""")

Int64.min
Int64.max
UInt64.min
UInt64.max

print("""
Int64 имеет диапазон значений от \(Int64.min) до \(Int64.max)
UInt64 имеет только положительные значения от \(UInt64.min) до \(UInt64.max)
""")

//2 часть: сложение чисел разных типов.

let a = 5 // : Int можно не писать
let b: Float = 7.435
let c = 10.23135435352 // : Double можно не писать

print("Сумма чисел типа Integer = \(a + Int(b) + Int(c))")
print("Сумма чисел типа Float = \(Float(a) + b + Float(c))")
print("Сумма чисел типа Double = \(Double(a) + Double(b) + c)")

//3 часть: создать условие проверки на точность суммы чисел с разными типами данных.

let intSum = a + Int(b) + Int(c)
let floatSum = Float(a) + b + Float(c)
let doubleSum = Double(a) + Double(b) + c

if Double(intSum) < doubleSum {
    print("Результат суммы типа 'Double' точнее  типа 'Integer'")
} else if Double(intSum) == doubleSum {
    print("Результат суммы типа 'Double' и типа 'Integer' равнозначны")
} else {
    print ("Данное услоавие никогда не выполнится :)")
}

