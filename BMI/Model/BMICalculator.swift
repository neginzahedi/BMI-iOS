//
//  BMICalculator.swift
//  BMI
//
//  Created by Negin Zahedi on 2022-06-24.
//

import Foundation

struct BMICalculator {
    
    var bmiValue: Float = 0.0
    
    mutating func calculator(height: Double, weight: Double){
        self.bmiValue = Float(weight / pow(height, 2))
    }
    
    func getBMIValue()->String{
        return String(format: "%.1f", bmiValue)
    }
}
