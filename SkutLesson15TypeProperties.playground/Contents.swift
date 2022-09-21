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


// HW part 1. Создать структуру "Описание файла", которая будет иметь свойства - путь к файлу, - имя файла, максимальный размер файлы на диске, - путь к папке, содержащей файл, - скрытый/нескрытый файл, - содержимое файла

print("\n#1. File description.\n")

enum FileType {
    case visible
    case hidden
}

struct FileDescription {
    
    static let maxSize = 1_000_000
    var fileName: String
    var fileContent: String
    var fileSize: Int {
        didSet {
            if fileSize > FileDescription.maxSize {
                fileSize = oldValue
            }
        }
    }
    var fileType: FileType
    var pathFolder: String
    var path: String {
        return pathFolder + fileName
    }
}

var testFile = FileDescription(fileName: "TestName.txt", fileContent: "Content", fileSize: 35234, fileType: .visible, pathFolder: "C:\\Documents")
print(testFile.path, String(testFile.fileSize) + "kb", testFile.fileType)
testFile.fileSize = 5435345245
