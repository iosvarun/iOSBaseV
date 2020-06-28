//
//  UILabelExtension.swift
//  BaseV
//
//  Created by Varun Kumar on 14/06/20.
//  Copyright © 2020 Varun Kumar. All rights reserved.
//

import Foundation
import UIKit

extension UILabel
{
    
    func set(text:String,
             withCharacterSpacing:CGFloat,
             lineHeight:CGFloat,
             alignment:NSTextAlignment) {
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = lineHeight
        let attrString = NSMutableAttributedString(string: text)
        attrString.addAttribute(NSAttributedString.Key.paragraphStyle,
                                value:paragraphStyle,
                                range:NSMakeRange(0, attrString.length))
        attrString.addAttribute(NSAttributedString.Key.kern, value: withCharacterSpacing, range: NSRange(location: 0, length: attrString.length - 1))
        self.attributedText = attrString
        self.textAlignment = alignment
    }
}
