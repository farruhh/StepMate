//
//  Storyboarded.swift
//  StepMate
//
//  Created by frank on 2021/03/23.
//

import Foundation
import UIKit

///`VC initiator`
protocol StoryBoarded {
    static func instantiate() -> Self
}
extension StoryBoarded where Self: UIViewController {
    static func instantiate() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
