//
//  calculatorbrain.swift
//  BMI Calculator
//
//  Created by Huseyn Hasanov on 11.02.22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit
struct calculatorbrain{
    var bmi : BMI?
    func getAdvice() -> String{
        
        return bmi?.advice ?? "no advice"
    }
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.gray
    }
    func qetbmivalue()->String{
        let  bmiOneDesimalPoint =  String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiOneDesimalPoint
    }
   mutating func calculateBMI(hight:Float , weight:Float){
       let bmivalue = weight / pow(hight , 2)
       if bmivalue<18.5{
           bmi = BMI(value: bmivalue, advice: "underweight" , color: UIColor.blue)
       }else if bmivalue<24.5 {
           bmi = BMI(value: bmivalue, advice: "normalweight", color: UIColor.yellow )
       }else{
           bmi = BMI(value: bmivalue, advice: "overweight", color: UIColor.red)
       }
       }
}
