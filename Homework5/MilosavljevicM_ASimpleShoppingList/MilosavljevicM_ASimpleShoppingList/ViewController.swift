//
//  ViewController.swift
//  MilosavljevicM_ASimpleShoppingList
//
//  Created by Marko Milosavljevic on 2/14/20.
//  Copyright © 2020 Marko Milosavljevic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var showedItems: String = ""

    @IBOutlet var textFields: [UITextField]!
    @IBOutlet weak var newItemListLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        newItemListLabel.numberOfLines = 0
    }
    
    @IBAction func descriptionEnded(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
    @IBAction func backgroundTouched(_ sender: UIControl) {
        
        for txtField in textFields {
            txtField.resignFirstResponder()
        }
    }
    @IBAction func newListAction(_ sender: UIButton) {
        newItemListLabel.text = "No Item"
        showedItems = ""
    }
    
    @IBAction func newItemAction(_ sender: UIButton) {
        for newItemList in textFields {
            newItemList.text = ""
        }
    }
    
    @IBAction func addItemAction(_ sender: UIButton) {
        let description = textFields[0].text!
        let quantity = textFields[1].text!
        
        let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        
        if (description == "" || quantity == "") {
            let alert = UIAlertController(title: "Input missing",
            message: "Both fields must be populated.",
            preferredStyle: .alert)
            alert.addAction(cancelAction)
            present(alert, animated: true, completion: nil)
            
        } else if (Int(quantity) == nil) {
            let alert = UIAlertController(title: "Wrong input",
            message: "Quantity must be a number.",
            preferredStyle: .alert)
            alert.addAction(cancelAction)
            present(alert, animated: true, completion: nil)
            
        } else if (description != "" && quantity != "") {
            let currentItem = "\(quantity)x " + "\(description)"
            showedItems = showedItems + "\n\(currentItem)"
            newItemListLabel.text = showedItems

        }
        
    }
    
}

