//
//  CurrentWorkoutViewModel.swift
//  StepMate
//
//  Created by frank on 2021/04/27.
//

import Foundation

public class CurrentWorkoutViewModel {
    var workOutState = Box(WorkOutState.inActive)
    var workOutTimeLabel = Box("12000")
    var workOutDistanceLabel = Box("12000")
    var caloriesLabel = Box("12000")
    var speedLabel = Box("12000")
}
