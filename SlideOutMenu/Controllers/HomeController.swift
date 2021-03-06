//
//  ViewController.swift
//  SlideOutMenu
//
//  Created by Ingvar on 9/12/19.
//  Copyright © 2019 Igor. All rights reserved.
//

import UIKit

class HomeController: UITableViewController, UIGestureRecognizerDelegate {
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = .red
        setupNavigationItems()
    }
    
    let darkCoverView = UIView()
    let menuController = MenuController()
    
    @objc func handleOpen() {
        (UIApplication.shared.keyWindow?.rootViewController as?  BaseSlidingController)?.openMenu()
    }
    
    @objc func handleHide() {
      (UIApplication.shared.keyWindow?.rootViewController as?  BaseSlidingController)?.closeMenu()

    }

    //  MARK:- Fileprivate
    
    fileprivate func setupNavigationItems() {
        navigationItem.title = "Home"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Open", style: .plain, target: self, action: #selector(handleOpen))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Hide", style: .plain, target: self, action: #selector(handleHide))
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cellId")
    
        cell.textLabel?.text = "Row: \(indexPath.row)"

        return cell
    }
}

