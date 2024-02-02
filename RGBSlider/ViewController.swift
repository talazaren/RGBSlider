//
//  ViewController.swift
//  RGBSlider
//
//  Created by Tatiana Lazarenko on 2/2/24.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var coloredView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupColorLabels()
        coloredView.layer.cornerRadius = 20
    }

    @IBAction func redSliderAction() {
        redLabel.text = getRoundedValue(redSlider.value)
        createCurrentColor()
    }
    
    @IBAction func greenSliderAction() {
        greenLabel.text = getRoundedValue(greenSlider.value)
        createCurrentColor()
    }
    
    @IBAction func blueSliderAction() {
        blueLabel.text = getRoundedValue(blueSlider.value)
        createCurrentColor()
    }
    
    private func setupColorLabels() {
        redLabel.text = redSlider.value.formatted()
        greenLabel.text = greenSlider.value.formatted()
        blueLabel.text = blueSlider.value.formatted()
    }
    
    private func getRoundedValue(_ value: Float) -> String? {
        let roundedValue = round(value * 100) / 100.0
        return roundedValue.formatted()
    }
    
    private func createCurrentColor() {
        let currentColor = CGColor(
            red: CGFloat(
                redSlider.value
            ),
            green: CGFloat(
                greenSlider.value
            ),
            blue: CGFloat(
                blueSlider.value
            ),
            alpha: 1
        )
        
        coloredView.backgroundColor = UIColor(cgColor: currentColor)
    }
}

