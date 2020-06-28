//
//  AppDelegateExtension.swift
//  BaseV
//
//  Created by Varun Kumar on 13/06/20.
//  Copyright © 2020 Varun Kumar. All rights reserved.
//

import Foundation
import UIKit
extension AppDelegate {
    
    func setInitialViewOnLaunch() {
        
        if let viewController = SplashViewController.instantiate(fromAppStoryboard: .SplashStoryboard ) {
            setViewControllerAsWindowRoot(viewController: viewController)
        }
        
    }
    
    /// Function to set rootviewcontroller
    ///
    /// - Parameter viewController: view controller to be root view controller
    func setViewControllerAsWindowRoot(viewController: UIViewController) {
        guard let window = self.window else { return }
        let navigationController = BaseNavigationViewController(rootViewController: viewController)
        navigationController.navigationBar.isHidden = true
        UIView.transition(with: window, duration: 0.3, options: .transitionCrossDissolve,
                          animations: {
                            self.window?.rootViewController = navigationController
                            self.window?.makeKeyAndVisible()
        }, completion: { _  in
        })
    }
    
}
