//
//  AlertModel.swift
//  StepMate
//
//  Created by frank on 2021/04/28.
//

import Foundation
import UIKit

struct AlertModel {
    struct ActionModel {
        var title: String?
        var style: UIAlertAction.Style
        var handler: ((UIAlertAction) -> ())?
    }
    var actionModels = [ActionModel]()
    var title: String?
    var message: String?
    var prefferedStyle: UIAlertController.Style
}
