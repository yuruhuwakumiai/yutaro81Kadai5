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

        let title1 = "課題５"
        let message1 = "割られる数を入力してください"
        let alert1 = UIAlertController(title: title1, message: message1, preferredStyle: .alert)
        let title2 = "課題５"
        let message2 = "割る数を入力してください"
        let alert2 = UIAlertController(title: title2, message: message2, preferredStyle: .alert)
        let title3 = "課題５"
        let message3 = "割る数には０を入れないでください"
        let alert3 = UIAlertController(title: title3, message: message3, preferredStyle: .alert)

        let okAlert = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert1.addAction(okAlert)
        alert2.addAction(okAlert)
        alert3.addAction(okAlert)

        if textField1.text?.isEmpty == true {
            present(alert1, animated: true, completion: nil)
        } else if textField2.text?.isEmpty == true {
            present(alert2, animated: true, completion: nil)
        } else if textField2.text == "0" {
            present(alert3, animated: true, completion: nil)
        } else { let result = num1 / num2
            let floorresult = floor(result * 100000) / 100000
            resultLabel.text = String(floorresult)
        }
    }
}
