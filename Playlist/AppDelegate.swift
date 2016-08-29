//
//  AppDelegate.swift
//  Playlist
//
//  Created by Nathan on 8/23/16.
//  Copyright © 2016 FalconeDevelopment. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        FIRApp.configure()
        
        return true
    }
}

