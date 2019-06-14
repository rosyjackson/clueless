//
//  ViewController.swift
//  cluelessFinalProject
//
//  Created by Apple on 6/12/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {
    
    let buttons = ["Skincare" : "Skincare", "Makeup": "Makeup", "Ethical and Sustainable Standards": "Ethical and Sustaiable Standards"]
    
    let customMessages = ["Skincare": ["check out The Good Trade for skincare"], "Makeup": ["check out Hippie Cosmetics for makeup"], "Ethical and Sustainable Standards": ["check out The Sustainable Jungle for some guidelines for finding sustainable and ethical products"] ]
    

    
    @IBAction func btnskin(_ sender: UIButton) {
    let selectedButton = sender.titleLabel?.text
        let buttonMessage = customMessages[buttons[selectedButton!]!]
        
        var alertController = UIAlertController(title: buttons[selectedButton!], message: buttonMessage![0], preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    
    
    func showSafariVC(for url: String) {
        guard let url = URL(string: url) else {
            return
        }
        
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true)
    }
    
    
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//
//    }
//


    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

}
