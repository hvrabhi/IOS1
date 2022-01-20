//
//  ViewController.swift
//  HelloApp
//
//  Created by Malipatlola,Abhilash Reddy on 1/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameOutlet: UITextField!
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var gradeOutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        //Read the data from the text box and store it in a variable
        var name = nameOutlet.text!
        var grade = gradeOutlet.text!
        //change the text in display label with this format. Hello, name!
        
        displayLabel.text = "Hello, \(name)! Your grade is \(grade)."
        
    }
    
}

