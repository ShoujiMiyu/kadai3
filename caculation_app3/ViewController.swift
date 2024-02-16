//
//  ViewController.swift
//  caculation_app3
//
//  Created by 荘司実祐 on 2024/02/14.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    
    
    @IBOutlet private weak var changeSwitch1: UISwitch!
    @IBOutlet private weak var changeSwitch2: UISwitch!
    
    @IBOutlet private weak var totalNumberLabel: UILabel!
    
    @IBOutlet private weak var textNumberLabel1: UILabel!
    @IBOutlet private weak var textNumberLabel2: UILabel!
    
    @IBAction private func tappedCaculationButton(_ sender: Any) {
        
        let num1 = Int(textField1.text ?? "") ?? 0
        let num2 = Int(textField2.text ?? "") ?? 0
        
        let numWithSign1 = changeSwitch1.isOn ? num1 : -num1
        let numWithSign2 = changeSwitch2.isOn ? num2 : -num2
        
        textNumberLabel1.text = "\(numWithSign1)"
        textNumberLabel2.text = "\(numWithSign2)"
        
        let result = caculate(num1: numWithSign1,num2: numWithSign2)
        
        totalNumberLabel.text = "\(result)"
        
    }
    func caculate(num1: Int,num2: Int) -> Int {
        num1 + num2
    }
}
