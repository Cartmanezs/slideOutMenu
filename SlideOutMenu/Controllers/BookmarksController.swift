//
//  BookmarksController.swift
//  SlideOutMenu
//
//  Created by Ingvar on 10/9/19.
//  Copyright © 2019 Igor. All rights reserved.
//

import UIKit

class BookmarksController: UITableViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = "Bookmark: \(indexPath.row)"
        return cell
    }
}
