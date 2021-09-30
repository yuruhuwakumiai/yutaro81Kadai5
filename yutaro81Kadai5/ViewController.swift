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
        guard let num1 = Double(textField1.text ?? "") else {
            presentAlert(message: "割られる数を入力してください")
            return
        }

        guard let num2 = Double(textField2.text ?? "") else {
            presentAlert(message: "割る数を入力してください")
            return
        }

        guard num2 != 0 else {
            presentAlert(message: "割る数には０を入れないでください")
            return
        }

        let result = num1 / num2
        let floorResult = floor(result * 100000) / 100000
        resultLabel.text = String(floorResult)
    }

    private func presentAlert(message: String) {
        let alert = UIAlertController(title: "課題５", message: message, preferredStyle: .alert)
        let okAlert = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAlert)
        present(alert, animated: true, completion: nil)
    }
}
