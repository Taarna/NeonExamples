//
//  AppDelegate.swift
//  NeonExamples
//
//  Created by Ivana Rast on 28/09/15.
//  Copyright © 2015 Ivana Rast. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        let frame = UIScreen.mainScreen().bounds
        window = UIWindow(frame: frame)
        
        if let window = self.window {
            let mainTableViewController = MainTableViewController()
            let navigationController: UINavigationController = UINavigationController (rootViewController: mainTableViewController)
            
            window.rootViewController = navigationController
            window.makeKeyAndVisible()
        }
        
        return true
    }
}
