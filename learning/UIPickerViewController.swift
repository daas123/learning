//
//  UIPickerViewController.swift
//  learning
//
//  Created by Neosoft on 23/07/23.
//

import UIKit

class UIPickerViewController: UIViewController {

    var pickerdata = [1,2,3,4]
    @IBOutlet weak var picker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    // Number of columns of data
    


}
extension UIPickerViewController : UIPickerViewDataSource
{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerdata.count
    }
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        return pickerdata.
//    }
    
}
extension UIPickerViewController : UIPickerViewDelegate
{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(pickerdata[row])
    }
    
}
