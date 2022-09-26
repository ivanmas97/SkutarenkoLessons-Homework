struct Point {
    var x: Int
    var y: Int
    
    /*mutating func moveByX(_ x: Int, andY y: Int) {
        self.x += x
        self.y += y
    }*/
    
    mutating func moveByX(_ x: Int, andY y: Int) {
        self = Point(x: self.x + x, y: self.y + y)
    }

}

enum Color {
    case White, Black
    
    static func numberOfElements() -> Int {
        return 2
    }
    
    mutating func invert() {
        /*if self == .White {
            self = .Black
        } else {
            self = .White
        }*/
        self = self == .White ? .Black : .White
    }
}

var color = Color.Black
color.invert()
Color.numberOfElements()

func move(point: inout Point, byX x: Int, andY y: Int) -> Point {
    point.x += x
    point.y += y
    return point
}

var p = Point(x: 1, y: 1)

move(point: &p, byX: 2, andY: 4)
print(p)
move(point: &p, byX: 1, andY: 1)
print(p)

p.moveByX(10, andY: 10)
print(p)



