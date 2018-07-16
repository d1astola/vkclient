//
//  IPMenuVC.swift
//  VKClient
//
//  Created by Tester on 6/26/18.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import UIKit

protocol IPMenuDelegate: NSObjectProtocol {
    func changeCenter(_ storyboard: UIStoryboard)
}

class IPMenuVC: UIViewController {

    @IBOutlet weak var exitButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var exitButtonView: UIView!
    @IBOutlet weak var versionLabel: UILabel!
    let dataSource = IPMenuDataSource()
    weak var delegate: IPMenuDelegate?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tableView?.reloadData()
    }
    
    public func configure() {
        self.tableView?.delegate = dataSource
        self.tableView?.dataSource = dataSource
        self.tableView?.register(UINib(nibName: "IPMenuCell", bundle: nil), forCellReuseIdentifier: IPMenuCell.identifier())
        exitButtonView.layer.cornerRadius = 2
        exitButton.titleLabel?.text = NSLocalizedString("mainExitButton", tableName: "IPMain", bundle: Bundle.main, value: "", comment: "")
        versionLabel.text = NSLocalizedString("mainVersionLabel", tableName: "IPMain", bundle: Bundle.main, value: "", comment: "") + (Bundle.main.infoDictionary!["CFBundleShortVersionString"] as! String)
        dataSource.tableViewAction = {(storyboard) in
            self.delegate?.changeCenter(storyboard)
        }
    }
}
