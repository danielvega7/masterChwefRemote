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
    @IBOutlet weak var v2foodTextField: UITextField!
    @IBOutlet weak var v2priceTextField: UITextField!
    
    @IBOutlet weak var addedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(name, price)
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func add(_ sender: UIButton) {
        if "" != v2foodTextField.text{
            SuperMegaVariables.daFood.append(v2foodTextField.text!)
            
            if nil != v2priceTextField.text {
                
                if Double(v2priceTextField.text!) != nil{
            SuperMegaVariables.daPrice.append(Double(v2priceTextField.text!)!)
                    
                    SuperMegaVariables.count += 1
                    addedLabel.text = "food: \(SuperMegaVariables.daFood[SuperMegaVariables.count]) price: \(SuperMegaVariables.daPrice[SuperMegaVariables.count])"
                   
                }
                else{
                    addedLabel.text = "fix syntax rn"
                }
            }
            else{
                addedLabel.text = "type something or else"
            }
        }
        else{
            addedLabel.text = "type something in text field bruh"
        }
    }
    
    
}
