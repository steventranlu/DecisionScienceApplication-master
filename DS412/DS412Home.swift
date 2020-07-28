//
//  DS412Home.swift
//  Decision Science
//
//  Created by Steven Lu on 7/8/20.
//  Copyright © 2020 Steven Lu. All rights reserved.
//

import UIKit

var sections = ["Capacity Planning & Decision Theory","Linear Programming","Forecasting","Quality Management","Project Management","Inventory Management"]


class DS412Home: UIViewController{

    @IBOutlet weak var capacityPlanningButton: UIButton!
    @IBOutlet weak var forecastingButton: UIButton!
    @IBOutlet weak var linearProgrammingButton: UIButton!
    @IBOutlet weak var projectManagementButton: UIButton!
    @IBOutlet weak var qualityManagementButton: UIButton!
    @IBOutlet weak var inventoryManagementButton: UIButton!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        capacityPlanningButton.layer.cornerRadius = 25.0
        forecastingButton.layer.cornerRadius = 25.0
        linearProgrammingButton.layer.cornerRadius = 25.0
        projectManagementButton.layer.cornerRadius = 25.0
        qualityManagementButton.layer.cornerRadius = 25.0
        inventoryManagementButton.layer.cornerRadius = 25.0
        
    }
    
}
