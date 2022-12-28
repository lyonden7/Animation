//
//  AnimationViewController.swift
//  Animation
//
//  Created by Денис Васильев on 26.12.2022.
//

import UIKit
import SpringAnimation

class AnimationViewController: UIViewController {

    // MARK: - IB Outlets
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var animationView: SpringView! {
        didSet {
            animationView.layer.cornerRadius = 10
        }
    }
    
    @IBOutlet var runButton: UIButton! {
        didSet {
            runButton.layer.cornerRadius = 10
        }
    }
    
    // MARK: - Private Properties
    private var animation = Animation.getAnimation()
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabels()
    }
    
    // MARK: - IB Actions
    @IBAction func runButtonPressed(_ sender: SpringButton) {
        setupLabels()
        
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.animate()
        
        animation = Animation.getAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
}

extension AnimationViewController {
    private func string(from value: Double) -> String {
        String(format: "%.2f", value)
    }
    
    private func setupLabels() {
        presetLabel.text = animation.preset
        curveLabel.text = animation.curve
        forceLabel.text = string(from: animation.force)
        durationLabel.text = string(from: animation.duration)
        delayLabel.text = string(from: animation.delay)
    }
}
