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
        view.backgroundColor = .white
    }
    
}
