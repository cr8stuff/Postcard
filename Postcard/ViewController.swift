//
//  ViewController.swift
//  Postcard
//
//  Created by David Montz on 9/20/14.
//  Copyright (c) 2014 davidmontz.net. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var messageNameLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var messageButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendMessageButton(sender: UIButton) {
        // Code will evaluate when we press the button
        
        // Set Message label
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        messageButton.setTitle("Message Sent!", forState: UIControlState.Normal)
        
        // Set Name label
        messageNameLabel.hidden = false
        messageNameLabel.text = enterNameTextField.text
        enterNameTextField.text = ""
        messageNameLabel.textColor = UIColor.blueColor()
    }



}

