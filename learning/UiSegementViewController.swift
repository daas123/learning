//
//  UiSegementViewController.swift
//  learning
//
//  Created by Neosoft on 20/07/23.
//

import UIKit

class UiSegementViewController: UIViewController {

    @IBOutlet weak var segment: UISegmentedControl!
    
    
    @IBOutlet var backgroundview: UIView!
    
    @IBOutlet weak var layerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundview.backgroundColor = .gray
        layerView.backgroundColor = .green
    }
    
    @IBAction func segment(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0
        {
            backgroundview.backgroundColor = .gray
            layerView.backgroundColor = .green
        }
        else if sender.selectedSegmentIndex == 1
        {
            backgroundview.backgroundColor = .blue
            layerView.backgroundColor = .red
        }
    }
    
}
