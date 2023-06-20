import UIKit

struct Point {
    
    var x: Int
    var y: Int
}

var p1 = Point(x: 2, y: 3)
var p2 = Point(x: 3, y: 5)

func + (a: Point, b: Point) -> Point {
    return Point(x: a.x + b.x, y: a.y + b.y)
}

func * (a: Point, b: Point) -> Point {
    return Point(x: a.x * b.x, y: a.y * b.y)
}

p1 = p1 + p2
p1 * p2
p1
p2

func += ( a: inout Point, b: Point) {
    a = a + b
}

p1
p2
p1 += p2
p1

func == (a: Point, b: Point) -> Bool {
    return a.x == b.x && a.y == b.y
}

p1 == p2
p1 == p1

prefix func ++ (a: inout Point) -> Point {
    a.x += 1
    a.y += 1
    
    return a
}
++p1


p1 = Point(x: 2, y: 3)
p2 = Point(x: 3, y: 5)

// %%%

infix operator %%%

func %%% (a: inout Point, b: Point) -> Point {
    a.x += b.y
    a.y -= b.x
    return a
}

p1 %%% p2

var s = "Hello, World!"

//s -= "lo"

import Foundation

func -= (s1: inout String, s2: String) {
    
    let set = NSCharacterSet(charactersIn: s2)
    let components = s1.components(separatedBy: set as CharacterSet)
    s1 = components.joined(separator: "")
}

s -= "lo"
s -= "H"

s = "0123456789"

func -= (s1: inout String, i: Int) {
    s1 -= String(i)
}

s -= 5678944

