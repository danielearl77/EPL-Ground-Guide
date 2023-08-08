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

    @IBOutlet weak var teamInfoText: UITextView!
    @IBOutlet weak var supportUsBtn: UIButton!
    
    override func viewDidLoad() {
        let carInfo = (parent as! TeamViewController).teamCarInfo
        let trainInfo = (parent as! TeamViewController).teamTrainInfo
        let drinkInfo = (parent as! TeamViewController).teamDrinkInfo
        let stadiumName = (parent as! TeamViewController).teamStadiumName
       
        let stadiumFont = UIFont.boldSystemFont(ofSize: 20.0)
        let headerFont = UIFont.boldSystemFont(ofSize: 18.0)
        let bodyFont = UIFont.systemFont(ofSize: 15.0)
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .justified
        
        let stadiumParagraphStyle = NSMutableParagraphStyle()
        stadiumParagraphStyle.alignment = .center
        
        let stadiumNameAttributes: [NSAttributedString.Key: Any] = [
            .font: stadiumFont,
            .paragraphStyle: stadiumParagraphStyle,
            .foregroundColor: UIColor.label
        ]
        
        let headerAttributes: [NSAttributedString.Key: Any] = [
            .font: headerFont,
            .foregroundColor: UIColor.label
        ]
        
        let bodyAttributes: [NSAttributedString.Key: Any] = [
            .font: bodyFont,
            .paragraphStyle: paragraphStyle,
            .foregroundColor: UIColor.label
        ]
        
        let infoText = NSMutableAttributedString(string: stadiumName, attributes: stadiumNameAttributes)
        let carTitle = NSMutableAttributedString(string: "\n\nBy Car\n", attributes: headerAttributes)
        let carContentText = NSMutableAttributedString(string: carInfo, attributes: bodyAttributes)
        let trainTitle = NSMutableAttributedString(string: "\n\nBy Train\n", attributes: headerAttributes)
        let trainContentText = NSMutableAttributedString(string: trainInfo, attributes: bodyAttributes)
        let drinkTitle = NSMutableAttributedString(string: "\n\nFood & Drink\n", attributes: headerAttributes)
        let drinkContentText = NSMutableAttributedString(string: drinkInfo, attributes: bodyAttributes)
        
        infoText.append(carTitle)
        infoText.append(carContentText)
        infoText.append(trainTitle)
        infoText.append(trainContentText)
        infoText.append(drinkTitle)
        infoText.append(drinkContentText)
        
        teamInfoText.attributedText = infoText
        
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
