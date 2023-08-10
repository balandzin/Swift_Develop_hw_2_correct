//
//  ViewController2.swift
//  hw_2
//
//  Created by Антон Баландин on 8.08.23.
//

import Foundation
import UIKit

class GroupCell: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Groups"
        view.backgroundColor = UIColor.white
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        5
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        CustomTableViewCellGroups()
    }
    
}
