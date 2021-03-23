//
//  Storyboard+UIViewController.swift
//  StepMate
//
//  Created by frank on 2021/03/23.
//

import Foundation
import UIKit
import KWDrawerController

///`Storyboard + VC initiator`
extension UIStoryboard {
    fileprivate class func mainStoryBoard() -> UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    class func mainNavigation() -> UINavigationController {
        return mainStoryBoard().instantiateViewController(identifier: "MainNavigationView") as! UINavigationController
    }
    class func splashViewController() -> SplashViewController {
        return mainStoryBoard().instantiateViewController(identifier: "SplashViewController") as! SplashViewController
    }
    class func createWorkoutViewController() -> CreateWorkoutViewController {
        return mainStoryBoard().instantiateViewController(withIdentifier: "CreateWorkoutViewController") as! CreateWorkoutViewController
    }
    class func mainViewController() -> MainViewController {
        return mainStoryBoard().instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
    }
}

