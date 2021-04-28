//
//  AppDelegate.swift
//  StepMate
//
//  Created by frank on 2021/03/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var coordinator: AppCoordinator?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        coordinator = AppCoordinator(window: window!)
        coordinator?.initialize()
        return true
    }

}

