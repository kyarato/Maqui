////
////  CompleteToDoViewController.swift
////  Maqui
////
////  Created by Kyara Torres-Olivares on 8/15/19.
////  Copyright © 2019 KWK. All rights reserved.
////
//
//import UIKit
//
//class CompleteToDoViewController: UITableViewController {
//
//    var previousVC = ToDoTableViewController()
//    var selectedToDo : ToDoCD?
//    @IBOutlet weak var titleLabel: UILabel!
//    @IBAction func completeTapped(_ sender: Any) {
//        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
//            if let theToDo = selectedToDo {
//                context.delete(theToDo)
//                navigationController?.popViewController(animated: true)
//            }
//        }
//    }
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        titleLabel.text = selectedToDo?.name
//        // Do any additional setup after loading the view.
//    }
//
//
//    /*
//     // MARK: - Navigation
//     // In a storyboard-based application, you will often want to do a little preparation before navigation
//     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//     // Get the new view controller using segue.destination.
//     // Pass the selected object to the new view controller.
//     }
//     */
//
//}
