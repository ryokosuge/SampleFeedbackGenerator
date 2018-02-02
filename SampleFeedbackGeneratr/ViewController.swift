//
//  ViewController.swift
//  SampleFeedbackGenerater
//
//  Created by ryokosuge on 2018/02/02.
//  Copyright © 2018年 ryokosuge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var impactStyleHeavyFeedbackButton: UIButton?
    @IBOutlet weak var impactStyleMediumFeedbackButton: UIButton?
    @IBOutlet weak var impactStyleLightFeedbackButton: UIButton?

    @IBOutlet weak var notificationTypeSuccessFeedbackButton: UIButton?
    @IBOutlet weak var notificationTypeErrorFeedbackButton: UIButton?
    @IBOutlet weak var notificationTypeWarningFeedbackButton: UIButton?

    @IBOutlet weak var selectionFeedbackButton: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

/// MARK: - button actions
extension ViewController {

    @IBAction func touchImpactStyleHeavyFeedbackButton(_ button: UIButton) {
        let feedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
        feedbackGenerator.impactOccurred()
    }

    @IBAction func touchImpactStyleMediumFeedbackButton(_ button: UIButton) {
        let feedbackGenerator = UIImpactFeedbackGenerator(style: .medium)
        feedbackGenerator.impactOccurred()
    }

    @IBAction func touchImpactStyleLightFeedbackButton(_ button: UIButton) {
        let feedbackGenerator = UIImpactFeedbackGenerator(style: .light)
        feedbackGenerator.impactOccurred()
    }

    @IBAction func touchNotificationTypeSuccessFeedbackButton(_ button: UIButton) {
        let feedbackGenerator = UINotificationFeedbackGenerator()
        feedbackGenerator.notificationOccurred(.success)
    }

    @IBAction func touchNotificationTypeErrorFeedbackButton(_ button: UIButton) {
        let feedbackGenerator = UINotificationFeedbackGenerator()
        feedbackGenerator.notificationOccurred(.error)
    }

    @IBAction func touchNotificationTypeWarningFeedbackButton(_ button: UIButton) {
        let feedbackGenerator = UINotificationFeedbackGenerator()
        feedbackGenerator.notificationOccurred(.warning)
    }

    @IBAction func touchSelectionFeedbackButton(_ button: UIButton) {
        let feedbackGenerator = UISelectionFeedbackGenerator()
        feedbackGenerator.selectionChanged()
    }
    
}

