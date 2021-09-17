//
//  ShoppingMenu.swift
//  Cafe Mini App
//
//  Created by Daniel Vega on 9/16/21.
//

import UIKit

class ShoppingMenu: UIViewController {

    @IBOutlet weak var textViewOutlet: UITextView!
    var addedDat = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
 
    @IBAction func refreshAction(_ sender: UIButton) {
        var jamal = 0
       
        while(jamal <= SuperMegaVariables.menuCount){
            addedDat += "\(jamal + 1).) food: \(SuperMegaVariables.menuFood[jamal]) \t price: \(SuperMegaVariables.menuPrice[jamal]) \n"
            jamal += 1
        }
        textViewOutlet.text = "Menu \n" + addedDat
    }
    
}
