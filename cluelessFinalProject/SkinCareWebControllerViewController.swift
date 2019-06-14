//
//  SkinCareWebControllerViewController.swift
//  cluelessFinalProject
//
//  Created by Apple on 6/14/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import WebKit

class SkinCareWebControllerViewController: UIViewController {

    
    @IBOutlet weak var webView: WKWebView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let link = URL(string: "https://www.thegoodtrade.com/features/one-stop-shops-for-sustainable-beauty-and-skincare")
        let myRequest = URLRequest(url: link!)
        webView.load(myRequest)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
