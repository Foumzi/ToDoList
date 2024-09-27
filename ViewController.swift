//
//  ViewController.swift
//  TodoList
//
//  Created by Amine Nakhle on 26/09/2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoTableViewCell", for: indexPath) as! ToDoTableViewCell
        
        return cell
    }
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        let nib = UINib(nibName: "ToDoTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "ToDoTableViewCell")
        // Do any additional setup after loading the view.
    }


}

