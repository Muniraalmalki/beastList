//
//  ViewController.swift
//  beastList
//
//  Created by munira almallki on 27/02/1443 AH.
//

import UIKit
var item = [String]()
class ViewController: UIViewController {

    @IBOutlet weak var textTextField: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
    }
    @IBAction func beastButtonPressed(_ sender: UIButton) {
       if textTextField.text!.isEmpty {
           print("")
        }
        else{
            item.append(textTextField.text!)
            tableView.reloadData()
        
        
    }

}
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return item.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "item", for: indexPath)
        cell.textLabel?.text = item[indexPath.row]
        return cell
    }
    
}

