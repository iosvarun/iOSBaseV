//
//  ViewProtocols.swift
//  BaseV
//
//  Created by Varun Kumar on 13/06/20.
//  Copyright © 2020 Varun Kumar. All rights reserved.
//

import Foundation
import UIKit

/// Genric Protocol for View
protocol ViewFromNib {
}

extension ViewFromNib {
    static var nibName: String {
        return String(describing: Self.self)
    }
    
    static var nib: UINib {
        return UINib(nibName: self.nibName, bundle: nil)
    }
    
    static func view() -> Self {
        let objects = self.nib.instantiate(withOwner: nil, options: nil)
        return objects.first as! Self
    }
}

/// Genric Protocol for View
protocol ViewControllerFromStoryboard {
    static var storyboardName: String { get }
}


extension ViewControllerFromStoryboard {
    static var storyboard: UIStoryboard {
        return UIStoryboard(name: self.storyboardName, bundle: nil)
    }
    
    static func viewController() -> Self {
        return storyboard.instantiateViewController(withIdentifier: String(describing: Self.self)) as! Self
    }
}
