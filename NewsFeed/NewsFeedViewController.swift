//
//  NewsFeedViewController.swift
//  Decision Science
//
//  Created by Steven Lu on 7/21/20.
//  Copyright © 2020 Steven Lu. All rights reserved.
//

import UIKit
import GoogleMobileAds

class NewsFeedViewController: UIViewController {

    @IBOutlet weak var bannerView: GADBannerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        
    }
    



}
