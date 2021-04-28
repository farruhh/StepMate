//
//  AppCoordinator.swift
//  StepMate
//
//  Created by frank on 2021/04/25.
//

import Foundation
import UIKit
/// `Application Coordinator`
class AppCoordinator: Coordinator {
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    func initialize() {
        let navigationController = UINavigationController()
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        let initializeCoordinator = InitializeCoordinator(navigationController: navigationController)
        coordinate(to: initializeCoordinator)
    }
}
