////
////  ToDoTableViewController.swift
////  Maqui
////
////  Created by Kyara Torres-Olivares on 8/15/19.
////  Copyright © 2019 KWK. All rights reserved.
////
//
//import UIKit
//
//class ToDoTableViewController: UITableViewController {
//
//    var toDos : [ToDoCD] = []
//    func getToDos() {
//        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
//
//            if let coreDataToDos = try? context.fetch(ToDoCD.fetchRequest()) as? [ToDoCD] {
//
//                toDos = coreDataToDos
//                tableView.reloadData()
//
//            }
//        }
//    }
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return toDos.count
//    }
//
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//        // this gives us a single ToDo
//        let toDo = toDos[indexPath.row]
//
//        performSegue(withIdentifier: "moveToComplete", sender: toDo)
//    }
//
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
//
//        let toDo = toDos[indexPath.row]
//
//        if let name = toDo.name {
//            if toDo.important {
//                cell.textLabel?.text = "❗️" + name
//            } else {
//                cell.textLabel?.text = toDo.name
//            }
//        }
//
//        return cell
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        getToDos()
//    }
//
//    // MARK: - Navigation
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        if let addVC = segue.destination as? AddToDoViewController {
//            addVC.previousVC = self
//        }
//        if let completeVC = segue.destination as? CompleteToDoViewController {
//            if let toDo = sender as? ToDoCD {
//                completeVC.selectedToDo = toDo
//                completeVC.previousVC = self
//            }
//        }
//        // Pass the selected object to the new view controller.
//    }
//
//
//}
