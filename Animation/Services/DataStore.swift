//
//  DataStore.swift
//  Animation
//
//  Created by Денис Васильев on 28.12.2022.
//

import SpringAnimation

struct DataStore {
    static let shared = DataStore()
    
    let presets = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}
