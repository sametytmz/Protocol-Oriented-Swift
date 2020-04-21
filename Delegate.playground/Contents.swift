import UIKit


/*
    The Delegate Pattern
    Problem: How does delegate even work?
    Note: Purpose of Delegate: Communicate/Pass Data between objects
 */

// Goal: Sen data from FirstVC to SecondVC


// tableView.delegate = self
// collection.delegate = self

// CEO and Secretary Relationship

//: Design Protocol
protocol PassDataDelegate {
    func passData(data: String)
}

//: Design Delegator (Sender)
class FirstVC {
    var delegate: PassDataDelegate?
}


FirstVC().delegate?.passData(data: "a bunch of contracts")

//: Design Delegate (Receiver)
class SecondVC: PassDataDelegate {
    func passData(data: String) {
        print("The CEO gave ne \(data)")
        // UI Update
        // Pop up
        // Animation
    }
}

//: Create Objects
let firstVC = FirstVC()
let secondVC = SecondVC()

//: Assign Delegate
firstVC.delegate = secondVC
firstVC.delegate?.passData(data: "a bunch of contract")


//: Practical Example in iOS
class firstViewController: UIViewController, UITableViewDelegate {
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
        // Animation
        // Go to next view Controller
    }
    
}

// this method will be calling from tableView this way.
//tableView.delegate?.tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
