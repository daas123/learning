//
//  DatepickerViewController.swift
//  learning
//
//  Created by Neosoft on 21/07/23.
//

import UIKit

class DatepickerViewController: UIViewController {

    
    
    @IBOutlet weak var datepicker: UIDatePicker!
    
 
    @IBOutlet weak var datelabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datepicker.preferredDatePickerStyle = .compact
        datepicker.date = Date()
        datepicker.addTarget(self, action: #selector(dateSelected), for: .valueChanged)
        

    }
    
    
    @IBAction func selection(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex
        {
        case 0 : datepicker.preferredDatePickerStyle = .compact
        case 1:  datepicker.preferredDatePickerStyle = .inline
        case 2: datepicker.preferredDatePickerStyle = .wheels
        default : print("error")
        }
        
    }
    @objc func dateSelected()
    {
        let dateformater = DateFormatter()
        dateformater.dateStyle = .medium
        dateformater.timeStyle = .none
        let date = dateformater.string(from: datepicker.date)
        datelabel.text = date
    }
}
