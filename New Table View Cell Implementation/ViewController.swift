//
//  ViewController.swift
//  New Table View Cell Implementation
//
//  Created by Rahul Anantulwar on 10/31/19.
//  Copyright © 2019 Rahul Anantulwar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Outlets
    @IBOutlet weak var tblViewUser: UITableView!
    
    // Variables
    let users = [User(name: "Rahul", email: "rahul@g.com"),
                  User(name: "Suyash", email: "suyash@g.com"),
                    User(name: "Saurabh", email: "saurabh@g.com")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Registering the Nibs
        registerNIBs()
    }
    
    func registerNIBs() {
        tblViewUser.register(UINib(nibName: "UsersTableViewCell", bundle: nil), forCellReuseIdentifier: UsersTableViewCell.identifier)
    }

}




