//
//  ViewController.swift
//  test_storyboard
//
//  Created by teddy zollver on 29/04/2023.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    

    @IBAction func onClick(_ sender: Any) {
        
        label.text = textField.text
        
    }
    
    @IBAction func unwindToMain(segue:UIStoryboardSegue) {
        
        
    }
    

}

