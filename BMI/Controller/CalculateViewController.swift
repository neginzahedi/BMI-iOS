//
//  ViewController.swift
//  BMI
//
//  Created by Negin Zahedi on 2022-06-22.
//

import UIKit

class CalculateViewController: UIViewController {
    
    // weight
    @IBOutlet weak var weightUILabel: UILabel!
    @IBOutlet weak var weightStepper: UIStepper!
    
    // age
    @IBOutlet weak var ageUILabel: UILabel!
    @IBOutlet weak var ageStepper: UIStepper!
    
    // height
    @IBOutlet weak var heightUILabel: UILabel!
    @IBOutlet weak var heightUISlider: UISlider!
    
    var bmiCalculator = BMICalculator()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        weightUILabel.text = String(weightStepper.value)
        ageUILabel.text = String(Int(ageStepper.value))
        heightUILabel.text = String(heightUISlider.value)
    }
    
    @IBAction func weightChanged(_ sender: UIStepper) {
        weightUILabel.text = String(format: "%.1f", sender.value)
    }
    
    @IBAction func ageChanged(_ sender: UIStepper) {
        ageUILabel.text = String(Int(sender.value))
        
    }
    
    @IBAction func heightChanged(_ sender: UISlider) {
        heightUILabel.text = String(format: "%.2f", sender.value)
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
    
        // user selected height and weight
        let height = Double(heightUISlider.value)
        let weight = Double(weightStepper.value)
        
        // calculates BMI
        bmiCalculator.calculator(height: height, weight: weight)
        
        // go to ResultViewController
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    // data needed to send to the VC for segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // check first because we may have more than one VC with segue
        if segue.identifier == "goToResult"{
            let ResultVC = segue.destination as! ResultViewController
            ResultVC.resultBMI = bmiCalculator.getBMIValue()
        }
    }
    
}

