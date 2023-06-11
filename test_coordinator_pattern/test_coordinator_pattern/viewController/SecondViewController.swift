//
//  SecondViewController.swift
//  test_coordinator_pattern
//
//  Created by teddy zollver on 11/06/2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        view.backgroundColor = .green
        
        let rect = CGRect(x: 100, y: 100, width: 250, height: 440)
        let newView = SecondViewXib(frame: rect)
        if let coordinator = coordinator {
            newView.navigationConsummer = coordinator
        }
        view.addSubview(newView)
    }
    
}
