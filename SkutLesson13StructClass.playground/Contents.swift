/*
let student1 = (name: "Alex", age: 20)
let student2 = (name: "Bob", age: 22)

student1.name
student2.age

let student3 = (nam: "Sam", ag: 23)

student3.nam
*/

class StudentClass {
    
    var name : String
    var age : Int
    
    init() {
        name = "No name"
        age = 20
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

struct StudentStruck {
    
    var name : String
    var age : Int
    
}

func addOneYear(student: StudentClass) {
    student.age += 1
}

func addOneYear(student: inout StudentStruck) {
    student.age += 1
}

let stClass = StudentClass(name: "Bob", age: 18)

stClass.name = "Alex"
stClass.age = 21

var stStruct1 = StudentStruck(name: "Sam", age: 24)

//stStruct1.name = "Ivan"
//stStruct1.age = 25

stStruct1

var stStruct2 = stStruct1

stStruct2.age = 25
stStruct2.name = "Samuel"





// HW part 1: Создать структуру Студент. У него будет имя, фамилия, возраст и средний бал оценок. Создать структуру, сделать несколько экземпляров и заполнить их данными. Потом положить их в массив (это будет журнал студентов, класс). Написать функцию, которая принимает массив этих студентов и выводит в консоль данные студентов. Перед каждым студентом ставьте номер по списку в журнале ( как индекс в массиве, но начиная с единицы). Сделать какую-то константу или переменную и присвоить ей этот массив. Получится 2 одинаковых массива. В получившемся массиве поменяйте данные (средний балл или  обнулите циклом его). Распечатайте оба массива и посмотрите изменились ли данные в первом массиве.
print("\n#1. Print class list.")

struct Student {
    
    var firstName: String
    var lastName: String
    var age: Int
    var averageMark: Double
    
}

var student1 = Student(firstName: "Ivan", lastName: "Maslov", age: 25, averageMark: 4.8)
var student2 = Student(firstName: "Nikita", lastName: "Peven", age: 25, averageMark: 4.4)
var student3 = Student(firstName: "Timur", lastName: "Rusanov", age: 25, averageMark: 3.9)
var student4 = Student(firstName: "Semen", lastName: "Kroshkin", age: 24, averageMark: 3.8)
var student5 = Student(firstName: "Egor", lastName: "Parshin", age: 28, averageMark: 4.3)
var student6 = Student(firstName: "Arkady", lastName: "Kazansky", age: 24, averageMark: 5.0)

var list = [student1, student2, student3, student4, student5, student6]

func printList(_ array: [Student]) {
    for (var i, stud) in array.enumerated() {
        print("\(i + 1): \(stud.lastName) \(stud.firstName), \(stud.age) y.o. Avg mark: \(stud.averageMark)")
    }
}

printList(list)

// HW part 2: Используя функцию sorted массива отсортировать массив по среднему баллу по убыванию, т.е. самый высокий балл сверху. И распечатать весь массив, чтобы студенты были расположены по убыванию оценки.
print("\n#2. Print sorted class list by average mark.")

let listMarkSorted = list.sorted { stud1, stud2 in
    stud1.averageMark > stud2.averageMark
}

printList(listMarkSorted)

//HW part 3: Отсортировать массив по возрастанию фамилии (по алфавиту). Попробуйте создать студентов с одинаковыми фамилиями (парочку) и если фамилии одинаковые, то сортировать по имени (т.е. Пупкин Алексей выше Пупкина Дмитрия)
print("\n#3. Print sorted class list by last name and then by fist name.")

var student7 = Student(firstName: "Ruslan", lastName: "Rusanov", age: 39, averageMark: 3.3)

list.append(student7)

let listNameSorted = list.sorted { stud1, stud2 -> Bool in
    if stud1.lastName == stud2.lastName {
        return stud1.firstName < stud2.firstName
    } else {
        return stud1.lastName < stud2.lastName
    }
}

printList(listNameSorted)
