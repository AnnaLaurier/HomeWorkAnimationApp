//
//  ViewController.swift
//  HomeWorkAnimationApp
//
//  Created by Anna Lavrova on 06.03.2024.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var presetLabel: SpringLabel!
    @IBOutlet weak var curveLabel: SpringLabel!
    @IBOutlet weak var forceLabel: SpringLabel!
    @IBOutlet weak var durationLabel: SpringLabel!
    @IBOutlet weak var delayLabel: SpringLabel!

//    let presetLabel = presetLabel.animation.count.

    @IBOutlet weak var runAnimationButton: SpringButton!

    private var animationStarted = false

    private var selectedPreset: PresetSettings?

    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.layer.cornerRadius = 10
        runAnimationButton.layer.cornerRadius = 10

        updatePreset()
    }

    @IBAction func runAnimationTapped(_ sender: SpringButton) {
        guard let selectedPreset else { return }

        presetLabel.text = "preset: \(selectedPreset.preset)"
        curveLabel.text = "curve: \(selectedPreset.curve)"
        forceLabel.text = "force: \(selectedPreset.force)"
        durationLabel.text = "duration: \(selectedPreset.duration)"
        delayLabel.text = "delay: \(selectedPreset.delay)"

        animationView.animation = selectedPreset.preset
        animationView.curve = selectedPreset.curve
        animationView.force = selectedPreset.force
        animationView.duration = selectedPreset.duration
        animationView.delay = selectedPreset.delay

        animationView.animate()
        updatePreset()
    }

    private func updatePreset() {
        selectedPreset = PresetSettings.getPresets().randomElement()
        runAnimationButton.setTitle("Run \(selectedPreset?.preset ?? "")", for: .normal)
    }
}
