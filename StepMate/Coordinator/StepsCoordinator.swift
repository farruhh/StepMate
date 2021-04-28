//
//  StepsCoordinator.swift
//  StepMate
//
//  Created by frank on 2021/04/26.
//

import Foundation
import UIKit

class StepsCoordinator: Coordinator {
    weak var navigationController: UINavigationController?
   
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    func initialize() {
        let vc = StepsViewController.instantiate()
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }
}
