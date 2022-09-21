import UIKit

let MaxNameLenght = 20


class Human {
    
    var name: String {
        didSet {
            if name.count > MaxNameLenght {
                name = oldValue
            }
        }
    }
    
    lazy var storyOfMyLife = "This is a story of my entire life... "
    
    class var maxAge: Int {
        return 100
    }
    
    var age: Int {
        didSet {
            if age > Human.maxAge {
                age = oldValue
            }
        }
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}



enum Direction {
    
    static let enumDescrption = "Directions in the game"
    
    case Left
    case Right
    case Top
    case Bottom
    
    var isVertical: Bool {
        return self == .Top || self == .Bottom
    }
    
    var isHorisontal: Bool {
        return !isVertical
    }
}

Direction.enumDescrption

let d = Direction.Right
d.isHorisontal
d.isVertical


struct Cat {
    
    var name: String {
        didSet {
            if name.count > MaxNameLenght {
                name = oldValue
            }
        }
    }
    static let maxAge = 20
    static var totalCats = 0
    
    var age: Int {
        didSet {
            if age > Cat.maxAge {
                age = oldValue
            }
        }
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        
        Cat.totalCats += 1
    }
    
}


let human = Human(name: "Peter", age: 40)

var cat = Cat(name: "Whiten", age: 10)

human.age = 1000
cat.age = 50

human
cat

Cat.totalCats

let cat1 = Cat(name: "Bob", age: 8)
let cat2 = Cat(name: "Acsy", age: 1)

Cat.totalCats

cat.name = "djdkfnjsfkbdf"
