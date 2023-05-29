//
//  SecondViewController.swift
//  test_storyboard
//
//  Created by teddy zollver on 02/05/2023.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func onClick(_ sender: Any) {
        //dismiss(animated: true, completion: nil)
        navigationController?.popViewController(animated: true)
        
    }
    
}
