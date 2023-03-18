//
//  DataStore.swift
//  SpringAnimationApp
//
//  Created by Камаль Атавалиев on 17.03.2023.
//
// MARK: - DataStore
final class DataStore {
    // Реализовал локальную синглтон базу
    
    // В группе читал что есть замечания что сингтон реализовывают не в полном
    // обьеме, поэтому вычитал в интернете про uniqueInstance
    
    // upd1 - Прочитал что можно реализовывать и без этой проверки
    // Просто через static let shared как на уроках, якобы так лучше реализовывается
    // многопоточная безопасность, оставлю так, может пригодится
    private static var uniqueInstance: DataStore?
    
    static func shared() -> DataStore {
        if uniqueInstance == nil {
            uniqueInstance = DataStore()
        }
        return uniqueInstance!
    }
    // Некоторые анимации подразумевают исчезновение, потом нужно будет перебрать
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
    private init () {}
}
