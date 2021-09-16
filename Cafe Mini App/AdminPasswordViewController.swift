//
//  AdminPasswordViewController.swift
//  Cafe Mini App
//
//  Created by Daniel Vega on 9/16/21.
//

import UIKit

class AdminPasswordViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    var password = "Jesusisking"
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func enterAction(_ sender: UIButton) {
        if passwordTextField.text == password{
            performSegue(withIdentifier: "toAdmin", sender: nil)
        }
        else{
            labelOutlet.backgroundColor = UIColor.red
            labelOutlet.text = "fake admin"
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
