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

print("\n#1")
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

//HW part 2: функция, которая принимает строку и символ -> либо белая, либо черная (шахматы), распечатать в принте результат переменной

func chess(lett char: Character, number y: Int) -> String {
    let letters = "abcdefgh"
    var cell = String()
    if let letter = letters.firstIndex(of: char) {
        let x = letter.encodedOffset
            if (x + y) % 2 == 0 {
                cell = "White"
            } else {
                cell = "Black"
            }
    }
return cell
}

    print(chess(lett: "a", number: 1))
