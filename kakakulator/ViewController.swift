//
//  ViewController.swift
//  kakakulator
//
//  Created by Илья Дунайцев on 02.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var initialValue: Double = 0
    var nullingTextField: String = ""
    var nextValue: Double = 0
    var endValue: Double = 0
    var markRecognition = 0
    
    @IBOutlet weak var numberTextField: UITextField!
    
    @IBAction func multiplication(_ sender: UIButton) {
        markRecognition = 10
        if endValue == 0 {
            initialValue = Double(numberTextField.text!)!
            endValue = initialValue
            numberTextField.text = String(endValue)
            numberTextField.text = nullingTextField
        } else {
            initialValue = Double(numberTextField.text!)!
            endValue *= initialValue
            numberTextField.text = String(endValue)
        }
            
            
//        nextValue = Double(numberTextField.text!)!
//        endValue = initialValue * nextValue
//        numberTextField.text = String(nextValue)
        
        
    }
    @IBAction func subtraction(_ sender: UIButton) {
        markRecognition = 11
        if endValue == 0 {
            initialValue = Double(numberTextField.text!)!
            endValue = initialValue
//            numberTextField.text = String(endValue)
            numberTextField.text = nullingTextField
        } else {
            initialValue = Double(numberTextField.text!)!
            endValue = endValue - initialValue
            numberTextField.text = String(endValue)
        }
       
    }
    @IBAction func addition(_ sender: UIButton) {
        markRecognition = 12
        if endValue == 0 {
            initialValue = Double(numberTextField.text!)!
            endValue = initialValue
            numberTextField.text = String(endValue)
            numberTextField.text = nullingTextField
        } else {
            initialValue = Double(numberTextField.text!)!
            endValue += initialValue
            numberTextField.text = String(endValue)
        }
    }
    @IBAction func equals(_ sender: UIButton) {
        if markRecognition == 10 {
            initialValue = Double(numberTextField.text!)!
            endValue = endValue - initialValue
            numberTextField.text = String(endValue)
        } else if markRecognition == 11 {
            initialValue = Double(numberTextField.text!)!
            endValue = endValue - initialValue
            numberTextField.text = String(endValue)
            
        } else if markRecognition == 12 {
            initialValue = Double(numberTextField.text!)!
            endValue += initialValue
            numberTextField.text = String(endValue)
        }
    }
    @IBAction func clear(_ sender: UIButton) {
        endValue = 0
        initialValue = 0
        numberTextField.text = nullingTextField
    }
    var numberInterField: Double = 0
    
    @IBAction func digitsNumber(_ sender: UIButton) {
        
        numberTextField.text! += String(sender.tag)
        
       numberInterField = Double(numberTextField.text!)!
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

