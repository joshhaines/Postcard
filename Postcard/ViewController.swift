//
//  ViewController.swift
//  Postcard
//
//  Created by Joshua Haines on 1/19/15.
//  Copyright (c) 2015 Joshua Haines. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Adding a comment here to test commit
        
        // Change messageLabel text to include entered text from enterMessageTextField
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        // Set enterMessageTextField text back to blank and dismiss the keyboard
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        // Set the button title to "Mail Sent"
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        // Change nameLabel text to include entered text from enterNameTextField
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        // Set enterNameTextField text back to blank and dismiss the keyboard
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
    }

}

