//
//  ViewController.swift
//  test_xib
//
//  Created by teddy zollver on 02/05/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var xib: Xibcustom!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        xib.setText("hello")

        let rect = CGRect(x: 100, y: 100, width: 250, height: 240)
        let newView = Xibcustom(frame: rect)
        newView.backgroundColor = .green
        view.addSubview(newView)
        
    }


}

