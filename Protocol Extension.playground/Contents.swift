import UIKit

/*
    Protocol Extension
    Problem: I don't even want to type anymore
 */


/*
    Note: the best code is maximum output, minimum input.
 */


protocol MathGenius {
    func calculateGPA()
}


extension MathGenius {
    func calculateGPA() {
        print("I'm too cool for school")
    }
}

struct Samet: MathGenius { }

Samet().calculateGPA()

class Samett: MathGenius {
    func calculateGPA() {
        print("1.2 GPA")
    }
}

Samett().calculateGPA()

//: Practical Protocol Extension
protocol FindAreable {
    func calculateArea(side: Double, lenght: Double) -> String
}

extension FindAreable {
    func calculateArea(side: Double, lenght: Double) -> String {
        let area = String(side * lenght)
        return "The area is \(area)"
    }
}

struct Square: FindAreable {}
struct Hexagon: FindAreable {}

Square().calculateArea(side: 4, lenght: 10)
Hexagon().calculateArea(side: 6, lenght: 10)

Hexagon.init().calculateArea(side: 6, lenght: 10)

//: Usage Case
//: 1. UILabel, UIImageView, UIView --> Animation
//: 2. Storyboard Identifier
//: 3. Reusable table and collection view cells
