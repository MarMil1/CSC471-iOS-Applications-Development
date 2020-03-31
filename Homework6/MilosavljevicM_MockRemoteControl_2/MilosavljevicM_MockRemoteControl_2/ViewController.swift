//
//  ViewController.swift
//  MilosavljevicM_MockRemoteControl_2
//
//  Created by Marko Milosavljevic on 2/19/20.
//  Copyright © 2020 Marko Milosavljevic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var channel = 0
    var channelSelected = false

    @IBOutlet weak var onOffLabel: UILabel!
    @IBOutlet weak var channelLabel: UILabel!
    @IBOutlet weak var volumeLabel: UILabel!
    @IBOutlet weak var volumeSliderOutlet: UISlider!
    @IBOutlet weak var channelDownOutlet: UIButton!
    @IBOutlet weak var channelUpOutlet: UIButton!
    @IBOutlet weak var favoriteChannelsOutlet: UISegmentedControl!
    @IBOutlet weak var channelZeroOutlet: UIButton!
    @IBOutlet weak var channelOneOutlet: UIButton!
    @IBOutlet weak var channelTwoOutlet: UIButton!
    @IBOutlet weak var channelThreeOutlet: UIButton!
    @IBOutlet weak var channelFourOutlet: UIButton!
    @IBOutlet weak var channelFiveOutlet: UIButton!
    @IBOutlet weak var channelSixOutlet: UIButton!
    @IBOutlet weak var channelSevenOutlet: UIButton!
    @IBOutlet weak var channelEightOutlet: UIButton!
    @IBOutlet weak var channelNineOutlet: UIButton!
    
    @IBAction func onOffSwitch(_ sender: UISwitch) {
        onOffLabel.text = "Power " + (sender.isOn ? "ON" : "OFF")
        volumeSliderOutlet.isEnabled = sender.isOn
        channelDownOutlet.isEnabled = sender.isOn
        channelUpOutlet.isEnabled = sender.isOn
        favoriteChannelsOutlet.isEnabled = sender.isOn
        channelZeroOutlet.isEnabled = sender.isOn
        channelOneOutlet.isEnabled = sender.isOn
        channelTwoOutlet.isEnabled = sender.isOn
        channelThreeOutlet.isEnabled = sender.isOn
        channelFourOutlet.isEnabled = sender.isOn
        channelFiveOutlet.isEnabled = sender.isOn
        channelSixOutlet.isEnabled = sender.isOn
        channelSevenOutlet.isEnabled = sender.isOn
        channelEightOutlet.isEnabled = sender.isOn
        channelNineOutlet.isEnabled = sender.isOn
    }
    
    @IBAction func volumeSlider(_ sender: UISlider) {
        volumeLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func channelButtons(_ sender: UIButton) {
        let channel = sender.currentTitle!
        
        if (channelSelected == false) {
            channelLabel.text = channel
            channelSelected = true
        } else {
            channelLabel.text = channelLabel.text! + channel
            channelSelected = false
        }
    }
    
    @IBAction func channelDown(_ sender: UIButton) {
        channel = Int(channelLabel.text!)!
        
        if (channelLabel.text == "1" ||
            channelLabel.text == "0" ||
            channelLabel.text == "00") {
            channelDownOutlet.isEnabled = false
            channelUpOutlet.isEnabled = true
        } else {
            self.channelLabel.text = String(channel - 1)
            channelDownOutlet.isEnabled = true
            channelUpOutlet.isEnabled = true
        }
    }
    
    @IBAction func channelUp(_ sender: UIButton) {
        channel = Int(channelLabel.text!)!
        
        if (channelLabel.text == "99") {
            channelUpOutlet.isEnabled = false
            channelDownOutlet.isEnabled = true
        } else {
            self.channelLabel.text = String(channel + 1)
            channelUpOutlet.isEnabled = true
            channelDownOutlet.isEnabled = true
        }
    }
    
    @IBAction func favoriteChannels(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            channelLabel.text = ("1")
        case 1:
            channelLabel.text = ("2")
        case 2:
            channelLabel.text = ("3")
        case 3:
            channelLabel.text = ("4")
        default:
            break
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

