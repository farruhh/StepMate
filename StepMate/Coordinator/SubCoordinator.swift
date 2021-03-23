//
//  SubCoordinator.swift
//  StepMate
//
//  Created by frank on 2021/03/23.
//

import Foundation
import UIKit
///`Coordinator Pattern Protcol`
protocol SubCoordinator {
    var subCoordinators: [SubCoordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
