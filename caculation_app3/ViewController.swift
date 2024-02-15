//
//  ViewController.swift
//  caculation_app3
//
//  Created by 荘司実祐 on 2024/02/14.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    
    @IBOutlet private weak var changeButton1: UISwitch!
    @IBOutlet private weak var changeButton2: UISwitch!
    
    @IBOutlet private weak var totalNumber: UILabel!
    
    @IBOutlet private weak var textNumber2: UILabel!
    @IBOutlet private weak var textNumber1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var currideNumber = 0
    
    
    @IBAction private func tappedLeftSwitch(_ sender: UISwitch) {
    }
    
    
    @IBAction private func tappedRightSwitch(_ sender: UISwitch) {
    }
    
    func tappedSswitch() {
        let num1 = Int(textField1.text ?? "") ?? 0
        let num2 = Int(textField2.text ?? "") ?? 0
        
        textNumber1.text = "\(num1)"
        textNumber2.text = "\(num2)"
        
        let pushbutton1 = changeButton1.isOn
        let pushbutton2 = changeButton2.isOn
        
        let result = caculationResult(num1: num1, num2: num2, pushbutton1: pushbutton1, pushButton2: pushbutton2)
        
        totalNumber.text = "\(result)"
    }
    func caculationResult (num1: Int,num2: Int,pushbutton1: Bool,pushButton2: Bool) -> Int {
        var result = 0
        if pushbutton1 && pushButton2 {
            result = num1 + num2
        } else if pushbutton1 && !pushButton2 {
            result = num1 - num2
        } else if !pushbutton1 && pushButton2 {
            result = num1 - num2
        } else if !pushbutton1 && !pushButton2 {
            result = num1 - num2
        }
        return result
    }
    
    @IBAction private func caculationButton(_ sender: Any) {
        tappedSswitch()
        
        let num1 = Int(textField1.text ?? "") ?? 0
        let num2 = Int(textField2.text ?? "") ?? 0
        
        textNumber1.text = "\(num1)"
        textNumber2.text = "\(num2)"
        
        let pushbutton1 = changeButton1.isOn
        let pushbutton2 = changeButton2.isOn
        
        let result = caculationResult(num1: num1, num2: num2, pushbutton1: pushbutton1, pushButton2: pushbutton2)
        
        totalNumber.text = "\(result)"
        
    }
}
