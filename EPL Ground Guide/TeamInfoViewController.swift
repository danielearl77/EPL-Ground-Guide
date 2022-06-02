//
//  TeamInfoViewController.swift
//  EPL Ground Guide
//
//  Created by Daniel Earl on 28/07/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit
import StoreKit

class TeamInfoViewController: UIViewController {

    @IBOutlet weak var byCar: UITextView!
    @IBOutlet weak var byTrain: UITextView!
    @IBOutlet weak var byDrink: UITextView!
    @IBOutlet weak var supportUsBtn: UIButton!
    
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
        showAppReviewPopover()
        showSupportUsButton()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        showSupportUsButton()
    }
    
    func showSupportUsButton() {
        let hasSupported = UserDefaults.standard.bool(forKey: "userHasSupported")
        if(!hasSupported) {
            supportUsBtn.isHidden = false
        } else {
            supportUsBtn.isHidden = true
        }
    }
    
    func showAppReviewPopover() {
        var count = UserDefaults.standard.integer(forKey: "userAppLoadCount")
        count += 1
        UserDefaults.standard.set(count, forKey: "userAppLoadCount")
       
        // Get the current bundle version for the app
        let infoDictionaryKey = kCFBundleVersionKey as String
        guard let currentVersion = Bundle.main.object(forInfoDictionaryKey: infoDictionaryKey) as? String
            else { fatalError("Expected to find a bundle version in the info dictionary") }
        
        let lastVersionPromptedForReview = UserDefaults.standard.string(forKey: "lastVersionPromptedForReview")
     
        // Has the process been completed several times and the user has not already been prompted for this version?
        if count >= 15 && currentVersion != lastVersionPromptedForReview {
            // SKStoreReviewController.requestReview()
            if let scene = UIApplication.shared.connectedScenes.first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene {
                SKStoreReviewController.requestReview(in: scene)
            }
            UserDefaults.standard.set(currentVersion, forKey: "lastVersionPromptedForReview")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
