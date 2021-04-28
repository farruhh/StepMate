//
//  WorkoutFlowCoordinator.swift
//  StepMate
//
//  Created by frank on 2021/04/25.
//

import Foundation
import UIKit

protocol StartWorkOutFlow: class {
    func loadStartWorkout()
}
protocol CurrentWorkOutFlow: class {
    func loadCurrentWorkOut()
}
class WorkoutFlowCoordinator: Coordinator, StartWorkOutFlow, CurrentWorkOutFlow {
    weak var navigationController: UINavigationController?

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func initialize() {
        let vc = StartWorkOutViewController.instantiate()
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }
    func loadCurrentWorkOut() {
        print("tap2")
        let vc = CurrentWorkOutViewController.instantiate()
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }
    func loadStartWorkout() {
        let workoutFlowCoordinator = WorkoutFlowCoordinator(navigationController: navigationController!)
        coordinate(to: workoutFlowCoordinator)
    }
}
