//
//  WebViewController.swift
//  LoginScreen
//
//  Created by High Sierra on 15/07/2019.
//  Copyright © 2019 iOS App Templates. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

//    override func loadView() {
//        webView = WKWebView(frame: .zero, configuration: WKWebViewConfiguration())
//        self.view = webView
//    }
    
    @IBOutlet weak var alertButton: UIBarButtonItem!
    @IBOutlet weak var menuButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSLog("WebViewController() viewDidLoad() Start");
        
//        let webView = WKWebView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
//        self.view.addSubview(webView)
        
//        customizeNavBar()

        // Do any additional setup after loading the view.
        let url = URL(string: "http://www.apple.com/")!
        webView.load(URLRequest(url: url))

//        webView.load(URLRequest(url: URL(string: "http://www.apple.com/")!))
        
        NSLog("WebViewController() viewDidLoad() End");
    }
    
//    func customizeNavBar() {
//        navigationController?.navigationBar.tintColor = UIColor.white
//        navigationController?.navigationBar.barTintColor = UIColor.lightGray
//        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
//    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = "iMote"
    }
}
