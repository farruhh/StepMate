//
//  AlertViewModel.swift
//  StepMate
//
//  Created by frank on 2021/04/28.
//

import Foundation
import Bond

class AlertViewModel: AlertPresentableViewModel {
    var alertModel = Observable<AlertModel?>(nil)
    
    func setup() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.alertModel.value = AlertModel(actionModels: [AlertModel.ActionModel.init(title: "OK", style: .default, handler: nil)], title: "Alert example", message: "That's our easy alert.", prefferedStyle: .alert)
        }
    }
}
