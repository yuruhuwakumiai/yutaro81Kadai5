//
//  ViewController.swift
//  yutaro81Kadai5
//
//  Created by 雄太郎 on 2021/09/28.
//
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak private var textField1: UITextField!
    @IBOutlet weak private var textField2: UITextField!
    @IBOutlet weak private var resultLabel: UILabel!
    @IBAction private func calculationButton(_ sender: Any) {
        let num1 = Double(textField1.text ?? "") ?? 0
        let num2 = Double(textField2.text ?? "") ?? 0
         if num2 == 0 {
            let title = "課題５"
            let message = "割られる数を入力してください"
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let okAlert = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAlert)
            present(alert, animated: true, completion: nil)
        } else {
            let result = num1 / num2
            let floorresult = floor(result * 100000) / 100000
            resultLabel.text = String(floorresult)
        }
    }
}
