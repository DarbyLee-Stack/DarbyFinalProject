//
//  ToDoTableViewController.swift
//  FinalProject
//
//  Created by Darby Lee-Stack on 7/31/20.
//  Copyright © 2020 Mia Yan. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    var listOfToDo : [ToDoClass] = []
    
    func createToDo() -> [ToDoClass] {

         let task1 = ToDoClass()
         task1.description = "Use public transportation"

         let task2 = ToDoClass()
         task2.description = "paper recycling"
        
         let task3 = ToDoClass()
         task3.description =
            "plastic recycling"
        
         let task4 = ToDoClass()
         task4.description =
            "reusable water bottle"
        
         // important is set to false by default

         return [task1, task2, task3, task4]
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listOfToDo = createToDo()
        }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    

    // MARK: - Table view data source

    /*
 override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
*/
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listOfToDo.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let eachToDo = listOfToDo[indexPath.row]

        if eachToDo.important {
          cell.textLabel?.text = "✔️" + eachToDo.description
        } else {
          cell.textLabel?.text = eachToDo.description
        }

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextAddToDoVC = segue.destination as?
            AddToDoViewViewController {
            nextAddToDoVC.previousToDoTVC = self
        }
    }
 


}
