//
//  Presets.swift
//  SpringAnimationApp
//
//  Created by Камаль Атавалиев on 17.03.2023.
//

import Foundation

// MARK: - RandomAnimation
struct randomAnimation {
    let preset: [String]
    let curve: [String]
   
    
    static func generateAnimation() -> randomAnimation {
        
        let presets = DataStore.shared.presets
        let curve = DataStore.shared.curve

        
        return randomAnimation(
            preset: presets,
            curve: curve

        )
        
        
        
        
    }
}
