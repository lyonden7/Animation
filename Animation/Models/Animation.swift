//
//  Animation.swift
//  Animation
//
//  Created by Денис Васильев on 28.12.2022.
//

// MARK: - Model
struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
}

// MARK: - Extension - get instance
extension Animation {
    static func getAnimation() -> Animation {
        Animation(
            preset: DataStore.shared.presets.randomElement()?.rawValue ?? "pop",
            curve: DataStore.shared.curves.randomElement()?.rawValue ?? "easeInOut",
            force: Double.random(in: 0.8...2),
            duration: Double.random(in: 0.8...2),
            delay: Double.random(in: 0...1)
        )
    }
}

