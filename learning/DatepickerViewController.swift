//
//  DatepickerViewController.swift
//  learning
//
//  Created by Neosoft on 21/07/23.
//

import UIKit

class DatepickerViewController: UIViewController {
    
    
    @IBOutlet weak var datelabel: UILabel!
    @IBOutlet weak var datepicker: UIDatePicker!
    
    let now = Date()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datepicker.preferredDatePickerStyle = .compact
        datepicker.minimumDate = now  // this is for adding
        datepicker.addTarget(self, action: #selector(gettindate), for: .valueChanged)
//        datepicker.date += TimeInterval(900)  //global addition of 15 min in code
    }
    
    @IBAction func selectionview(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex{
        case 0 : datepicker.preferredDatePickerStyle = .compact
        case 1 : datepicker.preferredDatePickerStyle = .inline
        case 2 : datepicker.preferredDatePickerStyle = .wheels
        default : print("hello")
        }
        
    }
    @objc func gettindate()
    {
        let dateselector = DateFormatter()
        dateselector.dateStyle = .medium
        dateselector.timeStyle = .short
//        let date = dateselector.string(from: datepicker.date + TimeInterval(900))   // this for Adding 15 min in selected time
        let date = dateselector.string(from: datepicker.date )
        datelabel.text = date
}
    
}
