import Foundation

struct Student {
    
    var firstName: String {
        
        willSet {
            print("will set " + newValue + " insted of " + firstName)
        }
        didSet {
            print("did set " + firstName + " insted of " + oldValue)
            firstName = firstName.localizedCapitalized
        }
        
        

    }
    

}

var student = Student(firstName: "Alex")

student.firstName
student.firstName = "Bob"

student.firstName = "ivan"
print(student.firstName)


