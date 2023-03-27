class Human {
    
    var firstName: String = ""
    var lastName: String = ""
    
    var fullName: String {
        return firstName + " " + lastName
    }
    
    func sayHello() -> String {
        return "Hello"
    }
}

class Student: Human {
    
    override func sayHello() -> String {
        return super.sayHello() + " my friend!"
    }
}

class Kid: Human {
    
    var favoriteToy: String = "iMac"
    
    override func sayHello() -> String {
        return "agu"
    }
    
    override var fullName: String {
        return firstName
    }
    
    override var firstName: String {
        set {
            super.firstName = newValue + " :)"
        }
        get {
            return super.firstName
        }
    }
    
    override var lastName: String {
        didSet {
            print("new value " + self.lastName)
        }
    }
}
    

let human = Human()

human.firstName = "Ivan"
human.lastName = "Maslov"
human.fullName
human.sayHello()

let student = Student()

student.firstName = "Arkady"
student.lastName = "Kazansky"
student.fullName
student.sayHello()

let kid = Kid()
kid.firstName = "Kid"
kid.lastName = "123456"
kid.fullName
kid.sayHello()
kid.favoriteToy

// полиморфизм:

let array = [kid, student, human]

for value in array {
    print(value.sayHello())
}


// HW Part 1: Artists
print("\nHW. Part #1")

class Artist {
    
    var firstName: String = ""
    var lastName: String = ""
    
    func show() -> String {
        return self.firstName + " " + self.lastName + " performs"
    }
}

class Musician: Artist {
    
    override func show() -> String {
        return super.show() + " music."
    }
}

class Clown: Artist {

    override func show() -> String {
        return super.show() + " show."
    }
}

class Painter: Artist {

    var alias = "Picasso"
    
    override var firstName: String {
        set {
            super.firstName = alias
        }
        get {
            return super.firstName
        }
    }
    
    override var lastName: String {
        set {
            super.lastName = ""
        }
        get {
            return super.lastName
        }
    }

    override func show() -> String {
        return super.show() + " painting the new masterpiece."
    }
}

let musicant = Musician()
musicant.firstName = "Iogann"
musicant.lastName = "Bakh"
//print(musicant.show())

let clown = Clown()
clown.firstName = "Yriy"
clown.lastName = "Kuklachev"
//print(clown.show())

let painter = Painter()
painter.firstName = "Pablo"
painter.lastName = "Picasso"
//print(painter.show())

let arrayArtists = [musicant, clown, painter]
for user in arrayArtists {
    print(user.show())
}




// HW Part 2: Vehicles
print("\nHW. Part #2")

class Vehicle {
    var name: String {
        return ""
    }
    
    var speed: Int {
        return 0 // km/h
    }
    
    var capacity: Int {
        return 0 // people
    }
    
    var cost: Int {
        return 0 // dollars for 100 km/h
    }
    
    func calculate(distance: Int, countOfPeople: Int) -> (Double, Double, Double) {
        let priceForTrip: Double = Double((distance / 100) * cost * countOfPeople)
        let timeForTrip: Double = Double(distance / speed)
        let numberOfShipments = Double(countOfPeople / capacity)
        
        return (priceForTrip, timeForTrip, numberOfShipments)
        }
    }

class Plane: Vehicle {
    override var name: String {
        return "Airbus"
    }
    
    override var speed: Int {
        return 900
    }
    
    override var capacity: Int {
        return 850
    }
    
    override var cost: Int {
        return 50
    }
}

class Ship: Vehicle {
    override var name: String {
        return "Titanic"
    }
    
    override var speed: Int {
        return 42
    }
    
    override var capacity: Int {
        return 1300
    }
    
    override var cost: Int {
        return 40
    }
}

class Car: Vehicle {
    override var name: String {
        return "Multivan"
    }
    
    override var speed: Int {
        return 120
    }
    
    override var capacity: Int {
        return 8
    }
    
    override var cost: Int {
        return 10
    }
}

class Train: Vehicle {
    override var name: String {
        return "Falcon"
    }
    
    override var speed: Int {
        return 252
    }
    
    override var capacity: Int {
        return 600
    }
    
    override var cost: Int {
        return 25
    }
}

var vehicles = [Plane(), Ship(), Car(), Train()]

for unit in vehicles {
    print(unit.calculate(distance: 2562, countOfPeople: 12))
//    for value in unit {
//        print("Price: \(value[0]), Time: \(value[1]), Count of vehicles: \(value[2])")
//    }
}
