//
//  ViewController+TableViewMethods.swift
//  New Table View Cell Implementation
//
//  Created by Rahul Anantulwar on 10/31/19.
//  Copyright © 2019 Rahul Anantulwar. All rights reserved.
//

import UIKit

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: UsersTableViewCell.identifier, for: indexPath) as? UsersTableViewCell else {
            return UITableViewCell()}
        
        cell.populateTableView(with: users[indexPath.row])
        
        return cell
    }
}
