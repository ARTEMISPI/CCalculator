//
//  ViewController.swift
//  CCalculator
//
//  Created by Artemis Papunidis on 9/8/20.
//  Copyright © 2020 PAPUNIDIS DEVELOPMENT. All rights reserved.
//

import UIKit

class CalcViewController: UIViewController {
    
    var firstValue: Double = 0
    var secondValue: Double = 0
    var operationValue: Double = 0
    var mathSign: Bool = false
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func numberTap(_ sender: UIButton) {
        if mathSign == true {
            result.text = String(sender.tag)
            mathSign = false
    }
        else {
            result.text = result.text! + String(sender.tag)
        }
    }
   
    @IBAction func functions(_ sender: UIButton) {
        if result.text != "" && sender.tag != 10 && sender.tag != 13  {
            secondValue = Double(result.text!)!
            
            if sender.tag == 10 { //delete
                result.text = result.text! + "+"
        }
            else if sender.tag == 11 { //minus
                result.text = result.text! + "-"
        }
            else if sender.tag == 12 { //plus
                result.text = result.text! + "+"
                
        }
            else if sender.tag == 13 { //equal
        }
            else if sender.tag == 14 { //multiply
        }
            else if sender.tag == 15 { //divide
        }
            operationValue = Double(sender.tag)
            mathSign = true
    }
        else if sender.tag == 13 { //sum
            if operationValue == 11 {
                result.text = String(firstValue-secondValue)
            }
            else if operationValue == 12 {
                result.text = String(firstValue+secondValue)
            }
            else if operationValue == 14 {
                result.text = String(firstValue*secondValue)
            }
            else if operationValue == 15 {
                result.text = String(firstValue/secondValue)
            }
        }
        else if sender.tag == 10 { //delete
            result.text = ""
            firstValue = 0
            secondValue = 0
            operationValue = 0
        }
}
    
    override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        }

}
