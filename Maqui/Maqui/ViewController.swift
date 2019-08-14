//
//  ViewController.swift
//  Maqui
//
//  Created by Apple on 8/14/19.
//  Copyright © 2019 KWK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func TrackLink(sender: Any) {
        UIApplication.shared.open(URL(string: "https://princetonhs-ar.rschooltoday.com/oar")! as URL, options: [:], completionHandler: nil)
    }
//        openUrl(urlStr: "http://fr.envisite.net/t5exce")
//    }
//
//    func openUrl(urlStr: String!) {
//        if let url = URL(string:urlStr), !url.absoluteString.isEmpty {
//            UIApplication.shared.open(url, options: [:], completionHandler: nil)
//        }
//    }
}

