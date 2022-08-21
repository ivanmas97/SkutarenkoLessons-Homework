//DRY

func calculateMoney(inWallet wallet: [Int], _ type: Int? = nil) -> (total: Int, count: Int) {
    
    var sum = 0
    var count = 0

    for value in wallet {
        if type == nil || value == type! {
            sum += value
            count += 1
        }
    }
    
    return (sum, count)
    //print("Sum equals \(sum)")
}

func calculateMoney(inSequence range: Int...) -> Int {
    var sum = 0
    for value in range {
        sum += value
    }
    return sum
}

calculateMoney(inSequence: 2, 5, 4, 3, 32, 3, 4, 3, 4)

let wallet = [100, 5, 1, 5, 5, 20, 50, 100,  1, 1]

let (money, count) = calculateMoney(inWallet: wallet)
money
count
calculateMoney(inWallet: wallet, 5)

func sayHi() {
    print("Hi!")
}

//sayHi()

let hi/*:() -> ()*/ = sayHi
hi()
type(of: hi)

func sayPhrase (_ phrase:String) -> Int? {
    print(phrase)
    return 0
}
sayPhrase("aaa")

let say = sayPhrase
say("bbb")

func doSomething(_ whatToDo: () -> ()) {
    whatToDo()
}

doSomething(hi)

func whatToDo() -> () -> () {
    func printSomething(){
        print("Hello world")
    }
    return printSomething
}
let iShouldDoThis = whatToDo()
iShouldDoThis()






//HW part 1: создать пару функций (3-4), которые возвращают строку с каким-то смайликом, вывести в одном принте все функции.

print("\n#1. Unicode symbols.")

func heart() -> (String) {
    return "❤️"
}

func car() -> (String) {
    return "\u{1f698}"
}

func books() -> (String) {
    return "\u{1f4da}"
}
print("\(heart()) \(car()) \(books())")

//HW part 2: функция, которая принимает строку и символ -> либо белая, либо черная (шахматы), распечатать в принте результат переменной.

print("\n#2. Chess cell: black or white.")

func chess(letter char: Character, number y: Int) -> String {
    let letters = "abcdefgh"
    var cell = String()
    if let letter = letters.firstIndex(of: char) {
        let x = letter.encodedOffset
        print(x)
            if (x + y) % 2 == 0 {
                cell = "White"
            } else {
                cell = "Black"
            }
    }
return cell
}

    print(chess(letter: "b", number: 4))

//HW part 3: Cоздать функцию, которая принимает массив/последовательность и возвращает массив в обратном порядке.

print("\n#3. Reversed array.")

func reversedArray(_ initial: [Int]) -> [Int] {
    var reverse = [Int]()
    for i in initial.reversed() {
        reverse.append(i)
    }
    return reverse
}
print(reversedArray([1, 2, 3, 4, 5]))

// упрощенный вариант
func reversedArray2(_ initial: Int...) -> [Int] {
    initial.reversed()
}
print(reversedArray2(1, 3, 5, 6, 7))

//HW part 4: Cоздать массив, создать функцию c inout входным массивом, которая не будет ничего возвращать, но будет изменять исходный массив в обратном порядке.

print("\n#4. Reversed inout array.")

func inoutReversed(_ initial: inout [Int]) {
    initial = initial.reversed()
}

var array = [2, 4, 6, 8]
print("Initial array: \(array)")

inoutReversed(&array)
print("Reversed: \(array)")


//HW part 5*: Создать функцию, которая принимает строку и возвращает ее без знаков препинания (_), все гласные переведены в заглавные, все согласные - в строчные, все цифры изменены на слова.

print("\n#5*. String conversion.")

let greeting = "Hello, Mr. James Bond 007!"

func stringConversion(_ initial: String) -> String {
    var converded = String()
    let number: [Character: String] = ["0": "Zero", "1": "One", "2": "Two", "3": "Three", "4": "Four", "5": "Five", "6": "Six", "7": "Seven", "8": "Eight", "9": "Nine"]
    for i in initial {
        switch i {
        case "a", "e", "i", "o", "u", "y": converded += i.uppercased()
        case "Q", "W", "R", "T", "P", "S", "D", "F", "G", "H", "J", "K", "L", "Z", "X", "C", "V", "B", "N", "M": converded += i.lowercased()
        case ",", ".", "!", "?": converded += "_"
        case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
            if let word = number[i] {
                converded += word
            }
        default: converded.append(i)
        }
    }
    return converded
}

print(stringConversion(greeting))
