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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BMINumberUILabel.text = resultBMI
    }
    
    @IBAction func tryAgainPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
