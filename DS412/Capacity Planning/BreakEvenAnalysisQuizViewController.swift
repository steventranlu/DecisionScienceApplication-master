//
//  BreakEvenAnalysisQuizViewController.swift
//  Decision Science
//
//  Created by Steven Lu on 7/10/20.
//  Copyright © 2020 Steven Lu. All rights reserved.
//

import UIKit

class BreakEvenAnalysisQuizViewController: UIViewController {
    //Text Field for Question 1
    @IBOutlet weak var textField1_1: UITextField!
    @IBOutlet weak var textField1_2: UITextField!
    @IBOutlet weak var textField1_3: UITextField!
    @IBOutlet weak var textField1_4: UITextField!
    @IBOutlet weak var textField1_5: UITextField!
    //Show Answer Buttons for Question 1
    @IBOutlet weak var button1_1: UIButton!
    @IBOutlet weak var button1_2: UIButton!
    @IBOutlet weak var button1_3: UIButton!
    @IBOutlet weak var button1_4: UIButton!
    @IBOutlet weak var button1_5: UIButton!
    //Labels for Question 1
    @IBOutlet weak var label1_1: UILabel!
    @IBOutlet weak var label1_2: UILabel!
    @IBOutlet weak var label1_2_1: UILabel!
    @IBOutlet weak var label1_3: UILabel!
    @IBOutlet weak var label1_3_1: UILabel!
    @IBOutlet weak var label1_4: UILabel!
    @IBOutlet weak var label1_5: UILabel!
    //Solution Buttons for Question 1
    @IBOutlet weak var solutions1_1: UIButton!
    @IBOutlet weak var solutions1_2: UIButton!
    @IBOutlet weak var solutions1_3: UIButton!
    @IBOutlet weak var solutions1_4: UIButton!
    @IBOutlet weak var solutions1_5: UIButton!
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label1_1.text = ""
        label1_2.text = ""
        label1_2_1.text = ""
        label1_3.text = ""
        label1_4.text = ""
        label1_5.text = ""
    }
    //check button for Q1
    @IBAction func checkPressed1_1(_ sender: UIButton) {
        if textField1_1.text! == "46000" || textField1_1.text! == "46,000"{
            label1_1.text = "That is correct!"
        } else {
            label1_1.text = "Try again or tap for solution."
        }
    }
    //solutions button for Q1
    @IBAction func solutionsPressed1_1(_ sender: UIButton) {
        label1_1.text = "Q=F/(P-V) = 9200/(.9-.7) = 9200/.2 = 46000"
    }
    //check button for Q2
    @IBAction func checkPressed1_2(_ sender: UIButton) {
        if textField1_2.text! == "3000,8200" || textField1_2.text! == "8200,3000"{
            label1_2.text = "That is correct!"
        } else {
            label1_2.text = "Try again or tap for solution."
        }
    }
    //solutions button for Q2
    @IBAction func solutionsPressed1_2(_ sender: UIButton) {
        label1_2.text = "Q = 61000: Pr = .9*61K-(9200+.7*61K) = 3000"
        label1_2_1.text = "Q = 87000: Pr = .9*87K-(9200+.7*87K) = 8200"
    }
    //check button for Q3
    @IBAction func checkPressed1_3(_ sender: UIButton) {
        if textField1_3.text! == "126000" || textField1_3.text! == "126,000"{
            label1_3.text = "That is correct!"
        } else {
            label1_3.text = "Try again or tap for solution."
        }
    }
    //solutions button for Q3
    @IBAction func solutionsPressed1_3(_ sender: UIButton) {
        label1_3.text = "Pr=pQ-(F+vQ) = Pr+F=(P-V)Q = (Pr+F)/P-V)"
        label1_3_1.text = "= (16000+9200)/(.9-.7) = 25200/.2 = 126000 units"
    }
    //check button for Q4
    @IBAction func checkPressed1_4(_ sender: UIButton) {
    }
    //solutions button for Q4
    @IBAction func soluttionsPressed1_4(_ sender: UIButton) {
    }
    
    
    
    
    
    
    
    
}
    
