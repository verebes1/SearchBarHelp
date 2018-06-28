//
//  SearchMembersController.swift
//  SearchBarHelp
//
//  Created by verebes on 28/06/2018.
//  Copyright © 2018 A&D Progress. All rights reserved.
//

import UIKit

class SearchMembersController: UITableViewController, UISearchControllerDelegate {

    var members = ["First", "Second", "Third", "Fourth"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationItem.title = NSLocalizedString("MEMBERS", comment: "")
        
        let search = UISearchController(searchResultsController: nil)
        self.definesPresentationContext = true
        //search.searchResultsUpdater = self
        search.dimsBackgroundDuringPresentation = false
        navigationItem.searchController = search
        navigationItem.hidesSearchBarWhenScrolling = false
    }


    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return members.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = members[indexPath.row]
        
        return cell
    }
}
