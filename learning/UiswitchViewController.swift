//
//  UiswitchViewController.swift
//  learning
//
//  Created by Neosoft on 20/07/23.
//

import UIKit

class UiswitchViewController: UIViewController {

    @IBOutlet weak var refrenceofswitch: UISwitch!
    @IBOutlet weak var uilabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        if refrenceofswitch.isOn{
            uilabel.text = "Button Is ONN"
        }
    }
    
    @IBAction func switchbutton(_ sender: UISwitch) {
        if refrenceofswitch.isOn{
            uilabel.text = "Button Is ONN"
        }else{
            uilabel.text = "Button Is OFF"
        }
    }
    
    

}
