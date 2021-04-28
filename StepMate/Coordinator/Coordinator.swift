//
//  Coordinator.swift
//  StepMate
//
//  Created by frank on 2021/04/25.
//

import Foundation

protocol Coordinator {
    func initialize()
    func coordinate(to coordinator: Coordinator)
}
extension Coordinator {
    func coordinate(to coordinator: Coordinator) {
        coordinator.initialize()
    }
}

