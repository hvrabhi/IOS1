//
//  ViewController.swift
//  Malipatlola_FormatName
//
//  Created by Malipatlola,Abhilash Reddy on 1/31/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    @IBOutlet weak var initialsLabel: UILabel!
    
    @IBOutlet weak var details: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClickOfSubmit(_ sender: UIButton) {
        var fName = firstNameTextField.text
        var lName = lastNameTextField.text
        
        var f = fName?.first
        var l = lName?.first
        details.text = "Details"
        fullNameLabel.text = "Full Name : \(lName!), \(fName!)"
        initialsLabel.text = "Initials : \(f!)\(l!)"
    }
    
    @IBAction func onClickOfReset(_ sender: UIButton) {
        firstNameTextField.text = ""
        lastNameTextField.text = ""
        details.text = ""
        fullNameLabel.text = ""
        initialsLabel.text = ""
        firstNameTextField.becomeFirstResponder()
    }
}

