//
//  RootTabBarCoordinator.swift
//  StepMate
//
//  Created by frank on 2021/04/25.
//

import Foundation
import UIKit

class RootTabBarCoordinator: Coordinator {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    func initialize() {
        let vc = MainViewController.instantiate()
        vc.coordinator = self
        
        let startWorkoutNavigationController = UINavigationController()
        let userProfileNavigationController = UINavigationController()
        let stepsNavigationController = UINavigationController()
        
        let startWorkoutCoordinator = WorkoutFlowCoordinator(navigationController: startWorkoutNavigationController)
        let userProfileCoordinator = UserProfileCoordinator(navigationController: userProfileNavigationController)
        let stepsCoordinator = StepsCoordinator(navigationController: stepsNavigationController)
        
        startWorkoutNavigationController.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 1)
        stepsNavigationController.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 2)
        userProfileNavigationController.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 3)
        
        vc.viewControllers = [
            stepsNavigationController,
            startWorkoutNavigationController,
            userProfileNavigationController
        ]
        
        vc.modalTransitionStyle = .crossDissolve
        
        coordinate(to: stepsCoordinator)
        coordinate(to: startWorkoutCoordinator)
        coordinate(to: userProfileCoordinator)
        UIApplication.change(vc)
    }
}
