//
//  Storyboarded.swift
//  StepMate
//
//  Created by frank on 2021/03/23.
//

import Foundation
import UIKit

/// `Coordinator Pattern Protocol : VC Initiator through Storyboard`
/// `- Requires All VC to confirm to StoryBoarded .`
protocol StoryBoarded {
    static func instantiate() -> Self
}
extension StoryBoarded where Self: UIViewController {
    static func instantiate() ->  Self {
        let id = String (describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        return storyboard.instantiateViewController(identifier: id) as! Self
    }
}
