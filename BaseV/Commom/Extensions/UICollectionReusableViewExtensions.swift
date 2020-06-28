//
//  UICollectionReusableViewExtensions.swift
//  BaseV
//
//  Created by Varun Kumar on 14/06/20.
//  Copyright © 2020 Varun Kumar. All rights reserved.
//

import UIKit

extension UICollectionReusableView {
    public static var nibName: String {
        return self.nameOfClass
    }
    
    public static var reuseIdentifier: String {
        return self.nameOfClass
    }
}
