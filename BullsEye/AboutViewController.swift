//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Travis Cunningham on 3/1/16.
//  Copyright © 2016 Travis Cunningham. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!

    @IBAction func close(){
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let htmlFile = NSBundle.mainBundle().pathForResource("BullsEye",ofType: "html") {
            if let htmlData = NSData(contentsOfFile: htmlFile){
                let baseURL = NSURL(fileURLWithPath: NSBundle.mainBundle().bundlePath)
                webView.loadData(htmlData, MIMEType: "text/html", textEncodingName: "UTF-8", baseURL: baseURL)
            }
        }
        
    }

}
