//
//  ViewController.swift
//  Postcard
//
//  Created by Rosemarie Day on 5/25/15.
//  Copyright (c) 2015 rjd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // variables for each label and text field
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /* 
     * Action function that uses the button to perform different actions
     */
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        /* takes the hidden label and makes it seen
         * changes the label from the original text of label to the message entered by user
         * change color of the message in the label
         * clears the message field for a new message
         * resign first responder makes the keyboard disappear 
         */
        
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.blueColor()
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        /*
         * Alters the button text after the button has been pressed 
         */
        mailButton.setTitle("You've got mail!", forState: UIControlState.Normal)
    }

}

