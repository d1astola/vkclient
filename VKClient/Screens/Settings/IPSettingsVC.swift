//
//  IPSettingsVC.swift
//  VKClient
//
//  Created by Tester on 7/13/18.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import UIKit

class IPSettingsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private let helper = IPNavigationBarHelper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let drawer = self.parent?.parent as! IPRightMenuVC
        self.navigationItem.title = NSLocalizedString("mainSettingsTitle", tableName: "IPMain", bundle: Bundle.main, value: "", comment: "")
        self.helper.setupHamburgerButton(self.navigationItem, drawer: drawer)
        self.helper.applyStyle((self.navigationController?.navigationBar)!)
    }
    
}
