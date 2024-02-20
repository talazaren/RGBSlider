//
//  StartViewController.swift
//  RGBSlider
//
//  Created by Tatiana Lazarenko on 2/20/24.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let settingsVC = segue.destination as? SettingsViewController
        
        settingsVC?.color = view.backgroundColor
    }

}
