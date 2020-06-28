//
//  UICollectionViewExtensions.swift
//  BaseV
//
//  Created by Varun Kumar on 14/06/20.
//  Copyright © 2020 Varun Kumar. All rights reserved.
//

import UIKit

extension UICollectionView {
    
    func registerNib(_ identifier: String) {
        register(UINib(nibName: identifier, bundle: nil), forCellWithReuseIdentifier: identifier)
    }
    
    func dequeueCell<T: UICollectionViewCell>(withIdentifier identifier: String, for indexPath: IndexPath) -> T {
        return dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! T
    }
    
    func dequeueSupplementaryView<T: UICollectionReusableView>(ofKind kind:String, withReuseIdentifier identifier: String, for indexPath: IndexPath) -> T {
        return dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: identifier, for: indexPath) as! T
    }
    
    func registerSupplementaryViewByNib<T: UICollectionReusableView>(_ type: T.Type, kind: String) {
        let nib = UINib(nibName: type.nibName, bundle: nil)
        register(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: type.reuseIdentifier)
    }
    
    func registerSupplementaryView<T: UICollectionReusableView>(_ type: T.Type, kind: String) {
        register(type, forSupplementaryViewOfKind: kind, withReuseIdentifier: type.reuseIdentifier)
    }
    
}
