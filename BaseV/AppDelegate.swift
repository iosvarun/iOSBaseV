//
//  AppDelegate.swift
//  BaseV
//
//  Created by Varun Kumar on 04/05/20.
//  Copyright © 2020 Varun Kumar. All rights reserved.
//

import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        self.window = UIWindow(frame: UIScreen.main.bounds)
        setInitialViewOnLaunch()
    /*
        
        if IS_IPAD {
            let value = UIInterfaceOrientation.portrait.rawValue
            UIDevice.current.setValue(value, forKey: "orientation")
            AppDelegate.AppUtility.lockOrientation(.all)
        }
        else {
            let value = UIInterfaceOrientation.portrait.rawValue
            UIDevice.current.setValue(value, forKey: "orientation")
            AppDelegate.AppUtility.lockOrientation(.portrait)
        }
 */
        
        return true
    }

    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return true
    }
    
    
    func applicationDidEnterBackground(_ application: UIApplication) {
           // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
           // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

       func applicationWillEnterForeground(_ application: UIApplication) {
           // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
       }

       func applicationDidBecomeActive(_ application: UIApplication) {
           // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
          // self.validateDeviceTimeWithServerTime()
       }

       func applicationWillTerminate(_ application: UIApplication) {
           // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
           // Saves changes in the application's managed object context before the application terminates.
       }

}

