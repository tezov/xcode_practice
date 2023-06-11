//
//  FirstViewController.swift
//  test_coordinator_pattern
//
//  Created by teddy zollver on 11/06/2023.
//

import UIKit

class FirstViewController: UIViewController {
    
    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        view.backgroundColor = .gray
        
        let rect = CGRect(x: 100, y: 100, width: 250, height: 440)
        let newView = FirstViewXib(frame: rect)
        if let coordinator = coordinator {
            newView.navigationConsummer = coordinator
        }
        view.addSubview(newView)
        
    }
    
}
