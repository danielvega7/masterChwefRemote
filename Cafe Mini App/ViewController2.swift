//
//  ViewController2.swift
//  Cafe Mini App
//
//  Created by DANIEL VEGA on 9/14/21.
//

import UIKit

class ViewController2: UIViewController {

    
var name = ""
    var price = 0.0
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(name, price)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func transferToCart(_ sender: UIButton) {
        
    }
    
    
}
