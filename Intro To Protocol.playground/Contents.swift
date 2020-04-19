import UIKit

/*
    Intro To Protocols
    Problem: Protocols, who are you?
 */


/*
            **** Protocols prevent all things ****
     Drawbacks of OOP
     1- When you subclass, you have to inherit properties and methods which you may not need.
        Your object becomes unnecessarily bloated.
     2- When you make a lot of super classes, it becomes extremely hard to navigate between each class and fix bugs/edit.
     3- Since objects are referencing to the same place in memory, if you make a copy and create a small change its property,
        it can mess up the rest. (Mutability due to reference)
 */

/*
    Note: Protocol is like a basketball coach. He/she tells players what to do, he/she doesn't know how to dunk.
*/

//: Protocols, all value type...
protocol Humanable {
    var name: String { get set }
    var race: String { get set }
    func sayHi()
}

struct Turkey: Humanable {
    var name: String = "Samet Yatmaz"
    
    var race: String = "Turkish"
    
    func sayHi() {
        print("Hello, I'm \(name)")
    }
    
}


class USA: Humanable {
    var name: String = "Mechelle Dolacrex"
    var race: String = "American"
    
    func sayHi() {
        print("Hello, I'm \(name)")
    }
}

//: Protocol Inheritance
protocol SuperHumanable: Humanable {
    var canFly: Bool { get set }
    func punch()
}

struct SametTheDeveloper: SuperHumanable {
    var name: String = "Samet"
    
    var race: String = "Turkish"
    
    func sayHi() {
        print("I am a iOS Developer")
    }
    
    var canFly: Bool = false
    
    func punch() {
        print("I can but I don't want")
    }
}

//: { get set } vs { get }

// { get set } only applies to computed property
protocol Breathable {
    var isBreathing: Bool { get set }
    var isLiving: Bool { get }
}

struct Human: Breathable {
    var isBreathing: Bool {
        get {
            return true
        }
        set{}
    }
    
    var isLiving: Bool {
        get {
            return true
        }
        
    }
}

print("Hello")
// { get }
// Stored Property
// Computed Property -> Gettable, Settable (Optional)

// { get set }
// Stored Property
// Computed Property -> Gettable, Settable (Must)
