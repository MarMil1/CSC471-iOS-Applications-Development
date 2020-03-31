//
//  ConfigViewController.swift
//  MilosavljevicM_MockRemoteControl_3
//
//  Created by Marko Milosavljevic on 2/28/20.
//  Copyright © 2020 Marko Milosavljevic. All rights reserved.
//

import UIKit

class ConfigViewController: UIViewController {
    
    var newConfigDict: [Int: [String]] = [:]

    override func viewDidLoad() {
        super.viewDidLoad()
        newConfigDict[0] = ["",""]
        newConfigDict[1] = ["",""]
        newConfigDict[2] = ["",""]
        newConfigDict[3] = ["",""]
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var channelLabel: UILabel!
    @IBOutlet weak var labelOutlet: UITextField!
    @IBOutlet weak var segmentOutlet: UISegmentedControl!
    @IBOutlet weak var stepperOutlet: UIStepper!
    
    @IBAction func stepper(_ sender: UIStepper) {
        channelLabel.text = "\(Int(sender.value))"
        if sender.value <= 9 {
            channelLabel.text = "0\(Int(sender.value))"
        }
    }
    
    @IBAction func labelInput(_ sender: UITextField) {
        let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        
        if (sender.text!.count <= 4 &&
            sender.text!.count >= 1 ){
            sender.resignFirstResponder()
        } else {
            let alert = UIAlertController(title: "Attention",
            message: "Number of characters must be between 1 and 4.",
            preferredStyle: .alert)
            alert.addAction(cancelAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func buttonSegment(_ sender: UISegmentedControl) {
    }
    
    @IBAction func cancelButton(_ sender: UIButton) {
        labelOutlet.resignFirstResponder()
        labelOutlet.text = ""
        segmentOutlet.selectedSegmentIndex = 0
        stepperOutlet.value = 0
        channelLabel.text = "01"
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        
        if labelOutlet.text!.count <= 4 &&
            labelOutlet.text!.count >= 1 {
            newConfigDict[segmentOutlet.selectedSegmentIndex] = [labelOutlet.text!, channelLabel.text!]
            labelOutlet.resignFirstResponder()
            
            let alert = UIAlertController(title: "Favorite channel saved",
            message: "",
            preferredStyle: .alert)
            alert.addAction(cancelAction)
            present(alert, animated: true, completion: nil)
            
            let tvViewController =  self.tabBarController!.viewControllers![0] as! FirstViewController
            tvViewController.newFavoriteDict = newConfigDict
            
        } else {
            let alert = UIAlertController(title: "Attention",
            message: "Number of characters must be between 1 and 4.",
            preferredStyle: .alert)
            alert.addAction(cancelAction)
            present(alert, animated: true, completion: nil)
        }
        
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
