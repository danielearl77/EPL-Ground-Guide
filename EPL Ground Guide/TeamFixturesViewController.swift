//
//  TeamFixturesViewController.swift
//  EPL Ground Guide
//
//  Created by Daniel Earl on 28/07/2018.
//  Copyright © 2018 Macbook Pro. All rights reserved.
//

import UIKit
import WebKit

class TeamFixturesViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {
    
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var loadingText: UILabel!
    @IBOutlet weak var loadingSpinner: UIActivityIndicatorView!
    
    func loadFixturesData() {
        let fixturesURL = (parent as! TeamViewController).teamFixtures
        let myURL = URL(string: fixturesURL)
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
    override func viewDidLoad() {
        webView.navigationDelegate = self
        loadFixturesData()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        loadingText.isHidden = true
        loadingSpinner.isHidden = true
    }
    
    func webView(_ webView: WKWebView,
                 didFailProvisionalNavigation navigation: WKNavigation!,
                 withError error: Error) {
        print("Error Loading")
    }
    
    func webView(_ webView: WKWebView,
                 didFail navigation: WKNavigation!,
                 withError error: Error) {
        print("Error Loading: Navigation Error")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
