//
//  FashionQuizViewController.swift
//  cluelessFinalProject
//
//  Created by Apple on 6/13/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class FashionQuizViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    // The data to return fopr the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return pickerData[row]
    }
    

    @IBOutlet weak var priceRange: UIPickerView!
    
    var pickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Connect data:
        self.priceRange.delegate = self
        self.priceRange.dataSource = self
        
        // Input the data into the array
        pickerData = ["$", "$$", "$$$"]
        
    }
    
    // Capture the picker view selection
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    }
    
        // This method is triggered whenever the user makes a change to the picker selection.
        // The parameter named row and component represents what was selected.
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//    func numberOfComponents2(in pickerView: UIPickerView) -> Int {
//        return 1
//    }
//
//    func pickerView2(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return pickerData2.count
//    }
//
//    // The data to return fopr the row and component (column) that's being passed in
//    func pickerView2(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return pickerData2[row]
//    }

    
    @IBOutlet weak var warmOrCold: UIPickerView!

//    var pickerData2: [String] = [String]()
//
//    func declare() {
////        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//
//        // Connect data:
//        self.warmOrCold.delegate = self
//        self.warmOrCold.dataSource = self
//
//        // Input the data into the array
//        pickerData2 = ["warm", "cold"]
//
//    }
//
//    // Capture the picker view selection
//    func pickerView2(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//    }

}
