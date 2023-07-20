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
        way(num: 3, name: "Uiimageview")
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
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        var cnt =  detials[indexPath.row]
        cell.gettingtopics.text = cnt.name
        cell.gettingNUmber.text = String(cnt.num)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var cnt =  detials[indexPath.row]
        var Uiswitch = storyboard?.instantiateViewController(withIdentifier: "UiswitchViewController") as! UiswitchViewController
        var UiSegment = storyboard?.instantiateViewController(withIdentifier: "UiSegementViewController") as! UiSegementViewController
        var Uiimageview = storyboard?.instantiateViewController(withIdentifier: "UiimageViewController") as! UiimageViewController
        

        
        switch cnt.name
        {
        case "UiSegment" :
            navigationController?.pushViewController(UiSegment, animated: true)
        case "UiSwitch" :
            navigationController?.pushViewController(Uiswitch, animated: true)
        case "Uiimageview" :
            navigationController?.pushViewController(Uiimageview, animated: true)
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
