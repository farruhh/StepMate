//
//  CurrentWorkOutViewController.swift
//  StepMate
//
//  Created by frank on 2021/04/01.
//

import UIKit
import MapKit

enum WorkOutState {
    case inActive
    case active
    case paused
}
class CurrentWorkOutViewController: UIViewController, StoryBoarded {
    @IBOutlet weak var workOutStateLabel: UILabel!
    @IBOutlet weak var workOutTimeLabel: UILabel!
    @IBOutlet weak var workOutDistanceLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    @IBOutlet weak var endWorkoutButton: UIButton!
    @IBOutlet weak var toggleWorkoutButton: UIButton!
    @IBOutlet weak var mapView: MKMapView!
    weak var coordinator: CurrentWorkOutFlow?
    var currentWorkoutState = WorkOutState.inActive
    private let currentWorkoutViewModel = CurrentWorkoutViewModel()
    // MARK: - viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Current Workout"
        
        currentWorkoutViewModel.speedLabel.bind { [weak self] speedLabel in
           self?.speedLabel.text = speedLabel
         }
        currentWorkoutViewModel.caloriesLabel.bind { [weak self] caloriesLabel in
            self?.caloriesLabel.text = caloriesLabel
        }
        currentWorkoutViewModel.workOutDistanceLabel.bind { [weak self] workOutDistanceLabel in
            self?.workOutDistanceLabel.text = workOutDistanceLabel
        }
        currentWorkoutViewModel.workOutTimeLabel.bind { [weak self] workOutTimeLabel in
            self?.workOutTimeLabel.text = workOutTimeLabel
        }
        currentWorkoutViewModel.workOutState.bind { [] workoutState in
            self.workOutStateLabel.text = String(describing: workoutState)
        }
    }
    @IBAction func onToggleWorkoutClicked(_ sender: UIButton) {
        print("onToggleWorkoutClicked")
        switch currentWorkoutState {
        case .active:
            currentWorkoutState = .inActive
        case .inActive:
            currentWorkoutState = .active
        case .paused:
            currentWorkoutState = .paused
        }
    }
    @IBAction func onEndWorkoutClicked(_ sender: UIButton) {
        print("onEndWorkoutClicked")
        
    }
}
