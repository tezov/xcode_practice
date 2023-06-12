//
//  HomeViewController.swift
//  test_coordinator_pattern
//
//  Created by teddy zollver on 11/06/2023.
//

import UIKit

class HomeViewController: UIViewController, NavigateProducer {
    
    weak var navigationConsummer: NavigateConsummer?
    
    override func viewDidLoad() {
        view.backgroundColor = .yellow        
        let xib = HomeViewXib(frame: view.bounds)
        xib.navigationConsummer = navigationConsummer
        view.addSubview(xib)
        
    }

    
}
