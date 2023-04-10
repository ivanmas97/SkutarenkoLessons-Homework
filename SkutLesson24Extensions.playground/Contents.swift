extension Int {
    
    var isEven: Bool {
        return self % 2 == 0
    }
    
    var isOdd: Bool {
        return !isEven
    }
    
    enum EvenOrOdd {
        case Even
        case Odd
    }
    
    var evenOrOdd: EvenOrOdd {
        return isEven ? .Even : .Odd
    }
    
    func pow(_ value: Int) -> Int {
        var temp = self
        
        for _ in 1..<value {
            temp *= self
        }
        return temp
    }
    
    mutating func powTo(value: Int) {
        self = pow(value)
    }
    
    var binaryString: String {
        var result = ""
        for i in 0..<8 {
            result = String(self & (1 << i) > 0) + result
        }
        return result
    }
}

extension Int.EvenOrOdd {
    var string: String {
        switch self {
        case .Odd: return "odd"
        case .Even: return "even"
        }
    }
}

extension String {
    init(_ value: Bool) {
        self.init(value ? 1 : 0)
    }
    
    subscript(start: Int, lenght: Int) -> String {
        let start = self.index(self.startIndex, offsetBy: start)
        let end = self.index(self.startIndex, offsetBy: lenght)
        return String(self[start..<end])
    }
}

var a = 4
a.isEven
a.isOdd
a.evenOrOdd.string

a.pow(5)
a.powTo(value: 6)
a.powTo(value: 2)

a = 157
a.binaryString



let s = "Hello, World!"
s[0,3]


//HW part 1: Extension for Int (0 - false, positive or negative - true)

extension Int {
    
    enum NegativeOrPositive {
        case Negative
        case Positive
        case Null
    }
    
    var isPositive: Bool {
        return self > 0
    }
    
    var isNegative: Bool {
        return self < 0
    }
    
    var isNull: Bool {
        return self == 0
    }
    
    var negativeOrPositive: NegativeOrPositive {
        if self.isPositive {
            return .Positive
        } else if self.isNegative {
            return .Negative
        } else {
            return .Null
        }
    }
}

extension Int.NegativeOrPositive {
    var bool: Bool {
        switch self {
        case .Positive, .Negative: return true
        default: return false
        }
    }
}

let test = 1230
test.negativeOrPositive
test.negativeOrPositive.bool
