//
//  IPFriendsVC.swift
//  VKClient
//
//  Created by Игорь Пак on 28/06/2018.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import UIKit

class IPFriendsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    private let dataSource = IPFriendsDataSource()
    private let helper = IPNavigationBarHelper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "IPFriendCell", bundle: Bundle.main), forCellReuseIdentifier: IPFriendCell.identifier())
        let drawer = self.parent?.parent as! IPRightMenuVC
        self.navigationItem.title = NSLocalizedString("mainFriendsTitle", tableName: "IPMain", bundle: Bundle.main, value: "", comment: "")
        self.helper.setupHamburgerButton(self.navigationItem, drawer: drawer)
        self.helper.applyStyle((self.navigationController?.navigationBar)!)
        tableView.delegate = dataSource
        tableView.dataSource = dataSource
        dataSource.updateFriends()
    }
}
