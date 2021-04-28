//
//  AlertPresenter.swift
//  StepMate
//
//  Created by frank on 2021/04/28.
//

import Foundation
import UIKit

class AlertPresenter {
    static func presentAlert(for model: AlertModel) -> UIAlertController {
        let controller = UIAlertController(title: model.title, message: model.message, preferredStyle: model.prefferedStyle)
        
        model.actionModels.forEach({ controller.addAction(UIAlertAction(title: $0.title, style: $0.style, handler: $0.handler)) })
        
        return controller
    }
}
