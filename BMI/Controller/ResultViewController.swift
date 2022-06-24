//
//  ResultViewController.swift
//  BMI
//
//  Created by Negin Zahedi on 2022-06-24.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var BMINumberUILabel: UILabel!
    @IBOutlet weak var resultUILabel: UILabel!
    
    var resultBMI: String?
    var resultResult: String?
    var resultColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BMINumberUILabel.text = resultBMI
        resultUILabel.text = resultResult
        resultUILabel.textColor = resultColor
    }
    
    @IBAction func tryAgainPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
