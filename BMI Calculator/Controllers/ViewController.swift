//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var bmiValue = "0.0"
    var CalkculaterBrain = calculatorbrain()
    @IBOutlet weak var hightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var hightSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func hightControler(_ sender: UISlider) {
        
        let hight = String(format: "%.2f", sender.value)
        hightLabel.text = "\(hight)m"
    }
    
    @IBAction func weightControler(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value )
        weightLabel.text = "\(weight)kg"
        
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        let hightS = hightSlider.value
        let weightS = weightSlider.value
        
        CalkculaterBrain.calculateBMI(hight: hightS , weight: weightS)
       
        
        self.performSegue(withIdentifier: "gotoresult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoresult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiCalculate = CalkculaterBrain.qetbmivalue()
            destinationVC.advice = CalkculaterBrain.getAdvice()
            destinationVC.color = CalkculaterBrain.getColor()
        }
    }
}

