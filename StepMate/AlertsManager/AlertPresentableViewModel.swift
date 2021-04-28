//
//  AlertPresentableViewModel.swift
//  StepMate
//
//  Created by frank on 2021/04/28.
//

import Foundation
import Bond

protocol AlertPresentableViewModel {
    var alertModel: Observable<AlertModel?> { get set }
}
