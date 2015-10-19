//
//  MainTableViewController.swift
//  NeonExamples
//
//  Created by Ivana Rast on 28/09/15.
//  Copyright © 2015 Ivana Rast. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {

    private let cellIdentifier = "CellIdentifier"
    
    private let titles: [String] = ["Center", "Filling Superview"]
    
    //MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        
        self.navigationController?.navigationBar.translucent = false
    }
    
    //MARK: - UITableViewDataSource
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) 
        
        cell.textLabel?.text = titles[indexPath.row]
        
        return cell
    }
    
    //MARK: - UITableViewDelegate
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let viewController: UIViewController
        
        switch indexPath.row {
        case 0:
            viewController = CenterViewController()
            viewController.title = titles[indexPath.row]
            navigationController?.pushViewController(viewController, animated: true)
        case 1:
            viewController = FillingSuperViewViewController()
            viewController.title = titles[indexPath.row]
            navigationController?.pushViewController(viewController, animated: true)
        default:
            return
        }
    }
}
