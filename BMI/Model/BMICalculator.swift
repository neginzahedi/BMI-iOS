//
//  BMICalculator.swift
//  BMI
//
//  Created by Negin Zahedi on 2022-06-24.
//

import Foundation
import UIKit

struct BMICalculator {
    
    var bmi: BMI?
    
    mutating func calculator(height: Double, weight: Double){
        let bmiValue = Float(weight / pow(height, 2))
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, result: "Low", color: UIColor.red)
        }else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, result: "Normal",color: UIColor.green)
        }else{
            bmi = BMI(value: bmiValue, result: "High",color: UIColor.red)
        }
    }
    
    func getBMIValue()->String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getResult()->String{
        return bmi?.result ?? "..."
    }
    
    func getColor()->UIColor{
        return bmi?.color ?? UIColor.black
    }
}
