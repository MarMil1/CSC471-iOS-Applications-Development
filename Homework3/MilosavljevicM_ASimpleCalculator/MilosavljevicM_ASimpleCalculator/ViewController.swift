//
//  ViewController.swift
//  MilosavljevicM_ASimpleCalculator
//
//  Created by Marko Milosavljevic on 1/29/20.
//  Copyright © 2020 Marko Milosavljevic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var selectingNumber = false
    var firstDigit: Int = 0
    var secondDigit: Int = 0
    var final = 0
    var action = ""
    var hasResult = false

    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func digitSelected(_ sender: UIButton) {
        let digit = sender.currentTitle!
        
        if selectingNumber {
            resultLabel.text = resultLabel.text! + digit
        } else {
            resultLabel.text = digit
            selectingNumber = true
        }
        
        
    }
    
    @IBAction func additionSelected(_ sender: UIButton) {
        selectingNumber = false
        if action == "=" {
            firstDigit = final
            action = "+"
        } else {
            firstDigit = firstDigit + Int(resultLabel.text!)!
        }
        
        action = sender.currentTitle!
        resultLabel.text = "\(firstDigit)"
        
    }
    
    @IBAction func equalsSelected(_ sender: Any) {
        selectingNumber = false
        secondDigit = Int(resultLabel.text!)!
        
        if action == "+" {
            final = firstDigit + secondDigit
            hasResult = true
            action = "="
        }
        resultLabel.text = "\(final)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

