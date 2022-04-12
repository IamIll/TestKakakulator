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
    var resultValue: String = ""
    enum ArithmeticSigns {
          case multiply
          case minus
          case plus
    }
    func computation (acceptedValue: String, sings: ArithmeticSigns) -> String {
        switch sings {
        case .multiply:
            if endValue == 0 {
                initialValue = Double(numberTextField.text!)!
                endValue = initialValue
                resultValue = nullingTextField
            } else {
                initialValue = Double(numberTextField.text!)!
                endValue *= initialValue
                resultValue = String(endValue)
                endValue = 0
            }
        case .minus:
            if endValue == 0 {
                initialValue = Double(numberTextField.text!)!
                endValue = initialValue
                resultValue = nullingTextField
            } else {
                initialValue = Double(numberTextField.text!)!
                endValue = endValue - initialValue
                resultValue = String(endValue)
                endValue = 0
            }
        case .plus:
            if endValue == 0 {
                initialValue = Double(numberTextField.text!)!
                endValue = initialValue
                resultValue = nullingTextField
            } else {
                initialValue = Double(numberTextField.text!)!
                endValue += initialValue
                resultValue = String(endValue)
                endValue = 0
            }
        }
            return String(resultValue)
    }
    var markRecognition = ArithmeticSigns.plus
    
    @IBOutlet weak var numberTextField: UITextField!
    
    @IBAction func multiplication(_ sender: UIButton) {
        numberTextField.text = String(computation(acceptedValue: numberTextField.text! ,
                                                  sings: .multiply))
        markRecognition = .multiply
    }
    @IBAction func subtraction(_ sender: UIButton) {
        numberTextField.text = String(computation(acceptedValue: numberTextField.text! ,
                                                  sings: .minus))
        markRecognition = .minus
    }
    @IBAction func addition(_ sender: UIButton) {
        numberTextField.text = String(computation(acceptedValue: numberTextField.text! ,
                                                  sings: .plus))
        markRecognition = .plus
    }
    @IBAction func equals(_ sender: UIButton) {
        if markRecognition == .multiply {
            numberTextField.text = String(computation(acceptedValue: numberTextField.text! , sings: .multiply))
        } else if markRecognition == .minus {
            numberTextField.text = String(computation(acceptedValue: numberTextField.text! , sings: .minus))
        } else if markRecognition == .plus {
            numberTextField.text = String(computation(acceptedValue: numberTextField.text! , sings: .plus))
        }
    }
    @IBAction func clear(_ sender: UIButton) {
        endValue = 0
        initialValue = 0
        numberTextField.text = nullingTextField
    }
    var numberInterField: Double = 0
    
    @IBAction func digitsNumber(_ sender: UIButton) {
        if resultValue == "" {
            numberTextField.text! += String(sender.tag)
        } else {
            resultValue = nullingTextField
            numberTextField.text = nullingTextField
            numberTextField.text! += String(sender.tag)
            return
        }
//        numberTextField.text! += String(sender.tag)
        
//        numberInterField = Double(numberTextField.text!)!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

