//
//  ViewController.swift
//  toDoneList
//
//  Created by Samantha Cortopassi on 2/27/19.
//  Copyright © 2019 Samantha Cortopassi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var itemText: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    let todoList = TodoList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.dataSource = todoList
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
//        print("add todo item \(itemText.text)")
        guard let todo = itemText.text else {
            return
        }
        todoList.add(todo)
        tableView.reloadData()
    }
    


}

