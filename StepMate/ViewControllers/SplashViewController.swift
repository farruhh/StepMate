//
//  SplashViewController.swift
//  StepMate
//
//  Created by frank on 2021/03/23.
//

import UIKit
import Lottie

class SplashViewController: UIViewController, StoryBoarded {
    weak var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    //MARK: - viewDidAppear
    override func viewDidAppear(_ animated: Bool) {
        let animationView = AnimationView()
        let animation = Animation.named("running", bundle: Bundle.main)
        animationView.animation = animation
        animationView.frame = CGRect(origin: .zero, size: CGSize(width: self.view.frame.size.width, height: 200))
        animationView.center = self.view.center
        animationView.loopMode = .loop
        animationView.contentMode = .scaleAspectFit
        animationView.play { (finished) in
            DispatchQueue.main.asyncAfter(deadline: .now() +  2.0, execute: {
                UIApplication.change(UIStoryboard.mainViewController())
            })
        }
        view.addSubview(animationView)
    }
}
