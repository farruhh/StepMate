//
//  WorkoutModel.swift
//  StepMate
//
//  Created by frank on 2021/04/27.
//

import Foundation

class WorkoutModel {
    var timeInterval: TimeInterval = 1.0
    var lastSavedTime: Date?
    var workoutDuration: TimeInterval = 0.0
    var workoutTimer: Timer?
    var currentWorkoutState: WorkOutState?
    
    init(timeInterval: TimeInterval,
         lastSavedTime: Date?,
         workoutDuration: TimeInterval?,
         workoutTimer: Timer?,
         currentWorkoutState: WorkOutState?)
    {
        self.timeInterval = timeInterval
        self.lastSavedTime = lastSavedTime
        self.workoutDuration = workoutDuration!
        self.workoutTimer = workoutTimer
        self.currentWorkoutState = currentWorkoutState
    }
}
