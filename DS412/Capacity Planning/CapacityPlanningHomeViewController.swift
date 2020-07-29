//
//  CapacityPlanningHomeViewController.swift
//  Decision Science
//
//  Created by Steven Lu on 7/28/20.
//  Copyright © 2020 Steven Lu. All rights reserved.
//

import UIKit

class CapacityPlanningHomeViewController: UIViewController {
    
    @IBOutlet weak var introductionButton: UIButton!
    @IBOutlet weak var beExamplesButton: UIButton!
    @IBOutlet weak var beQuizQuestionsButton: UIButton!
    @IBOutlet weak var dtExamplesButton: UIButton!
    @IBOutlet weak var dtQuizQuestionsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        introductionButton.layer.cornerRadius = 25
        introductionButton.layer.masksToBounds = true
        beExamplesButton.layer.cornerRadius = 25
        beExamplesButton.layer.masksToBounds = true
        beQuizQuestionsButton.layer.cornerRadius = 25
        beQuizQuestionsButton.layer.masksToBounds = true
        dtExamplesButton.layer.cornerRadius = 25
        dtExamplesButton.layer.masksToBounds = true
        dtQuizQuestionsButton.layer.cornerRadius = 25
        dtQuizQuestionsButton.layer.masksToBounds = true

    }


}
