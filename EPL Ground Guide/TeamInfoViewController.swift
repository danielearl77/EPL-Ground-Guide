//
//  TeamInfoViewController.swift
//  EPL Ground Guide
//
//  Created by Daniel Earl on 28/07/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit
import GoogleMobileAds

class TeamInfoViewController: UIViewController, GADBannerViewDelegate {

    @IBOutlet weak var byCar: UITextView!
    @IBOutlet weak var byTrain: UITextView!
    @IBOutlet weak var byDrink: UITextView!
    @IBOutlet weak var bannerView: GADBannerView!
    
    func adViewDidReceiveAd(_ bannerView: GADBannerView) {
        if (bannerView.isHidden) {
            bannerView.isHidden = false
        }
    }
    
    func adView(_ bannerView: GADBannerView,
                didFailToReceiveAdWithError error: GADRequestError) {
        NSLog("adView:didFailToReceiveAdWithError: \(error.localizedDescription)")
        bannerView.isHidden = true
    }
    
    override func viewDidLoad() {
        let carInfo = (parent as! TeamViewController).teamCarInfo
        let trainInfo = (parent as! TeamViewController).teamTrainInfo
        let drinkInfo = (parent as! TeamViewController).teamDrinkInfo
        byCar.text = carInfo
        byCar.sizeToFit()
        byTrain.text = trainInfo
        byTrain.sizeToFit()
        byDrink.text = drinkInfo
        byDrink.sizeToFit()
        byDrink.textContainerInset = UIEdgeInsets(top: 8,left: 0,bottom: 50,right: 0)
        super.viewDidLoad()
        bannerView.adUnitID = "ca-app-pub-1798485712270431"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
