//
//  DropDownMenu.swift
//  FinalProjectG2
//
//  Created by Fabiha Khanam on 6/30/22.
//

import UIKit


class DropDownMenu: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var menuNameArray:[String] = ["Credit Cards", "Investing", "Scholarships"]
    var menueNamesTempArray:[String] = []
    var menuNamesSearchArray:[String] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        menuNameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = menuNameArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        dropDownMenu.text = menuNameArray [indexPath.row]
        Options.isHidden = true
    }
    @IBAction func menuEditingDidBegin(_ sender: Any) {
        Options.isHidden = false
        menueNamesTempArray = menuNameArray
    }
    
    @IBAction func menuEditingDidEnd(_ sender: Any) {
        Options.isHidden = true
        menuNameArray = menueNamesTempArray

    }
    
    @IBAction func menuEditingChanged(_ sender: Any) {
        Options.isHidden = false
        menuNameArray = menueNamesTempArray
        filterArray(searchText: dropDownMenu.text!)
        menuNameArray = menuNamesSearchArray
        Options.reloadData()
        
        if menuNameArray.count > 0 {
            if menuNameArray[0] == "Credit Cards"{
                CreditCardOutlet.isHidden = false
            }
        }
        
   
    }
    
    
    func filterArray(searchText: String) {
        menuNamesSearchArray = menuNameArray.filter{
            item in return item.lowercased().contains(searchText.lowercased())
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Options.delegate = self
        Options.dataSource = self
        Options.isHidden = true
        CreditCardOutlet.isHidden = true
    }
    
    @IBOutlet weak var Options: UITableView!
    //^genretextfeild
    
    @IBOutlet weak var dropDownMenu: UITextField!
    //^genretableview
    
    
//    @IBAction func CreditCardButton(_ sender: UIButton) {
//    }
    
    
    
    
    @IBOutlet weak var CreditCardOutlet: UIButton!
    
    
}
