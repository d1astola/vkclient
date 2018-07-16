//
//  IPProfileVC.swift
//  VKClient
//
//  Created by Tester on 6/27/18.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import UIKit

class IPProfileVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    private var searchController: UISearchController!
    
    private let dataSource = IPProfileDataSource()
    private let navBarHelper = IPNavigationBarHelper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView?.register(UINib(nibName: "IPProfileHeaderCell", bundle: nil), forCellReuseIdentifier: IPProfileHeaderCell.identifier())
        
        tableView?.delegate = self.dataSource
        tableView?.dataSource = self.dataSource
        
        let drawer = self.parent?.parent as! IPRightMenuVC
        self.navigationItem.title = NSLocalizedString("mainProfileTitle", tableName: "IPMain", bundle: Bundle.main, value: "", comment: "")
        self.navBarHelper.setupHamburgerButton(self.navigationItem, drawer: drawer)
        self.navBarHelper.applyStyle((self.navigationController?.navigationBar)!)
        
        self.searchController = UISearchController(searchResultsController:  nil)
        
//        self.searchController.searchResultsUpdater = self
//        self.searchController.delegate = self
//        self.searchController.searchBar.delegate = self
        
        self.searchController.hidesNavigationBarDuringPresentation = false
        self.searchController.dimsBackgroundDuringPresentation = true
        
        self.navigationItem.titleView = searchController.searchBar
//        self.navigationItem.leftBarButtonItem = nil
        
        self.definesPresentationContext = true
    }
    
}
