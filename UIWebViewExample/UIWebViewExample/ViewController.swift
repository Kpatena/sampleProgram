//
//  ViewController.swift
//  UIWebViewExample
//
//  Created by IOS_DEV_358922 on 2016-02-10.
//  Copyright © 2016 kpatena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stringURL: UITextField!
    @IBOutlet weak var webview: UIWebView!
    
    @IBOutlet weak var goButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goToSite() {
        let myURL = NSURL(string: stringURL.text!);
        if(myURL == nil)
        {
            print("no url")
        } else {
            let myURLRequest:NSURLRequest = NSURLRequest(URL: myURL!);
            webview.loadRequest(myURLRequest);
        }
        
    }


}

