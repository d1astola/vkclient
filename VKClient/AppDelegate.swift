//
//  AppDelegate.swift
//  VKClient
//
//  Created by Tester on 5/30/18.
//  Copyright © 2018 Igor Pak. All rights reserved.
//

import UIKit
import CoreData
import VK_ios_sdk
//import Fabric
//import Crashlytics
import SVProgressHUD

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    private let coreDataInitializer = IPCoreDataInitializer.shared

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        coreDataInitializer.setupCoreData()
//        Fabric.with([Crashlytics.self])
        SVProgressHUD.setDefaultStyle(.dark)
        SVProgressHUD.setDefaultMaskType(.black)
        SVProgressHUD.setDefaultAnimationType(.flat)
        SVProgressHUD.setMinimumDismissTimeInterval(1)
        return true
    }

    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        VKSdk.processOpen(url, fromApplication: options[UIApplicationOpenURLOptionsKey.sourceApplication] as? String ?? "")
        return true
    }
    
}

