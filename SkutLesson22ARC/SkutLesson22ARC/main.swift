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

