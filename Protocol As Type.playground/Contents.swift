import UIKit

/*
    Protocol As Type
    Problem: No more type casting
 */

let random: Any = [1, "String", ["123"]]

//: Design Protocol
protocol EastAsianable {
    var useChopstics: Bool { get }
    var origin: String { get }
}


extension EastAsianable {
    var useChopstics: Bool {
        return true
    }
}

//: Create Blueprints
struct Turkish: EastAsianable {
    var origin: String = "Turkey"
}

struct American: EastAsianable {
    var origin: String = "USA"
}

struct English: EastAsianable {
    var origin: String = "England"
}

let eastAsians: [EastAsianable] = [Turkish(), American(), English()]

for eastAsian in eastAsians {
    print("I'm from \(eastAsian.origin)")
}

// Protocol can be a type .....

/*
    Practical Examples
    Combine UILabel, UIImageView, llop through to change colors, animation, and so on.
    Use your imagination.
 */

//: Protocol Met Generics
protocol Sleekable {
    var price: String { get }
}

struct Diamond: Sleekable {
    var price: String = "Very High"
}

struct Ruby: Sleekable {
    var price: String = "High"
}

struct Glass: Sleekable {
    var price: String = "Dirt Cheap"
}

func stateThePrice<T: Sleekable>(enterGem: T) {
    print("I'm expensive. In fact, I'm \(enterGem.price)")
}

stateThePrice(enterGem: Glass())
