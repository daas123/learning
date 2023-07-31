//
//  ViewController.swift
//  learning
//
//  Created by Neosoft on 20/07/23.
//

import UIKit

struct way{
    var num = Int()
    var name = String()
}
class ViewController: UIViewController {
    
    var detials = [
        way(num: 1, name: "UiSegment") ,
        way(num: 2, name: "UiSwitch") ,
        way(num: 3, name: "Uiimageview"),
        way(num: 4, name: "UIProgressView"),
        way(num: 5, name: "DatepickerViewController"),
        way(num: 6, name: "UiScrollview"),
        way(num: 7, name: "UIPickerView"),
        //
        way(num: 8, name: "UIStepper"),
        way(num: 9, name: "UISlider"),
        way(num: 10, name: "UIPageControl"),
        way(num: 11, name: "UIWebView"),
        way(num: 12, name: "Uistackview"),
        
    ]
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController : UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return detials.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        let cnt =  detials[indexPath.row]
        cell.gettingtopics.text = cnt.name
        cell.gettingNUmber.text = String(cnt.num)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cnt =  detials[indexPath.row]
        let Uiswitch = storyboard?.instantiateViewController(withIdentifier: "UiswitchViewController") as! UiswitchViewController
        let UiSegment = storyboard?.instantiateViewController(withIdentifier: "UiSegementViewController") as! UiSegementViewController
        let Uiimageview = storyboard?.instantiateViewController(withIdentifier: "UiimageViewController") as! UiimageViewController
        let UIProgressView = storyboard?.instantiateViewController(withIdentifier: "UIProgressViewController") as! UIProgressViewController
        let DatepickerViewController = storyboard?.instantiateViewController(withIdentifier: "DatepickerViewController") as! DatepickerViewController
        let UiScrollview = storyboard?.instantiateViewController(withIdentifier: "UiScrollview") as! UiScrollview
        let UIPickerView = storyboard?.instantiateViewController(withIdentifier: "UIPickerViewController") as! UIPickerViewController
        let UIStepper = storyboard?.instantiateViewController(withIdentifier: "UIStepperViewController") as! UIStepperViewController
       
        let UISlider = storyboard?.instantiateViewController(withIdentifier: "UISliderViewController") as! UISliderViewController
        let UIPageControl = storyboard?.instantiateViewController(withIdentifier: "UIPageControlViewController") as! UIPageControlViewController
        let UIWebView = storyboard?.instantiateViewController(withIdentifier: "UIWebViewController" ) as! UIWebViewController
        let Uistackview = storyboard?.instantiateViewController(withIdentifier: "UistackViewController" ) as! UistackViewController

        
        switch cnt.name
        {
        case "UiSegment" :
            navigationController?.pushViewController(UiSegment, animated: true)
        case "UiSwitch" :
            navigationController?.pushViewController(Uiswitch, animated: true)
        case "Uiimageview" :
            navigationController?.pushViewController(Uiimageview, animated: true)
        case "UIProgressView":
            navigationController?.pushViewController(UIProgressView, animated: true)
        case "DatepickerViewController":
            navigationController?.pushViewController(DatepickerViewController, animated: true)
        case "UiScrollview":
            navigationController?.pushViewController(UiScrollview, animated: true)
        case "UIPickerView":
            navigationController?.pushViewController(UIPickerView, animated: true)
        case "UIStepper" :
            navigationController?.pushViewController(UIStepper, animated: true)
       
        case "UISlider" :
            navigationController?.pushViewController(UISlider, animated: true)
        case "UIPageControl" :
            navigationController?.pushViewController(UIPageControl, animated: true)
        case "UIWebView" :
            navigationController?.pushViewController(UIWebView, animated: true)
        case "Uistackview" :
            navigationController?.pushViewController(Uistackview, animated: true)
        default:
            print("hello")
        }
//        switch cnt.name
//        {
//        case "Uiswitch" :
//            //        case "UiSegment" :
//            navigationController?.pushViewController(UiSegment, animated: true)
//        case "" :
//            navigationController?.pushViewController(UiSegment, animated: true)
//        default:
//            print("wrong input")
//
//        }
    }
}
