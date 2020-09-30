//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Antonio Casto on 30/09/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
import UIKit
struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Underweight", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Normal", color: .green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Overweight", color: .purple)
        }
        
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .gray
    }
    
    
    
}
