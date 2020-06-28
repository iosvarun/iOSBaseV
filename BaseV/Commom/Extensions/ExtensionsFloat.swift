//
//  ExtensionsFloat.swift
//  BaseV
//
//  Created by Varun Kumar on 14/06/20.
//  Copyright © 2020 Varun Kumar. All rights reserved.
//

import Foundation

extension Float {
    var format: String {
        return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) :
            String(format: "%.02f", self)
    }
    var format_1: String {
        return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) :
            String(format: "%.01f", self)
    }
    
    /// Rounds the double to decimal places value
    func roundTo(places:Int) -> Float {
        let divisor = pow(10.0, Float(places))
        return (self * divisor).rounded() / divisor
    }

}
