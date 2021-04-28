//
//  InitializeCoordinator.swift
//  StepMate
//
//  Created by frank on 2021/04/25.
//

import Foundation
import UIKit

protocol InitializeFlow {
    func loadRootTabBar()
}
class InitializeCoordinator: Coordinator, InitializeFlow {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    func initialize() {
        let vc = SplashViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    func loadRootTabBar() {
        let rootTabBarCoordinator = RootTabBarCoordinator(navigationController: navigationController)
        coordinate(to: rootTabBarCoordinator)
    }
}
