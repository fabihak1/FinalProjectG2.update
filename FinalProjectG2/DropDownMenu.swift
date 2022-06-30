//
//  DropDownMenu.swift
//  FinalProjectG2
//
//  Created by Thania Khanam on 6/30/22.
//

import UIKit


class DropDownMenu: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var menuNameArray:[String] = ["Credit Cards", "Investing", "Scholarships"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        menuNameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = menuNameArray[indexPath.row]
        return cell
    }
    
//    @IBAction func editingDidBegin(_ sender: Any) {
//
//    }
    
    @IBAction func editingDidBegin(_ sender: Any) {
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Options.delegate = self
        Options.dataSource = self
      
    }
    
    @IBOutlet weak var Options: UITableView!
    
    @IBOutlet weak var dropDownMenu: UITextField!
    
    
    
}
