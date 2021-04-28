//
//  AlertPresentable.swift
//  StepMate
//
//  Created by frank on 2021/04/28.
//

import Foundation
import UIKit
import Bond

protocol AlertPresentableView {
    associatedtype ModelType: AlertPresentableViewModel
    
    var model: ModelType { get set }
}

extension AlertPresentableView where Self: UIViewController {
    func bindToAlerts() {
//        model.alertModel.observeOn(.main).observeNext { [weak self] (model) in
//            guard let model = model else {
//                return
//            }
//
//            let alert = AlertPresenter.presentAlert(for: model)
//            self?.present(alert, animated: true, completion: nil)
//        }.dispose(in: bag)
        model.alertModel.observeNext { [weak self] (model) in
            guard let model = model else {
                return
            }
            let alert = AlertPresenter.presentAlert(for: model)
            self?.present(alert, animated: true, completion: nil)
        }.dispose(in: bag)
    }
}
