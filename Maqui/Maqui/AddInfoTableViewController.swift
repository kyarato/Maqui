//
//  AddInfoTableViewController.swift
//  Maqui
//
//  Created by Kyara Torres-Olivares on 8/16/19.
//  Copyright © 2019 KWK. All rights reserved.
//
///Users/KyaraTO/Documents/Maqui/Maqui/Maqui/AddInfoTableViewController.swift//

import UIKit
//var event = []
//var event : [String] = []
var userData = false
var event = ["Anna-Paula Pacheco", "Kyara Torres-Olivares", "Peyton Copeland"]

class AddInfoTableViewController : UITableViewController {
    
//    @IBAction func goToForm(_ sender: Any) {
//        performSegue(withIdentifier: "goToBabySitterAdd", sender: self)
//    }
    @IBOutlet weak var InfoList: UITableView!
    
    override func viewDidAppear(_ animated:Bool) {
        InfoList.reloadData()
    }
    override func viewDidLoad(){
        super.viewDidLoad()
        
        userData = UserDefaults.standard.bool(forKey: "userData")
        if userData == true {
            event = UserDefaults.standard.object(forKey: "theEvent") as! [String]
        }
        else{
            event.append("Peyton Copeland")
            UserDefaults.standard.set(event, forKey: "theEvent")
            
            if event[0] == "Peyton Copeland" {
                event.remove(at: 0)
                UserDefaults.standard.set(event, forKey: "theEvent")
            }
            
        }
        InfoList.reloadData()
    
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return event.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)-> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
//        let cell  = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: nil)
        cell.textLabel?.text = event[indexPath.row]
        return cell
    }

    func didRecieveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
}

//import UIKit
//
//class AddInfoTableViewController: UITableViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Uncomment the following line to preserve selection between presentations
//        // self.clearsSelectionOnViewWillAppear = false
//
//        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
//        // self.navigationItem.rightBarButtonItem = self.editButtonItem
//    }
//
//    // MARK: - Table view data source
//
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }
//
//    /*
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
//
//        // Configure the cell...
//
//        return cell
//    }
//    */
//
//    /*
//    // Override to support conditional editing of the table view.
//    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
//        // Return false if you do not want the specified item to be editable.
//        return true
//    }
//    */
//
//    /*
//    // Override to support editing the table view.
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete {
//            // Delete the row from the data source
//            tableView.deleteRows(at: [indexPath], with: .fade)
//        } else if editingStyle == .insert {
//            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
//        }
//    }
//    */
//
//    /*
//    // Override to support rearranging the table view.
//    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
//
//    }
//    */
//
//    /*
//    // Override to support conditional rearranging of the table view.
//    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
//        // Return false if you do not want the item to be re-orderable.
//        return true
//    }
//    */
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//}
