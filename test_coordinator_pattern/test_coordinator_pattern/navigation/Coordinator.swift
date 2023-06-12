//
//  Coordinator.swift
//  test_coordinator_pattern
//
//  Created by teddy zollver on 11/06/2023.
//

import UIKit

protocol NavigateConsummer : AnyObject{
    
    func requestNavigate(to route: Route)
    
}

protocol NavigateProducer : AnyObject {
    
    var navigationConsummer: NavigateConsummer? { get }
    
}

protocol Coordinator: NavigateConsummer {
    
    var navigationController: UINavigationController { get }
    
}


enum Route:String{
    case HomeView = "HomeView"
    case FirstView = "FirstView"
    case SecondView = "SecondView"
    case Back = "Back"
}

class MainCoordinator: Coordinator {
    
    let navigationController: UINavigationController
    
    init(navigationController:UINavigationController) {
        self.navigationController = navigationController
        openHomeViewController()
    }
    
    func requestNavigate(to route: Route) {
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
        vc.navigationConsummer = self
        vc.modalPresentationStyle = .fullScreen
        navigationController.pushViewController(vc, animated: false)
    }
    
    private func openFirstViewController() {
        let vc = FirstViewController.init()
        vc.navigationConsummer = self
        vc.modalPresentationStyle = .fullScreen
        navigationController.pushViewController(vc, animated: true)
    }
    
    private func openSecondViewController() {
        let vc = SecondViewController.init()
        vc.navigationConsummer = self
        vc.modalPresentationStyle = .fullScreen
        navigationController.pushViewController(vc, animated: true)
    }
    
    
}
