let array = ["a", "b", "c"]

array[0]
array[1]
array[2]

struct Family {
    var father = "Father"
    var mother = "Mother"
    var kids = ["Kid1", "Kid2", "Kid3"]
    
    var count: Int {
        return 2 + kids.count
    }
    
    subscript(index: Int) -> String? {
        get {
            switch index {
            case 0: return father
            case 1: return mother
            case 2..<(2 + kids.count): return kids[index - 2]
            default: return nil
            }
        }
        set {
            let value = newValue ?? ""
            
            switch index {
            case 0: return father = value
            case 1: return mother = value
            case 2..<(2 + kids.count): return kids[index - 2] = value
            default: break
            }
        }
    }
    subscript(index: Int, suffix: String) -> String? {
        var name = self[index] ?? ""
        name += " " + suffix
        return name
    }
}
var family = Family()
family.father
family.mother
family.kids[0]

family.count

family[0]
family[1]
family[3]
family[10]


family[0] = "Daddy"
family[1] = "Mommy"
family.father
family.mother
family[3] = "Buddy"
family.kids[1]

family[3, "the great"]
family.kids[1]

struct Field {
    
    var dict = [String: String]()
    
    func key(column: String, row: Int) -> String {
        return column + String(row)
    }
    
    subscript(column: String, row: Int) -> String? {
        get {
            return dict[key(column: column, row: row)]
        }
        set(new) {
            dict[key(column: column, row: row)] = new
        }
    }
}

var field = Field()
field["a", 5] = "X"
field["a", 5]
field["a", 6]

//HW #1: chess field

enum Color: String {
    case black = "Black"
    case white = "White"
}

struct ChessField {
    
//    let number = ["1", "2", "3", "4", "5", "6", "7", "8"]
//    let letter = ["a", "b", "c", "d", "e", "f", "g", "h"]
    
    subscript(letter: String, number: Int) -> String? {
        
        switch number {
        case 1...8: number
        default: return nil
        }

        switch letter {
        case "a"..."h": letter
        default: return nil
        }
        
        for (index, _) in letter.enumerated() {
            if (number + index) % 2 == 0 {
                print(Color.white.rawValue)
            } else {
                print(Color.black.rawValue)
            }
        }
        return String(letter) + String(number)
    }
}

var chess = ChessField()
chess["e", 4]



//HW #2: tic-tac-toe game

enum Game: Character {
    case x = "❌"
    case o = "⭕️"
    case empty = "⬜️"
}

class GameField {
    var sizeField: Int
    var cell = [[Game]]()
    
    init(sizeField: Int) {
        self.sizeField = sizeField
        for _ in 1...sizeField {
            var line = [Game]()
            for _ in 1...sizeField {
                line.append(.empty)
            }
            cell.append(line)
        }
    }
    
    func showField() {
        for (_, value) in cell.enumerated() {
            var line = " "
            for char in value {
                line += String(char.rawValue)
            }
            print(line)
        }
    }
    
    subscript(x: Int, y: Int) -> Game {
        get {
            return cell[y][x]
        }
        set {
            print("________\n (\(x); \(y))")
            cell[y][x] = newValue
            game.showField()
        }
    }
}



var game = GameField(sizeField: 3)
game.showField()
game[1,2] = .x
game[2,1] = .o

