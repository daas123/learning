//
//  UIProgressViewController.swift
//  learning
//
//  Created by Neosoft on 21/07/23.
//

import UIKit

class UIProgressViewController: UIViewController {
    
    
    // textfields
    @IBOutlet weak var usernamevalue: UITextField!
    @IBOutlet weak var emailvalue: UITextField!
    @IBOutlet weak var userpassword: UITextField!
    @IBOutlet weak var userconformpassword: UITextField!
    
    // progrssview
    @IBOutlet weak var progressview: UIProgressView!
    @IBOutlet weak var labelprogressview: UILabel!
    
    
    @IBOutlet weak var uibutton: UIButton!
    
    let progress = Progress(totalUnitCount: 4)
    var ratio = Float()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressview.isHidden = true
        ratio = 0
        progressview.progress = ratio
        labelprogressview.isHidden = true
        
    }
    
    
    @IBAction func submitbutton(_ sender: Any) {
        if (usernamevalue.text != "" && emailvalue.text != "" && userpassword.text != "" && userconformpassword.text != "")
        {
            uibutton.isHidden = true
            labelprogressview.isHidden = false
            progressview.isHidden = false
             
            Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) {
                (timer) in
                guard self.progress.isFinished == false else{
                    timer.invalidate()
                    self.labelprogressview.text = "Task is finished"
                    return
                }
                self.progress.completedUnitCount += 1
        
                let progressflat = Float(self.progress.fractionCompleted)
                self.progressview.setProgress(progressflat, animated: true)
            }
            
            
        }
        else
        {
            labelprogressview.isHidden = false
            labelprogressview.text = "enter values"
//            labelprogressview.isHidden = true
        }
    }
    
    

}
