//
//  main.swift
//  SkutLesson22ARC
//
//  Created by Ivan Maslov on 06.04.2023.
//

import Foundation

var playground = true

class Student {
    
    unowned let teacher: Teacher
    
    deinit {
        print("goodbye student")
    }
    
    init(teacher: Teacher) {
        self.teacher = teacher
    }
}

class Teacher {
    
    var student: Student!
    
    lazy var test: (Bool) -> () = {
        [unowned self] (a: Bool) in
        print(self.student!)
    }
    
    init() {
        student = Student(teacher: self)
    }
    
    deinit {
        print("goodbye teacher")
    }
}



if playground {
     
    var teacher = Teacher()
    teacher.test(true)
    
    if playground {
        var student = Student(teacher: teacher)
        teacher.student = student
    }
    
    
    
    print("exit playground")
}

class Human {
    var name = "a"
}

var h = Human()
h.name

var x = 10
var y = 20

var closure: () -> () = {
    [x, y, h] in
    print("\(x) \(y) \(h.name)")
}

closure()

x = 30
y = 40
h = Human()
h.name = "b"

closure()


print("end")

/* HW #1: There is a Family (Mother, Father, Kids). Father is the head of the Family. Mother controls their kids. Kids can call each other (for exapmle, say give me a toy). Kids can call Mother and ask: buy me a lollipop, and ask Father: buy me a toy. The entire hierarchy is in an object of class Family. The class has a method of printing Family array. Father has 3 closures: adress to Family and ask: print all Family, print Mother, print Kids.
 Create all hierarchy and when we go out of sight, destroy all objects. */
print("\nHW #1. Family.\n")

class Family {
    var father: Father
    var mother: Mother
    var kid1: Kid1
    var kid2: Kid2
    var family = [String]()
    
    init(father: Father, mother: Mother, kid1: Kid1, kid2: Kid2, family: [String]) {
        self.father = father
        self.mother = mother
        self.kid1 = kid1
        self.kid2 = kid2
        self.family = [father.name, mother.name, kid1.name, kid2.name]
    }
    
    lazy var printFamily: () -> () = { [unowned self] in
        print("Family members: \(self.family.joined(separator: ", "))")
    }
    
    deinit {
        print("- Family deinitializated;")
    }
}

class Father {
    var name: String
    var wife: Mother?
    var son: Kid1?
    var daughter: Kid2?
    
    init(name: String, wife: Mother? = nil) {
        self.name = name
        self.wife = wife
    }
    
    lazy var printFamily: () -> () = { [unowned self] in
        if let wife = self.wife, let son = self.son, let daughter = self.daughter {
            print("\(self.name): \"My wife is \(wife.name), my son is \(son.name) and daughter is \(daughter.name). That's my family.\"")
        } else {
            print("no family")
        }
    }
    
    lazy var printWife: () -> () = { [unowned self] in
        if let wife = self.wife {
            print("\(self.name): \"\(wife.name) is my wife.\"")
        } else {
            print("no wife")
        }
    }
    
    lazy var printKids: () -> () = { [unowned self] in
        if let son = self.son, let daughter = self.daughter {
            print("\(self.name): \"\(son.name) and \(daughter.name) are my kids.\"")
        } else {
            print("no kids")
        }
    }
    
    deinit {
        print("- Father \"\(name)\" deinitializated;")
    }
}

class Mother {
    var name: String
    weak var husband: Father?
    var son: Kid1?
    var daughter: Kid2?
    
    init(name: String, husband: Father, son: Kid1? = nil, daughter: Kid2? = nil) {
        self.name = name
        self.husband = husband
        self.son = son
        self.daughter = daughter
    }
    
    deinit {
        print("- Mother \"\(name)\" deinitializated;")
    }
    
    lazy var loveFamily: () -> () = { [unowned self] in
        print("\"\(self.name): \"I love my family \u{1F496} \"")
    }
}

class Kid1 {
    var name: String
    unowned var mother: Mother
    unowned var father: Father
    
    init(name: String, mother: Mother, father: Father) {
        self.name = name
        self.mother = mother
        self.father = father
    }
    
    weak var kid2: Kid2?
    
    deinit {
        print("- Kid1 \"\(name)\" deinitializated;")
    }
    
    lazy var buyAToy: () -> () = { [unowned self] in
        print("\(self.name): \"\(self.father.name), buy me a toy!\"")
    }
    
    lazy var giveMeAToy: () -> () = { [unowned self] in
        print("\(self.name): \"Hey, \(self.kid2!.name), give me a toy!\"")
    }
}

class Kid2 {
    var name: String
    unowned var mother: Mother
    unowned var father: Father
    
    init(name: String, mother: Mother, father: Father) {
        self.name = name
        self.mother = mother
        self.father = father
    }
    
    weak var kid1: Kid1?
    
    deinit {
        print("- Kid2 \"\(name)\" deinitializated;")
    }
    
    lazy var buyALollipop: () -> () = { [unowned self] in
        print("\(self.name): \"\(self.mother.name), buy me a lollipop!\"")
    }
}

var f: Father?
var m: Mother?
var k1: Kid1?
var k2: Kid2?
var fam: Family?

f = Father(name: "Alexey", wife: m)
m = Mother(name: "Valentina", husband: f!, son: k1, daughter: k2)
k1 = Kid1(name: "Ivan", mother: m!, father: f!)
k2 = Kid2(name: "Lyudmila", mother: m!, father: f!)

fam = Family(father: f!, mother: m!, kid1: k1!, kid2: k2!, family: [""])
fam!.printFamily()

f!.wife = m
f!.son = k1
f!.daughter = k2
f!.printFamily()
f!.printWife()
f!.printKids()

k1!.kid2 = k2
k1!.mother = m!
k1!.father = f!
k1!.giveMeAToy()
k1!.buyAToy()

k2!.kid1 = k1
k2!.mother = m!
k2!.father = f!
k2!.buyALollipop()

m!.loveFamily()

print("\n*deinit process*")

fam = nil
f = nil
m = nil
k1 = nil
k2 = nil

print("*done*\n")
