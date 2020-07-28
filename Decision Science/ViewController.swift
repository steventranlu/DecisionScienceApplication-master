//
//  ViewController.swift
//  Decision Science
//
//  Created by Steven Lu on 5/31/20.
//  Copyright © 2020 Steven Lu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DSIntroduction: UITextView!
    @IBOutlet weak var DSIntroduction2: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DSIntroduction.isEditable = false
        DSIntroduction2.isEditable = false

    }


}

