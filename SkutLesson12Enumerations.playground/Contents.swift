// Enumerations.

import Foundation

enum Direction: String {
    case Left = "Left!"
    case Rigth = "Right!"
}

enum Action {
    case Walk(meters: Int)
    case Run(meters: Int, speed: Double)
    case Stop
    case Turn(direction: Direction)
}

var action = Action.Run(meters: 20, speed: 15.0)
action = .Stop
action = .Walk(meters: 10)
action = .Run(meters: 20, speed: 15.0)
action = .Turn(direction: .Rigth)

var right = Direction(rawValue: "Right!")!
action = .Turn(direction: right)


switch action {
case .Stop:
    print("Stop!")
//case .Walk(let m): print("Walk \(m) meters.")
case .Walk(let m) where m < 100:
    print("Short walk.")
case .Walk:
    print("Long walk.")
case .Run(let m, let s):
    print("Run \(m) meters with speed \(s) kmh.")
case .Turn(let dir) where dir == .Left:
    print("Turn left.")
case .Turn(let dir) where dir == .Rigth:
    print("Turn right.")
default: break
}

print(Direction.Rigth.rawValue)


//HW part 1. Созать Перечисление с шахматными фигурами, каждый Enum должен иметь цвет, букву и цифру своей базово позиции. Инициализровать несколько фигур на доске, чтобы они стояли в позиции: черному королю "мат".

print("\n#1. Chess: Checkmate to the black king.")

enum ChessmanColor: String {
    case White, Black
}

enum Chessman: String {
    case King, Queen, Bishop, Knight, Rook, Pawn
}

enum PositionLetter: String {
    case A, B, C, D, E, F, G, H
}

enum PositionNumber: Int {
    case One = 1, Two, Three, Four, Five, Six, Seven, Eight
}

typealias PieceType = (ChessmanColor, Chessman, PositionLetter, PositionNumber)

var whiteQueen: PieceType = (.White, .Queen, .C, .Eight)
var blackPawn1: PieceType = (.Black, .Pawn, .G, .Six)
var blackPawn2: PieceType = (.Black, .Pawn, .H, .Five)
var blackKing: PieceType = (.Black, .King, .G, .Four)
var whitePawn1: PieceType = (.White, .Pawn, .H, .Four)
var whitePawn2: PieceType = (.White, .Pawn, .G, .Three)
var whiteKing: PieceType = (.White, .King, .F, .Two)
var blackQueen: PieceType = (.Black, .Queen, .A, .One)


//HW part 2. Положить все фигуры в массив, сделать каждый тип енума rawValue типа стринг (???). Создать функцию, которая принимает фигуру и возвращает тип фигуры, цвет и позицию. Создать функцию, которая принимает массив и говорит, где какая фигура расположена.

var chessmanArray = [whiteQueen, blackPawn1, blackPawn2, blackKing, whitePawn1, whitePawn2, whiteKing, blackQueen]

// Создавать первую функицию из ТЗ не имеет смысла, т.к. вызов отдельной фигуры по имени изначально возвращает ее цвет, тип и позицию в виде кортежа данных.

func chessPictureDescription (array type: [PieceType]) {
for i in type {
    print("The \(i.0.rawValue) \(i.1.rawValue) is in position \(i.2.rawValue + String(i.3.rawValue)).")
    }
}

chessPictureDescription(array: chessmanArray)

//HW part 3. Создать функцию, которая рисует доску из массива с фигурами в виде unicode-символов.

//func drawChessPicture (_ array: [PieceType])  {}

print("\nChess board")

func drawChessBoard() -> String {

var symb = String()
for vertical in 0...7 {
    for horizontal in 0...7 {
        symb += (horizontal + vertical) % 2 == 0 ? "⬜️ " : "⬛️ "
    }
    print(symb)
    symb = String()
}
return symb
}

drawChessBoard()

// to be continued...
