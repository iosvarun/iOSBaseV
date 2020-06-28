//
//  AppStoryboardEnum.swift
//  BaseV
//
//  Created by Varun Kumar on 13/06/20.
//  Copyright © 2020 Varun Kumar. All rights reserved.
//

import Foundation
import UIKit

enum AppStoryboardEnum: String {
    
    case Main
    case SplashStoryboard
    
    fileprivate var instanse: UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: Bundle.main)
    }
    
    /// T refers to the generic argument, T.Type means Data type of T.
    func viewController<T: UIViewController>(viewControllerClass: T.Type) -> T? {
        let storyBoardID = (viewControllerClass as UIViewController.Type).storyboardID
        return instanse.instantiateViewController(withIdentifier: storyBoardID) as? T
    }
}
