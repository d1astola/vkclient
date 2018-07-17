//
//  IPFriendsVC.swift
//  VKClient
//
//  Created by Игорь Пак on 28/06/2018.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import UIKit
import SVProgressHUD

class IPFriendsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    private let dataSource = IPFriendsDataSource()
    private let helper = IPNavigationBarHelper()
    private let APIService = IPVKAPIService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "IPFriendCell", bundle: Bundle.main), forCellReuseIdentifier: IPFriendCell.identifier())
        let drawer = self.parent?.parent as! IPRightMenuVC
        self.navigationItem.title = NSLocalizedString("mainFriendsTitle", tableName: "IPMain", bundle: Bundle.main, value: "", comment: "")
        self.helper.setupHamburgerButton(self.navigationItem, drawer: drawer)
        self.helper.applyStyle((self.navigationController?.navigationBar)!)
        self.tableView.delegate = dataSource
        self.tableView.dataSource = dataSource
        self.segmentedControl.removeAllSegments()
        self.segmentedControl.insertSegment(withTitle: NSLocalizedString("mainFriendsSegmentedAll", tableName: "IPMain", bundle: Bundle.main, value: "", comment: ""), at: 0, animated: true)
        self.segmentedControl.insertSegment(withTitle: NSLocalizedString("mainFriendsSegmentedOnline", tableName: "IPMain", bundle: Bundle.main, value: "", comment: ""), at: 1, animated: true)
        self.segmentedControl.selectedSegmentIndex = 0
        dataSource.configure(self.tableView)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        SVProgressHUD.show()
        self.tableView?.isHidden = true
        self.APIService.updateFriends {
            SVProgressHUD.dismiss()
            self.tableView?.isHidden = false
        }
    }
    
    @IBAction func switchSegmentedControl(_ sender: UISegmentedControl) {
        dataSource.switchSegmentedControl(sender.selectedSegmentIndex)
    }
}
