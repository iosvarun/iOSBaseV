//
//  UIVCExtension.swift
//  BaseV
//
//  Created by Varun Kumar on 13/06/20.
//  Copyright © 2020 Varun Kumar. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    /// this class variable is used to return the storyboard ID
    class var storyboardID: String {
        return "\(self)"
    }
    
    /// this function is used to instantiate the storyboard
    ///
    /// - Parameter appStoryboard: storyboard name
    /// - Returns: returns the storyboard
    static func instantiate(fromAppStoryboard appStoryboard: AppStoryboardEnum) -> Self? {
        return appStoryboard.viewController(viewControllerClass: self)
    }
}
