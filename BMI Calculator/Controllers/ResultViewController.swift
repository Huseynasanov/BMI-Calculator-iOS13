//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Huseyn Hasanov on 07.02.22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiCalculate : String?
    var advice : String?
    var color : UIColor?
    @IBOutlet weak var refernce: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmiCalculate
        refernce.text = advice
        view.backgroundColor = color
            }
    
    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
   
}
