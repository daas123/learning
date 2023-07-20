//
//  UiimageViewController.swift
//  learning
//
//  Created by Neosoft on 20/07/23.
//

import UIKit

class UiimageViewController: UIViewController {

    
    //imageview
    

    @IBOutlet weak var imageview: UIImageView!
    
    
    let alertcontroller = UIAlertController(title: "Alert", message: "Do Not Touch !!", preferredStyle: .alert)
    let ok = UIAlertAction(title: "OK", style: .default)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageview.image = UIImage(named: "donottouch") ?? UIImage()
        let tap = UITapGestureRecognizer(target: self, action: #selector(didimagetapped(sender: )))
        imageview.isUserInteractionEnabled = true
        imageview.addGestureRecognizer(tap)
    }
    @objc func didimagetapped(sender: UIGestureRecognizer){
        
        alertcontroller.addAction(ok)
        present(alertcontroller, animated: true)
    }
    
    
    
    @IBAction func buttonsaad(_ sender: Any) {
        imageview.image = UIImage(named: "saad") ?? UIImage()
        
    }

    
    @IBAction func buttonaditiya(_ sender: Any) {
        imageview.image = UIImage(named: "aditiya") ?? UIImage()
    }
    
    @IBAction func buttonchint(_ sender: Any) {
        imageview.image = UIImage(named: "chintan") ?? UIImage()
    }
    
    @IBAction func buttonmatin(_ sender: Any) {
        imageview.image = UIImage(named: "matin") ?? UIImage()
    }
    
    @IBAction func buttonDefault(_ sender: Any) {
        imageview.image = UIImage(named: "donottouch") ?? UIImage()
    }
    
}
