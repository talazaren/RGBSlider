//
//  StartViewController.swift
//  RGBSlider
//
//  Created by Tatiana Lazarenko on 2/20/24.
//

import UIKit

protocol SettingsViewControllerDelegate: AnyObject {
    func setBackgroundColor(red: CGFloat, green: CGFloat, blue: CGFloat)
}

final class StartViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let settingsVC = segue.destination as? SettingsViewController
        settingsVC?.color = view.backgroundColor
        settingsVC?.delegate = self
    }
}

// MARK: - SettingsViewControllerDelegate
extension StartViewController: SettingsViewControllerDelegate {
    
    func setBackgroundColor(red: CGFloat, green: CGFloat, blue: CGFloat) {
        view.backgroundColor = UIColor(
            red: red,
            green: green,
            blue: blue,
            alpha: 1
        )
    }
}
