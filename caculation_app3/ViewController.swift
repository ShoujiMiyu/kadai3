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
    
    @IBOutlet private weak var textNumberLabel2: UILabel!
    @IBOutlet private weak var textNumberLabel1: UILabel!
    
    @IBAction private func tappedCalculationButton(_ sender: Any) {

        // textFieldに入力された数字をInt型に変換
        let num1 = Int(textField1.text ?? "") ?? 0
        let num2 = Int(textField2.text ?? "") ?? 0

        // switchの状態を見て正負を入れ替える
        let num1WithSign = changeSwitch1.isOn ? num1 : -num1
        let num2WithSign = changeSwitch2.isOn ? num2 : -num2
        
        // 計算に使用する数字をLabelに反映
        textNumberLabel1.text = "\(num1WithSign)"
        textNumberLabel2.text = "\(num2WithSign)"

        // 計算結果を取得
        let result = calculate(num1: num1WithSign, num2: num2WithSign)
        
        // 計算結果をLabelに反映
        totalNumberLabel.text = "\(result)"
        
    }

    func calculate(num1: Int, num2: Int) -> Int {
        num1 + num2
    }
}


