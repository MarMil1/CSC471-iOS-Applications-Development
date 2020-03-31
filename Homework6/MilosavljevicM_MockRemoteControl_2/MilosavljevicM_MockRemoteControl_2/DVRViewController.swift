//
//  DVRViewController.swift
//  MilosavljevicM_MockRemoteControl_2
//
//  Created by Marko Milosavljevic on 2/22/20.
//  Copyright © 2020 Marko Milosavljevic. All rights reserved.
//

import UIKit

class DVRViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var dvrOnOffLabel: UILabel!
    @IBOutlet weak var playOutlet: UIButton!
    @IBOutlet weak var stopOutlet: UIButton!
    @IBOutlet weak var pauseOutlet: UIButton!
    @IBOutlet weak var fastForwardOutlet: UIButton!
    @IBOutlet weak var fastRewindOutlet: UIButton!
    @IBOutlet weak var recordOutlet: UIButton!
    @IBOutlet weak var stateLabel: UILabel!
    
    
    @IBAction func switchToTV(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func dvrOnOffSwitch(_ sender: UISwitch) {
        dvrOnOffLabel.text = "Power " + (sender.isOn ? "ON" : "OFF")
        playOutlet.isEnabled = sender.isOn
        stopOutlet.isEnabled = sender.isOn
        pauseOutlet.isEnabled = sender.isOn
        fastForwardOutlet.isEnabled = sender.isOn
        fastRewindOutlet.isEnabled = sender.isOn
        recordOutlet.isEnabled = sender.isOn
        
        if (dvrOnOffLabel.text == "Power OFF") {
            stateLabel.text = "Stopped"
        }
    }
    
    @IBAction func playButton(_ sender: UIButton) {
        
        if (stateLabel.text == "Recording") {
                let actionSheetController = UIAlertController(title: "ATTENTION!", message:"To change to playing you must override by force. Choose switch to playing  to override or cancel to stay on recording.", preferredStyle: .actionSheet)
                let cancelAction =
                    UIAlertAction(title: "Cancel",
                        style: .cancel,
                        handler: nil)
                let okayAction =
                    UIAlertAction(title: "Switch to playing",
                        style: .default) { _ in
                            let confirmAlertController = UIAlertController(title: "Now switching to playing",
                                message: nil,
                                preferredStyle: .alert)
                            confirmAlertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in self.changeStateMode(state: "Playing")}))
                            self.present(confirmAlertController,
                                animated: true,
                                completion: nil)
                        }
                actionSheetController.addAction(okayAction)
                actionSheetController.addAction(cancelAction)
                present(actionSheetController, animated: true, completion: nil)
            } else {
                stateLabel.text = "Playing"
        }
        
    }
    
    @IBAction func stopButton(_ sender: UIButton) {
        stateLabel.text = "Stopped"
        
        playOutlet.isEnabled = true
        pauseOutlet.isEnabled = true
        fastForwardOutlet.isEnabled = true
        fastRewindOutlet.isEnabled = true
        recordOutlet.isEnabled = true
    }
    
    @IBAction func pauseButton(_ sender: UIButton) {
        
        if (stateLabel.text == "Recording") {
                let actionSheetController = UIAlertController(title: "ATTENTION!", message:"To change to paused you must override by force. Choose switch to paused to override or cancel to stay on recording.", preferredStyle: .actionSheet)
                let cancelAction =
                    UIAlertAction(title: "Cancel",
                        style: .cancel,
                        handler: nil)
                let okayAction =
                    UIAlertAction(title: "Switch to paused",
                        style: .default) { _ in
                            let confirmAlertController = UIAlertController(title: "Now switching to paused",
                                message: nil,
                                preferredStyle: .alert)
                            confirmAlertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in self.changeStateMode(state: "Paused")}))
                            self.present(confirmAlertController,
                                animated: true,
                                completion: nil)
                        }
                actionSheetController.addAction(okayAction)
                actionSheetController.addAction(cancelAction)
                present(actionSheetController, animated: true, completion: nil)
            } else {
                stateLabel.text = "Paused"
        }
        
    }
    
    @IBAction func fastForwardButton(_ sender: UIButton) {
        
        if (stateLabel.text == "Recording") {
                let actionSheetController = UIAlertController(title: "ATTENTION!", message:"To change to fast forwarding you must override by force. Choose switch to fast forwarding to override or cancel to stay on recording.", preferredStyle: .actionSheet)
                let cancelAction =
                    UIAlertAction(title: "Cancel",
                        style: .cancel,
                        handler: nil)
                let okayAction =
                    UIAlertAction(title: "Switch to fast forwarding",
                        style: .default) { _ in
                            let confirmAlertController = UIAlertController(title: "Now switching to fast forwarding",
                                message: nil,
                                preferredStyle: .alert)
                            confirmAlertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in self.changeStateMode(state: "Fast Forwarding")}))
                            self.present(confirmAlertController,
                                animated: true,
                                completion: nil)
                        }
                actionSheetController.addAction(okayAction)
                actionSheetController.addAction(cancelAction)
                present(actionSheetController, animated: true, completion: nil)
            } else {
                stateLabel.text = "Fast Forwarding"
        }

        
    }
    
    @IBAction func fastRewindButton(_ sender: UIButton) {
        
        if (stateLabel.text == "Recording") {
                let actionSheetController = UIAlertController(title: "ATTENTION!", message:"To change to fast rewinding you must override by force. Choose switch to fast rewinding to override or cancel to stay on recording.", preferredStyle: .actionSheet)
                let cancelAction =
                    UIAlertAction(title: "Cancel",
                        style: .cancel,
                        handler: nil)
                let okayAction =
                    UIAlertAction(title: "Switch to fast rewinding",
                        style: .default) { _ in
                            let confirmAlertController = UIAlertController(title: "Switching to fast rewinding.",
                                message: nil,
                                preferredStyle: .alert)
                            confirmAlertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in self.changeStateMode(state: "Fast Rewinding")}))
                            self.present(confirmAlertController,
                                animated: true,
                                completion: nil)
                        }
                actionSheetController.addAction(okayAction)
                actionSheetController.addAction(cancelAction)
                present(actionSheetController, animated: true, completion: nil)
            } else {
                stateLabel.text = "Fast Rewinding"
        }

    }
    
    @IBAction func recordButton(_ sender: UIButton) {
        
        if (stateLabel.text != "Recording" && stateLabel.text != "Stopped") {
                let actionSheetController = UIAlertController(title: "ATTENTION!", message:"To change to recording you must override by force. Choose switch to recording to override or cancel to stay on playing.", preferredStyle: .actionSheet)
                let cancelAction =
                    UIAlertAction(title: "Cancel",
                        style: .cancel,
                        handler: nil)
                let okayAction =
                    UIAlertAction(title: "Switch to recording",
                        style: .default) { _ in
                            let confirmAlertController = UIAlertController(title: "Switching to recording",
                                message: nil,
                                preferredStyle: .alert)
                            confirmAlertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in self.changeStateMode(state: "Recording")}))
                            self.present(confirmAlertController,
                                animated: true,
                                completion: nil)
                        }
                actionSheetController.addAction(okayAction)
                actionSheetController.addAction(cancelAction)
                present(actionSheetController, animated: true, completion: nil)
            } else {
                stateLabel.text = "Recording"
        }
        
    }
    
    func changeStateMode(state: String) -> Void {
        stateLabel.text = state
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
