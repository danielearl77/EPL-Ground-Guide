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
    @IBOutlet weak var pageLoadingSpinner: UIActivityIndicatorView!
    @IBOutlet weak var errorMsg: UILabel!
    @IBOutlet weak var pageBackButton: UIButton!
        
    func loadStationData() {
        errorMsg.isHidden = true
        pageLoadingSpinner.startAnimating()
        pageLoadingSpinner.isHidden = false
        let station = (parent as! TeamViewController).stationCode
        if station == "XXX" {
            pageLoadingSpinner.stopAnimating()
            pageLoadingSpinner.isHidden = true
            errorMsg.text = "This ground is not close\nto any National Rail Station.\nPlease check the public\ntransport section for other options."
            errorMsg.isHidden = false
        } else {
            var stationURL = "http://m.nationalrail.co.uk/pj/ldbboard/dep/"
            stationURL.append(station)
            let myURL = URL(string: stationURL)
            let myRequest = URLRequest(url: myURL!)
            webView.load(myRequest)
        }
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        pageLoadingSpinner.stopAnimating()
        pageLoadingSpinner.isHidden = true
        errorMsg.isHidden = true
        let allowBack = webView.canGoBack
        if allowBack == true {
            pageBackButton.isHidden = false
        } else {
            pageBackButton.isHidden = true
        }
    }
    
    func webView(_ webView: WKWebView,
                          didFailProvisionalNavigation navigation: WKNavigation!,
                          withError error: Error) {
        if(error._code == NSURLErrorNotConnectedToInternet) {
            NSLog("No Internet Connection")
            pageLoadingSpinner.stopAnimating()
            pageLoadingSpinner.isHidden = true
            errorMsg.text = "ERROR: No Internet Connection"
            errorMsg.isHidden = false
        }
        errorMsg.text = "ERROR: Unable to load page"
        errorMsg.isHidden = false
        pageLoadingSpinner.stopAnimating()
        pageLoadingSpinner.isHidden = true
        NSLog("Error Loading:")
        print(error._code)
    }
    
    func webView(_ webView: WKWebView,
                 didFail navigation: WKNavigation!,
                 withError error: Error) {
        pageLoadingSpinner.stopAnimating()
        pageLoadingSpinner.isHidden = true
        errorMsg.text = "ERROR: Unable to load page"
        errorMsg.isHidden = false
        NSLog("Error Loading: Navigation Error")
        print(error._code)
    }
    

    @IBAction func pageBack(_ sender: Any) {
        webView.goBack()
    }
    
    override func viewDidLoad() {
        webView.navigationDelegate = self
        super.viewDidLoad()
        loadStationData()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
