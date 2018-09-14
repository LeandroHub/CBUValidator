//
//  ViewController.swift
//  CBUValidator
//
//  Created by LeandroHub on 09/13/2018.
//  Copyright (c) 2018 LeandroHub. All rights reserved.
//

import UIKit
import CBUValidator

class ViewController: UIViewController {

    @IBOutlet weak var cbuTextField: UITextField!

    @IBOutlet weak var validationLabel: UILabel!
    
    @IBAction func checkButtonPressed(_ sender: Any) {
        guard let cbu = cbuTextField.text else {
            return
        }
        
        if cbu.validateCBU() {
            validationLabel.text = "Valid!"
        } else {
            validationLabel.text = "Invalid!"
        }
    }
}

