//
//  ViewController.swift
//  WKWeb
//
//  Created by Joana on 04/11/2017.
//  Copyright © 2017 Joana. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate, WKUIDelegate{
    
    var webView : WKWebView!
    var image : UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UIDevice().userInterfaceIdiom == .phone {
            print(UIScreen.main.bounds.size.height * UIScreen.main.scale)
            
            switch UIScreen.main.bounds.size.height * UIScreen.main.scale{
            
            case 960:
                print("iPhone 4S")
                
                image = UIImageView(frame:self.view.frame)
                image.image = UIImage(named:"640x960")
                self.view.addSubview(image)
                self.view.sendSubview(toBack: image)
                
            case 1136:
                print("iPhone 5 / Iphone 6 zoom")
                
                image = UIImageView(frame:self.view.frame)
                image.image = UIImage(named:"1242x2208")
                self.view.addSubview(image)
                self.view.sendSubview(toBack: image)
                
            case 1334:
                print("iPhone 6")
                
                image = UIImageView(frame:self.view.frame)
                image.image = UIImage(named:"1242x2208")
                self.view.addSubview(image)
                self.view.sendSubview(toBack: image)
                
            case 2001:
                print("Iphone 6+ zoom")
                
                image = UIImageView(frame:self.view.frame)
                image.image = UIImage(named:"1242x2208")
                self.view.addSubview(image)
                self.view.sendSubview(toBack: image)
                
            case 2208:
                print("iPhone 6+")
                
                image = UIImageView(frame:self.view.frame)
                image.image = UIImage(named:"1242x2208")
                self.view.addSubview(image)
                self.view.sendSubview(toBack: image)
                
           case 2436:
                print("iPhone X")
                
                image = UIImageView(frame:self.view.frame)
                image.image = UIImage(named:"SPX")
                self.view.addSubview(image)
                self.view.sendSubview(toBack: image)
                
            default:
                print("other models")
                
                image = UIImageView(frame:self.view.frame)
                image.image = UIImage(named:"1242x2208")
                self.view.addSubview(image)
                self.view.sendSubview(toBack: image)
            }
        }
        
    
        
        
        webView = WKWebView(frame: self.view.frame)
        webView.navigationDelegate = self
        webView.uiDelegate = self
        self.webView.backgroundColor = UIColor.clear
        self.webView.scrollView.backgroundColor = UIColor.clear
        
        let url = URL(string: "YOUR URL")!
        webView.load(URLRequest(url:url));
    
        self.view.addSubview(webView)
        self.view.sendSubview(toBack: webView)
    
    }
    
    
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        print(error.localizedDescription)
    }
    internal func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("Strat to load")
    }
   
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("finish to load")
        image.isHidden = true
    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

