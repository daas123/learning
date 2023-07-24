//
//  UIPickerViewController.swift
//  learning
//
//  Created by Neosoft on 23/07/23.
//

import UIKit

class UIPickerViewController: UIViewController {
    
    //refrence for textfields
    
    @IBOutlet weak var country: UITextField!
    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var village: UITextField!
    
    let countryarr = ["India", "Brazil" , "USA" ,"Germany" ,"Italy"]
    let cityarr = ["mumbai","delhi","gujrat","pune"]
    let villagearr = ["kurar", "dindishi" , "malad","goregoan"]
    
    var countrypickerview = UIPickerView()
    var citypickerview = UIPickerView()
    var villagepickerview = UIPickerView()
    
    //refrence for picker view
    
    @IBOutlet weak var pickerrefrence: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        country.inputView = countrypickerview
        city.inputView = citypickerview
        village.inputView = villagepickerview
//
//        pickerrefrence.delegate = self
//        pickerrefrence.dataSource = self
//
        countrypickerview.delegate = self
        countrypickerview.dataSource = self
        citypickerview.delegate = self
        citypickerview.dataSource = self
        villagepickerview.delegate = self
        villagepickerview.dataSource = self
        countrypickerview.tag = 1
        citypickerview.tag = 2
        villagepickerview.tag = 3
        
        
        
    }
}
extension UIPickerViewController : UIPickerViewDelegate , UIPickerViewDataSource
{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch pickerView.tag
        {
        case 1:
            return countryarr.count
        case 2:
            return cityarr.count
        case 3:
            return villagearr.count
            
        default : return 0
        }
        
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch pickerView.tag
        {
        case 1:
            return countryarr[row]
        case 2:
            return cityarr[row]
        case 3:
            return villagearr[row]
            
        default : return "hello"
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch pickerView.tag
        {
        case 1:
            country.text = countryarr[row]
        case 2:
            city.text = cityarr[row]
        case 3:
            village.text = villagearr[row]
        default : 0
            
        }
    }
    
    
}
