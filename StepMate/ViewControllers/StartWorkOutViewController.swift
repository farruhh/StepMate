//
//  StartWorkOutViewController.swift
//  StepMate
//
//  Created by frank on 2021/04/01.
//

import UIKit
import MapKit
import CoreLocation
import CocoaLumberjack

class StartWorkOutViewController: UIViewController, StoryBoarded, AlertPresentableView {
        
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var workOutTypeSelection: UISegmentedControl!
    @IBOutlet weak var startWorkOutButton: UIButton!
    var coordinator: CurrentWorkOutFlow?
    var currentWorkoutState: WorkOutState?
    let timeInterval: TimeInterval = 1.0
    var lastSavedTime: Date?
    var workoutDuration: TimeInterval = 0.0
    var workoutTimer: Timer?
    var locationManager: LocationServicesManager?
    var startWorkoutViewModel = StartWorkoutViewModel()
    var alertViewModel = AlertViewModel()
    
    //MARK: - viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Start Workout"
        
        bindToAlerts()
        alertViewModel.setup()
    }
    @IBAction func onStartWorkoutTap(_ sender: Any) {
        locationManager?.requestLocationPermission()
        coordinator?.loadCurrentWorkOut()
    }

}
