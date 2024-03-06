//
//  PresetSettings.swift
//  HomeWorkAnimationApp
//
//  Created by Anna Lavrova on 06.03.2024.
//
import UIKit

struct PresetSettings {
    let preset: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat

    static func getPresets() -> [PresetSettings] {
        [
            PresetSettings(
                preset: "shake",
                curve: "easeInOut",
                force: 0.1,
                duration: 0.5,
                delay: 0
            ),
            PresetSettings(
                preset: "pop",
                curve: "easeIn",
                force: 0.3,
                duration: 0.4,
                delay: 0.2
            ),
            PresetSettings(
                preset: "morph",
                curve: "easeOut",
                force: 0.5,
                duration: 1,
                delay: 0.2
            )
        ]
    }
}




