//
//  ToDoTableViewController.swift
//  ToDo
//
//  Created by Taron Saribekyan on 08.12.21.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    var todos = [ToDo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        if let savedToDos = ToDo.loadToDos() {
            todos = savedToDos
            } else {
                todos =  ToDo.loadSampleToDos()
            }
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let todo = todos[indexPath.row]
        cell.textLabel?.text = todo.title
        return cell
    }
}
