class Human {
    var weight: Int
    var age: Int
    
    init(weight: Int, age: Int) {
        self.weight = weight
        self.age = age
    }

    convenience init(weight: Int) {
        self.init(weight: weight, age: 0)
    }
    
    convenience init(age: Int) {
        self.init(weight: 0, age: age)
    }
    
    convenience init() {
        self.init(weight: 0)
    }
    
    func test() {}
}
 
let h1 = Human()


class Student: Human {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        super.init(weight: 0, age: 0)
        self.weight = 60
    }
    
    override convenience init(weight: Int, age: Int) {
        self.init(firstName: "")
        self.weight = weight
        self.age = age
    }
    
    convenience init(firstName: String) {
        self.init(firstName: firstName, lastName: "")
        self.age = 25
        test()
    }
}

let s1 = Student(firstName: "Ivan")
let s2 = Student(firstName: "Ivan", lastName: "Maslov")
s2.weight = 68
s2.age = 25

class Doctor: Student {
    var fieldOfStudy: String
    
    init(fieldOfStudy: String) {
        self.fieldOfStudy = fieldOfStudy
        super.init(firstName: "Doctor", lastName: "House")
    }
    /*
    override init(weight: Int, age: Int) {
        self.fieldOfStudy = ""
        super.init(weight: weight, age: age)
    }*/
    
    override init(firstName: String, lastName: String) {
        self.fieldOfStudy = "Health"
        super.init(firstName: firstName, lastName: lastName)
    }
    
    convenience init(firstName: String) {
        self.init(fieldOfStudy: "Math")
        self.age = 35
        self.firstName = firstName
    }
}


let s3 = Student()
let d1 = Doctor(firstName: "")
let d2 = Doctor()
let d3 = Doctor(firstName: "Albert")


