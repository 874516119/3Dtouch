//
//  AppDelegate.swift
//  3DTouch_Swift
//
//  Created by 蒋林 on 15/12/8.
//  Copyright © 2015年 蒋林. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        
        let icon: UIApplicationShortcutIcon = UIApplicationShortcutIcon.init(type: UIApplicationShortcutIconType.Love)
        let shortItem: UIApplicationShortcutItem = UIApplicationShortcutItem.init(type: "点我", localizedTitle: "点我", localizedSubtitle: "亲，点我试试", icon: icon, userInfo: nil)
        let shortItems: NSArray = [shortItem]
        UIApplication.sharedApplication().shortcutItems = shortItems as? [UIApplicationShortcutItem]
        
        return true
    }
    
    func application(application: UIApplication, performActionForShortcutItem shortcutItem: UIApplicationShortcutItem, completionHandler: (Bool) -> Void) {
        print(shortcutItem)
    }

}

