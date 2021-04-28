//
//  LocationServicesManager.swift
//  StepMate
//
//  Created by frank on 2021/04/26.
//

import Foundation
import UIKit
import CoreLocation


protocol LocationServices {
    func requestLocationPermission()
    func presentLocationPermissionAlert()
    func requestAlwaysPermission()
    func presentLocationPermissionErrorAlert()
}
class LocationServicesManager: NSObject {
    var locationManager: CLLocationManager?
    
    init(locationManager: CLLocationManager ) {
        self.locationManager = locationManager
    }
}
extension LocationServicesManager: LocationServices {
    func requestLocationPermission() {
        locationManager?.delegate = self
        print("Location Permission Requested..")
        if CLLocationManager.locationServicesEnabled() {
            print("Location Services are enabled..")
            switch locationManager!.authorizationStatus {
            case .notDetermined:
                locationManager!.requestWhenInUseAuthorization()
            case .authorizedWhenInUse:
                requestAlwaysPermission()
            case .authorizedAlways:
                //                coordinator?.loadCurrentWorkOut()
                print("authorizedAlways")
            default:
                presentLocationPermissionErrorAlert()
            }
        } else {
            presentLocationPermissionAlert()
        }
    }
    
    func presentLocationPermissionAlert() {
        let locationPermissionAlert = UIAlertController(title: "Permission Error", message: "Please Enable Location Service On Your Device", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        locationPermissionAlert.addAction(okAction)
        locationPermissionAlert.present(animated: true, completion: nil)
    }
    
    func requestAlwaysPermission() {
        if let isLocationConfigured = UserDefaults.standard.value(forKey: "isLocationConfigured") as? Bool, isLocationConfigured == true {
            //startWorkout
        } else {
            locationManager!.requestAlwaysAuthorization()
        }
    }
    
    func presentLocationPermissionErrorAlert() {
        let alert = UIAlertController(title: "Permission Error", message: "Please enable location services for this app", preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okAction)
        alert.show()
    }
    
}

extension LocationServicesManager: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        print("Permission Change update..")
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let mostRecentLocation = locations.last else {
            print("Unable to load the most recent location")
            return
        }
        print("Most Recent Location: [\(String(describing: mostRecentLocation))]")
    }

}
