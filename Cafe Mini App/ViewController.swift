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
static var count = 0
}



class ViewController: UIViewController {

    @IBOutlet weak var foodTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    
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
        SuperMegaVariables.daFood.append(foodTextField.text!)
        SuperMegaVariables.daPrice.append(Double(priceTextField.text!)!)
        hereCount += 1
        SuperMegaVariables.count += 1
        print(SuperMegaVariables.daFood, SuperMegaVariables.daPrice)
    }
    
    
}

