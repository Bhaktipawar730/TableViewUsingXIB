//
//  ViewController.swift
//  TableViewWithXIB
//
//  Created by Mac on 18/01/25.
//

import UIKit

class ViewController: UIViewController {
    
    var fruit:[String]=["Apple","Banana","Cherry","Fig","Grapes","Guava","Kiwi","Mango","Orange","Pear","Pomegranate","Strawberry","Watermelon"]

    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
           tableView.delegate = self
            tableView.dataSource = self
    }


}
    extension ViewController : UITableViewDelegate,UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return fruit.count
        }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        cell.label.text = fruit[indexPath.row]
        return cell

    }
    
}
