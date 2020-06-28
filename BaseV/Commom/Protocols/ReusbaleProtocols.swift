//
//  ReusbaleProtocols.swift
//  BaseV
//
//  Created by Varun Kumar on 17/06/20.
//  Copyright © 2020 Varun Kumar. All rights reserved.
//

import UIKit

/// Genric Protocol for nib and identifier
protocol Reusable: AnyObject {
    static var reuseIdentifier: String { get }
    static var nib: UINib? { get }
}

extension Reusable {
    static var reuseIdentifier: String { return String(describing: self) }
    static var nib: UINib? { return UINib(nibName: reuseIdentifier, bundle: nil) }
}
