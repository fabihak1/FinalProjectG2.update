
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

 
}

 //ViewController.swift
//  FinalProjectG2
//
//  Created by Isabella Arevalo on 28/6/22.
//import DropDown
//import UIKit
//
//class ViewController: UIViewController {
//
//    let menu: DropDown = {
//        let menu = DropDown()
//        menu.dataSource = [
//        "Item 1",
//        "Item 2",
//        "Item 3"
//        ]
//        return menu
//    }()
//
//    @IBOutlet weak var Button: UIButton!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        let myView = UIView(frame: navigationController?.navigationBar.frame ?? .zero)
//        navigationController?.navigationBar.topItem?.titleView = myView
//        guard let topView = navigationController?.navigationBar.topItem?.titleView else {
//            return
//        }
//
//        let gesture = UITapGestureRecognizer(target: self, action: #selector(didTapTopItem))
//        gesture.numberOfTapsRequired = 1
//        gesture.numberOfTouchesRequired = 1
//        topView.addGestureRecognizer(gesture)
//        Do; any additional setup after loading the view.
//    }
//
//    @objc func didTapTopItem() {
//        menu.show()
//    }
//    @IBAction func ButtonTapped (_sender: UIButton) {
//
//    }
//}
