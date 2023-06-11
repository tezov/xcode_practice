//
//  HomeViewController.swift
//  test_coordinator_pattern
//
//  Created by teddy zollver on 11/06/2023.
//

import UIKit

class HomeViewController: UIViewController {
  
    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        view.backgroundColor = .yellow
        
        let rect = CGRect(x: 100, y: 100, width: 250, height: 440)
        let newView = HomeViewXib(frame: rect)
        if let coordinator = coordinator {
            newView.navigationConsummer = coordinator
        }
        view.addSubview(newView)
        
    }

    
}
