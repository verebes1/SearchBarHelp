//
//  SearchMembersController.swift
//  SearchBarHelp
//
//  Created by verebes on 28/06/2018.
//  Copyright © 2018 A&D Progress. All rights reserved.
//

import UIKit

class SearchMembersController: UITableViewController, UISearchControllerDelegate {

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

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }



}
