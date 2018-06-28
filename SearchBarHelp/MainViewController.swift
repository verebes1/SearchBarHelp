//
//  ViewController.swift
//  SearchBarHelp
//
//  Created by verebes on 28/06/2018.
//  Copyright © 2018 A&D Progress. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {

    var items = ["One", "Two", "Three"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //MARK: - Tableview methods
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showMembers", sender: self)
    }
    
    
    //MARK: - Segue setup
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        /* Put any preparation here if needed */
    }
    
    //MARK: Navbar Button action
    @IBAction func searchBarButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "showMembers", sender: self)
    }
    
}

