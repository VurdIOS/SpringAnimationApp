//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by Камаль Атавалиев on 17.03.2023.
//

import UIKit
import SpringAnimation
// MARK: - AnimationViewController
final class AnimationViewController: UIViewController {
    
    // MARK: - IB Outlet
    @IBOutlet var animationView: SpringView!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    
    @IBOutlet var runButton: UIButton!
    
    // MARK: - Public Properties
    let randomAnimations = randomAnimation.generateAnimation()
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        runButton.setTitle("Run", for: .normal)
        
        // Захардкодил первый экран с такими параметрами
        presetLabel.text = "Preset: shake"
        curveLabel.text = "Curve: linear"
        forceLabel.text = "Force: 1.4"
        durationLabel.text = "Duration: 0.4"
        delayLabel.text = "Delay: 0.4"
    }
    
    // MARK: - IB Actions
    @IBAction func runAnimationButton() {
        // Условный оператор который при первом нажатии на кнопку вызывает стартовую
        // анимацию, далее меняется текст кнопки и анимация генерируется из модели
        if runButton.currentTitle == "Run" {
            firstAnimation()
        } else {
            getRandomAnimation()
            setLabels()
        }
        runButton.setTitle("Next", for: .normal)
    }
    
    // MARK: - Private Methods
        // Метод для первой настройки первой захардкоженной анимации
    private func firstAnimation() {
        animationView.animation = "shake"
        animationView.curve = "linear"
        animationView.force = 1.4
        animationView.duration = 0.4
        animationView.delay = 0.4
        animationView.animate()
    }
        // Метод для генерации анимаций. Пресет и кривую беру из модели, остальное
        // генерирую по месту
        // Строки не переносил, потому что посчитал что так читабильнее
    private func getRandomAnimation() {
        animationView.animation = randomAnimations.preset[Int.random(in: 0..<randomAnimations.preset.count)]
        animationView.curve = randomAnimations.curve[Int.random(in: 0..<randomAnimations.curve.count)]
        animationView.force = CGFloat.random(in: 0.1...2)
        animationView.duration = CGFloat.random(in: 0.2...2)
        animationView.delay = CGFloat.random(in: 0.3...1)
        animationView.animate()
    }
    // Метод для настройки текста во вьюхе анимации
    private func setLabels() {
        presetLabel.text = "Preset: \(animationView.animation)"
        curveLabel.text = "Curve: \(animationView.curve)"
        forceLabel.text = "Force: \(String(format: "%.2f", animationView.force))"
        durationLabel.text = "Duration: \(String(format: "%.2f", animationView.duration))"
        delayLabel.text = "Delay: \(String(format: "%.2f", animationView.delay))"
    }
}
// Пока не смог реализовать название следующей анимации в кнопке...
