//
//  UIStepperViewController.swift
//  learning
//
//  Created by Neosoft on 24/07/23.
//

import UIKit

class UIStepperViewController: UIViewController {
    
    
    @IBOutlet weak var stepper: UIStepper!
    
    @IBOutlet weak var displaystepper: UILabel!
    
    override func viewDidLoad() {
        displaystepper.isHidden = true
        stepper.maximumValue = 10
        stepper.minimumValue = -5
        super.viewDidLoad()

    }
    

    @IBAction func stepper_action(_ sender: UIStepper) {
        displaystepper.isHidden = false
        displaystepper.text = Int(sender.value).description
    }
}
