//
//  AddToTableViewController.swift
//  Maqui
//
//  Created by Kyara Torres-Olivares on 8/15/19.
//  Copyright © 2019 KWK. All rights reserved.
//

import UIKit

//var info = [String()]
var event = ["hello", "world", "luck"]
class AddInfoViewController
: UITableViewController {
    
    @IBOutlet var InfoList: UITableView!
    

    
    
    func tableView(tableView: UITableView, numberOf RowsInSection, section: Int) -> Int{
        return event.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) {
        let cell = UITableViewCell(style: UITableViewCell, reuseIndentifier: nil)
        cell.textLabel?.text = event[indexPath.row]
        return cell
        
    }
    
    override func viewDidLoad() {
                super.viewDidLoad()
        
            }
    
    func didRecieveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}
//
//    var previousVC = ToDoTableViewController()
//
//
//
//    @IBOutlet weak var titleTextField: UITextField!
//
//    @IBOutlet weak var textFieldInput: UITextView!
//
//
//    //    @IBOutlet weak var importantSwitch: UISwitch!
//    @IBAction func addTapped(_ sender: Any) {
//        // we have to grab this view context to be able to work with Core Data
//        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
//
//            // we are creating a new ToDoCD object here, naming it toDo
//            let toDo = ToDoCD(entity: ToDoCD.entity(), insertInto: context)
//
//            // if the titleTextField has text, we will call that text titleText
//            if let titleText = titleTextField.text {
//                // we will take the titleText and assign that value to toDo.name
//                // this .name and .important came from the attributes you typed in on the Core Data page!
//                toDo.name = titleText
////                toDo.important = importantSwitch.isOn
//            }
//
//            try? context.save()
//
//            navigationController?.popViewController(animated: true)
//        }
//
//
//    }
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
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
