//
//  TrainViewController.swift
//  EPL Ground Guide
//
//  Created by Daniel Earl on 22/07/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit
import WebKit

class TrainViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {
    
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var loadingText: UILabel!
    @IBOutlet weak var loadingSpinner: UIActivityIndicatorView!
    @IBOutlet weak var backButtonSetting: UIButton!
    
    
    
    func loadStationData() {
        let station = (parent as! TeamViewController).stationCode
        var stationURL = "http://m.nationalrail.co.uk/pj/ldbboard/dep/"
        stationURL.append(station)
        let myURL = URL(string: stationURL)
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
    override func viewDidLoad() {
        backButtonSetting.isEnabled = false
        webView.navigationDelegate = self
        loadStationData()   
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        loadingText.isHidden = true
        loadingSpinner.isHidden = true
        let allowBack = webView.canGoBack
        if allowBack == true {
            backButtonSetting.isEnabled = true
        } else {
            backButtonSetting.isEnabled = false
        }
    }
    
    func webView(_ webView: WKWebView,
                          didFailProvisionalNavigation navigation: WKNavigation!,
                          withError error: Error) {
        if(error._code == NSURLErrorNotConnectedToInternet) {
            print("No Internet Connection")
        }
        print("Error Loading:")
        print(error._code)
    }
    
    func webView(_ webView: WKWebView,
                 didFail navigation: WKNavigation!,
                 withError error: Error) {
        print("Error Loading: Navigation Error")
        print(error._code)
    }
    
    
    
    @IBAction func backButton(_ sender: Any) {
        webView.goBack()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
