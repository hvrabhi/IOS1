//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Malipatlola,Abhilash Reddy on 1/27/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    var operand1:Double = -1.1
    var operand2:Double = -1.1
    var calcOperator:Character = " "
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func button6(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + "6"
        if (operand1 == -1.1) {
            operand1 = 6
        }
        else {
            operand2 = 6
        }
    }
    
    @IBAction func button9(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + "9"
        if (operand2 == -1.1) {
            operand2 = 9
        }
        else {
            operand1 = 9
        }
    }
    
    
    @IBAction func plus(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + "+"
        if calcOperator == " "{
            calcOperator = "+"
        }
    }
    
    @IBAction func equals(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + "="
        if (calcOperator == "+"){
            displayLabel.text = displayLabel.text! + "\(operand1+operand2)"
        }
    }
    @IBAction func clear(_ sender: UIButton) {
        displayLabel.text = " "
    }
    
}

