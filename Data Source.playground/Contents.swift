import UIKit

/*
    Data Source
    Problem: Bi-Directional Communication
 */

/*
    Note: Purpose of Data Source: Communicate (Backward) from SeconVC(delegate) to FirstVC(delegator)
 */


//: CEO and Secretary Relationship
//: Design Protocol
protocol PassDataDelegate {
    func passData(data: String) -> String
}

//: Design Delegator (Sender/CEO)
class FirstVC {
    var delegate: PassDataDelegate?
}

FirstVC().delegate?.passData(data: "a bunch of contracts")


//: Design Delegate (Receiver/Secretary)
class SecondVC: PassDataDelegate {
    func passData(data: String) -> String {
        print("The CEO gave me \(data)")
        return "I'm too tired..."
    }
}

//: Create Objects
let firstVC = FirstVC()
let secondVC = SecondVC()

//: Assign Delegate
firstVC.delegate = secondVC
let message = firstVC.delegate?.passData(data: "a bunch of contracts!")
if let message = message {
    print(message)
}


//: Practical Examples in iOS
class MainViewController: UIViewController, UITableViewDataSource {
    var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell(style: .default, reuseIdentifier: "cell")
    }
    
}


/*
    ### UIKit Example
    - 'UITableView'
    - 'UICollectionView'
 */
