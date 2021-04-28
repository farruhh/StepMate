//
//  UserProfileCoordinator.swift
//  StepMate
//
//  Created by frank on 2021/04/26.
//

import Foundation
import UIKit

protocol UserProfile: class {
    func loadUserProfile()
}
class UserProfileCoordinator: Coordinator, UserProfile {
    weak var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    func initialize() {
        let vc = UserProfileViewController.instantiate()
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func loadUserProfile() {
        print("Load User")
    }
}
