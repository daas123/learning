//
//  UISliderViewController.swift
//  learning
//
//  Created by Neosoft on 24/07/23.
//

import UIKit

class UISliderViewController: UIViewController {

    
    @IBOutlet weak var updatelabel: UILabel!
    @IBOutlet weak var sliderrefrence: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updatelabel.isHidden = true
        sliderrefrence.minimumValue = 0
        sliderrefrence.maximumValue = 10
    }
    
    
    @IBAction func slideracton(_ sender: UISlider) {
        updatelabel.isHidden = false
        updatelabel.text = Int(round(sender.value)).description
        // we can use both round or int to get stiff value
        //updatelabel.text = Int(sender.value).description
    }
    
    
    

}
