//
//  SchoolFormsViewController.swift
//  Maqui
//
//  Created by Kyara Torres-Olivares on 8/15/19.
//  Copyright © 2019 KWK. All rights reserved.
//

import UIKit

class SchoolFormsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func OnClick(_ sender: Any) {
                UIApplication.shared.open(URL(string: "https://forms.office.com/Pages/ResponsePage.aspx?id=-_dz3O_mPkeALO_H8xFSqMg6fqDp8RBAqTExwCvWM7RUMFdWRVMyR05CVVBDN1I3UU5LSU83MThFSC4u")! as URL, options: [:], completionHandler: nil)
        }
    
    
    @IBAction func hockeyLink(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://columbia-ar.rschooltoday.com/node/25")! as URL, options: [:], completionHandler: nil)

    }
    
    
    @IBAction func basketLink(_ sender: UIButton) {
                UIApplication.shared.open(URL(string: "https://columbia-ar.rschooltoday.com/node/25")! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func xcLink(_ sender: UIButton) {
                UIApplication.shared.open(URL(string: "https://forms.office.com/Pages/ResponsePage.aspx?id=-_dz3O_mPkeALO_H8xFSqMg6fqDp8RBAqTExwCvWM7RUMFdWRVMyR05CVVBDN1I3UU5LSU83MThFSC4u")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func footballLink(_ sender: UIButton) {
                UIApplication.shared.open(URL(string: "https://docs.google.com/forms/d/e/1FAIpQLSdBum7lQ7RGYMwfd3C36XoMMEgVrRLUX2ty1JN9lYtMpoyxyQ/viewform")! as URL, options: [:], completionHandler: nil)
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
