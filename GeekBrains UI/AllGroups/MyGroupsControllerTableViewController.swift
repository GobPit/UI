//
//  MyGroupsControllerTableViewController.swift
//  GeekBrains UI
//
//  Created by Anton Shesternin on 09/03/2019.
//  Copyright © 2019 Mad Brains. All rights reserved.
//

import UIKit

class MyGroupsControllerTableViewController: UITableViewController {
    
    
    var groups = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Мои Группы"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return groups.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Получаем ячейку из пула
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyGroupsCell", for: indexPath) as! MyGroupsCellTableViewCell

        // Получаем группу для конкретной строки
        let group = groups[indexPath.row]
        // Устанавливаем группу в надпись ячейки
        cell.myGroupName.text = group
        return cell
    }
    
    @IBAction func addGroup(segue: UIStoryboardSegue) {
        // Проверяем идентификатор, чтобы убедится, что это нужный переход
        if segue.identifier == "addGroup" {
            // Получаем ссылку на контроллер, с которого осуществлен переход
            let allGroupsController = segue.source as! AllGroupsControllerTableViewController
            // Получаем индекс выделенной ячейки
            if let indexPath  = allGroupsController.tableView.indexPathForSelectedRow {
                // Получаем группу по индексу
                let group = allGroupsController.groups[indexPath.row]
                // Проверяем, что такого города нет в списке
                if !groups.contains(group.title) {
                    groups.append(group.title)
                    
                    tableView.reloadData()
                }
            }
        }
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            groups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }    
    }
    

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
