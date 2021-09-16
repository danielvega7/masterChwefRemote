//
//  ViewController.swift
//  Cafe Mini App
//
//  Created by DANIEL VEGA on 9/10/21.
//

import UIKit

class SuperMegaVariables{
    
static var menuFood = ["rice", "steak", "winter rolls", "pasta"]
static var menuPrice = [2.50, 5.00, 3.00, 4.00]
    
static var daFood = [String]()
static var daPrice = [Double]()
static var count = -1
static var menuCount = 3
    
    
}



class ViewController: UIViewController {

    @IBOutlet weak var foodTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var cartLabel: UILabel!
    @IBOutlet weak var cartTextView: UITextView!
    
    var hereCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    
    
    @IBAction func addToCart(_ sender: UIButton) {
        
        if "" != foodTextField.text{
            SuperMegaVariables.daFood.append(foodTextField.text!)
            
            if nil != priceTextField.text {
                
                if Double(priceTextField.text!) != nil{
            SuperMegaVariables.daPrice.append(Double(priceTextField.text!)!)
                    hereCount += 1
                    SuperMegaVariables.count += 1
                    cartLabel.text = "food: \(SuperMegaVariables.daFood[SuperMegaVariables.count]) price: \(SuperMegaVariables.daPrice[SuperMegaVariables.count])"
                   
                }
                else{
                    cartLabel.text = "fix syntax rn"
                }
            }
            else{
                cartLabel.text = "type something or else"
            }
        }
        else{
            cartLabel.text = "type something in text field bruh"
        }
        
        
        
        
        
        
        
        var jamal = 0
        var addedString = ""
        while(jamal <= SuperMegaVariables.count){
            addedString += "\(jamal + 1).) food: \(SuperMegaVariables.daFood[jamal]) \t price: \(SuperMegaVariables.daPrice[jamal]) \n"
            jamal += 1
        }
        cartTextView.text = "Shopping Cart \n" + addedString
    }
    
    
}

