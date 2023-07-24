//
//  UIWebViewController.swift
//  learning
//
//  Created by Neosoft on 24/07/23.
//

import UIKit

class UIWebViewController: UIViewController {

    @IBOutlet weak var webviewrefrence: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webviewrefrence.loadRequest(URLRequest(url: URL(string: "https://www.youtube.com/watch?v=EkKdQ6gVzao")!))
        // Do any additional setup after loading the view.
    }
    

    

}
