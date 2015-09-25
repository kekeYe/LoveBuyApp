//
//  AppDelegate.swift
//  LoveBuyApp
//
//  Created by Daniel on 15/9/25.
//  Copyright © 2015年 Daniel. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window!.backgroundColor = UIColor.whiteColor()
        
        let homeVC: HomeController = HomeController()
        let nav0 = UINavigationController(rootViewController:homeVC);
        let image0=UIImage(named:"icon_tab1_normal");
        let nav0Item=UITabBarItem(title:"首页",image:image0,tag:0)
        nav0Item.selectedImage=UIImage(named: "icon_tab1_selected")
        nav0.tabBarItem=nav0Item
        
        
        let personVC = PersonController();
        let nav1 = UINavigationController(rootViewController:personVC);
        let image1=UIImage(named:"icon_tab3_normal.png");
        let nav1Item=UITabBarItem(title:"个人中心",image:image1,tag:1)
        nav0Item.selectedImage=UIImage(named: "icon_tab1_selected")
        nav1.tabBarItem=nav1Item
        
        
        let navArr=[nav0,nav1];
        let tabBarController=UITabBarController();
        tabBarController.viewControllers=navArr;
        tabBarController.tabBar.tintColor = UIColor.redColor()
        self.window!.rootViewController=tabBarController;
    
        
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

