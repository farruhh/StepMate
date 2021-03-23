//
//  MainCoordinator.swift
//  StepMate
//
//  Created by frank on 2021/03/23.
//

import Foundation
import UIKit
///`Coordinator Pattern: App Navigation Flow Manager.`
class MainCoordinator: SubCoordinator {
    var subCoordinators = [SubCoordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    func start() {
        print("Loaded.. .")
        UIApplication.app().window?.rootViewController = self.navigationController
        let vc = SplashViewController.instantiate()
        vc.coordinator = self
        self.navigationController.pushViewController(vc, animated: true)
    }
}
