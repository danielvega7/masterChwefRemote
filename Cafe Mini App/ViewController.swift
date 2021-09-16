//
//  ViewController.swift
//  Cafe Mini App
//
//  Created by DANIEL VEGA on 9/10/21.
//

import UIKit

class SuperMegaVariables{
    
static var daFood = [String]()
static var daPrice = [Double]()
static var count = -1
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

    func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        if (segue.identifier == "toAdmin") {
        let nvc = segue.destination as! ViewController2
        nvc.name = foodTextField.text!
        nvc.price = Double(priceTextField.text!)!
        }
    }
    
    @IBAction func adminAction(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "toAdmin", sender: nil)
        
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
        cartTextView.text = addedString
    }
    
    
}

