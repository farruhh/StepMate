//
//  UIApplication+StepMate.swift
//  StepMate
//
//  Created by frank on 2021/03/23.
//

import Foundation
import Foundation
import UIKit
///`UIApplication custom extension`
extension UIApplication {
    static func app() -> AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
    static func rootNavigation() {
        let rootVC = UIStoryboard.mainNavigation()
        change(rootVC)
    }
    static func change(_ vc: UIViewController) {
        guard let window = UIApplication.shared.keyWindow else {
            return
        }
        window.rootViewController = vc
        let options: UIView.AnimationOptions = .transitionCrossDissolve
        let duration: TimeInterval = 0.3
        UIView.transition(with: window, duration: duration, options: options, animations: {}, completion: { completed in
            // maybe do something on completion here
        })
    }
}
