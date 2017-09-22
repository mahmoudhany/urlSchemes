//
//  ViewController.swift
//  catApp
//
//  Created by Mahmoud on 9/22/17.
//  Copyright © 2017 Mahmoud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     
     @IBAction func facebookPressed(_ sender: Any) {
          UIApplication.tryURL(urls: [
               "fb://profile/ma7moud.hany", // App
               "http://www.facebook.com/ma7moud.hany" // Website if app fails
               ])
     }
     
     @IBAction func instagramPressed(_ sender: Any){
          UIApplication.tryURL(urls: [
               "instagram://user?username=ma7moud.hany", // App
               "https://instagram.com/ma7moud.hany" // Website if app fails
               ])
          
     }
     @IBAction func twitterPressed(_ sender: Any){
          UIApplication.tryURL(urls: [
               "twitter://user?username=Ma7moud__Hany", // App
               "https://twitter.com/Ma7moud__Hany" // Website if app fails
               ])
          
     }
          
          
          override func viewDidLoad() {
               super.viewDidLoad()
               
          }
          
     }
     extension UIApplication {
          static func tryURL(urls: [String]) {
               let application = UIApplication.shared
               
               if application.canOpenURL(URL(string: urls[0])!) {
                    //application.openURL(URL(string: url)!)
                    application.open(URL(string: urls[0])!, options: [:], completionHandler: nil)
               }else{
                    application.open(URL(string: urls[1])!, options: [:], completionHandler: nil)
               }
               
          }
}








