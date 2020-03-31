//
//  ViewController.swift
//  MilosavljevicM_ATableViewApp
//
//  Created by Marko Milosavljevic on 3/7/20.
//  Copyright © 2020 Marko Milosavljevic. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var stateImage: UIImageView!
    @IBOutlet weak var backgroundColor: UIView!
    
    var state: State?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let s = state {
            titleLabel.text = s.name
            stateImage.image = UIImage(named: s.name)
            descriptionLabel.text = s.longDescription
            if (state?.region == .north) {
                backgroundColor.backgroundColor = UIColor.green
            } else if (state?.region == .south) {
                backgroundColor.backgroundColor = UIColor.systemPink
            } else if (state?.region == .east) {
                backgroundColor.backgroundColor = UIColor.systemBlue
            } else if (state?.region == .west) {
                backgroundColor.backgroundColor = UIColor.systemOrange
            }
        }
    }


}

