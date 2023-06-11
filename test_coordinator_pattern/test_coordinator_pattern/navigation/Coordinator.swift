//
//  Coordinator.swift
//  test_coordinator_pattern
//
//  Created by teddy zollver on 11/06/2023.
//

import UIKit

protocol Coordinator {
    
    var navigationController: UINavigationController { get set }

    
}

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController:UINavigationController) {
        self.navigationController = navigationController
        openMainViewController()
    }
    
    func openMainViewController() {
        let vc = MainViewController.init()
        vc.coordinator = self
//        navigationController.pushViewController(vc, animated: false)
    }
    
    func openFirstViewController() {
        print("openFirstViewController")
        
        let vc = FirstViewController.init()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func openSecondViewController() {
        print("openFirstViewController")
        
        let vc = SecondViewController.init()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    
}
