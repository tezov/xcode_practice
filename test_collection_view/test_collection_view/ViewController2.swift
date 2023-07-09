//
//  ViewController2.swift
//  test_collection_view
//
//  Created by teddy zollver on 09/07/2023.
//

import Foundation

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func performBack(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
}
