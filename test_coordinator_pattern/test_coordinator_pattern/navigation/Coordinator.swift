//
//  Coordinator.swift
//  test_coordinator_pattern
//
//  Created by teddy zollver on 11/06/2023.
//

import UIKit

protocol NavigateProducer: AnyObject {
    var navigationConsummer: NavigateConsummer? { get }
}

protocol NavigateConsummer: AnyObject {
    func requestNavigate(to route: Route)
}

protocol Coordinator {
    var navigationController: UINavigationController { get }
}

enum Route: String {
    case HomeView
    case FirstView
    case SecondView
    case Back
}

class MainCoordinator: Coordinator {
    let navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        openHomeViewController()
    }

    private func openHomeViewController() {
        let vc = HomeViewController()
        vc.navigationConsummer = self
        vc.modalPresentationStyle = .fullScreen
        navigationController.pushViewController(vc, animated: false)
    }

    private func openFirstViewController() {
        let vc = FirstViewController()
        vc.navigationConsummer = self
        vc.modalPresentationStyle = .fullScreen
        navigationController.pushViewController(vc, animated: true)
    }

    private func openSecondViewController() {
        let vc = SecondViewController()
        vc.navigationConsummer = self
        vc.modalPresentationStyle = .fullScreen
        navigationController.pushViewController(vc, animated: true)
    }
}

extension MainCoordinator: NavigateConsummer {
    func requestNavigate(to route: Route) {
        switch route {
        case Route.HomeView:

            break
        case Route.FirstView:
            openFirstViewController()
        case Route.SecondView:
            openSecondViewController()
        case Route.Back:
            navigationController.popViewController(animated: true)
        }
    }
}
