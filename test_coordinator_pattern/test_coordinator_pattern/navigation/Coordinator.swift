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

protocol NavigateConsummer {
    
    func requestNavigate(_ sender: UIButton)
    
}

protocol NavigateProducer {
    
    var navigationConsummer: NavigateConsummer? { get set }
    
}

enum Route:String{
    case HomeView = "HomeView"
    case FirstView = "FirstView"
    case SecondView = "SecondView"
    case Back = "Back"
}

class MainCoordinator: Coordinator, NavigateConsummer {
    
    var navigationController: UINavigationController
    
    init(navigationController:UINavigationController) {
        self.navigationController = navigationController
        openHomeViewController()
    }
    
    func requestNavigate(_ sender: UIButton) {
        let routeString = sender.titleLabel?.text ?? "NotFound"
        guard let route = Route(rawValue: routeString) else { return }
        
        switch route {
            case Route.HomeView:
                
            break
            case Route.FirstView:
                openFirstViewController()
            break
            case Route.SecondView:
                openSecondViewController()
            break
            case Route.Back:
                navigationController.popViewController(animated: true)
            break
        }
        
    }
    
    private func openHomeViewController() {
        let vc = HomeViewController.init()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    private func openFirstViewController() {
        let vc = FirstViewController.init()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    private func openSecondViewController() {
        let vc = SecondViewController.init()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    
}
