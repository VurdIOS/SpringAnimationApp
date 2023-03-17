//
//  DataStore.swift
//  SpringAnimationApp
//
//  Created by Камаль Атавалиев on 17.03.2023.
//
final class DataStore {
    
    static let shared = DataStore()
    
    let presets = [
        "pop",
        "slideLeft",
        "slideRight",
        "slideDown",
        "slideUp",
        "squeezeLeft",
        "squeezeRight",
        "squeezeDown",
        "squeezeUp",
        "fadeIn",
        "fadeOut",
        "fadeOutIn",
        "fadeInLeft",
        "fadeInRight",
        "fadeInDown",
        "fadeInUp",
        "zoomIn",
        "zoomOut",
        "fall",
        "shake",
        "flipX",
        "flipY",
        "morph",
        "squeeze",
        "flash",
        "wobble",
        "swing"
    ]
    
    let curve = [
        "easeIn",
         "easeOut",
         "easeInOut",
         "linear",
         "spring",
         "easeInSine",
         "easeOutSine",
         "easeInOutSine",
         "easeInQuad",
         "easeOutQuad",
         "easeInOutQuad",
         "easeInCubic",
         "easeOutCubic",
         "easeInOutCubic",
         "easeInQuart",
         "easeOutQuart",
         "easeInOutQuart",
         "easeInQuint",
         "easeOutQuint",
         "easeInOutQuint",
         "easeInExpo",
         "easeOutExpo",
         "easeInOutExpo",
         "easeInCirc",
         "easeOutCirc",
         "easeInOutCirc",
         "easeInBack",
         "easeOutBack",
         "easeInOutBack"
    ]
}
