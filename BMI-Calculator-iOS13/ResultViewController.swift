//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Valentin Mille on 25/11/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var advice: String?
    var color: UIColor?
    var bmiValue: String?
    @IBOutlet var bmiLabel: UILabel!
    @IBOutlet var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue!
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        // Go to the last view controller
        self.dismiss(animated: true, completion: nil)
    }

}
