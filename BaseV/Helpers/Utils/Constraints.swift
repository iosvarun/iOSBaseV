//
//  Constraints.swift
//  BaseV
//
//  Created by Varun Kumar on 15/06/20.
//  Copyright © 2020 Varun Kumar. All rights reserved.
//

import Foundation
import UIKit

//MARK: Constraints
public struct Constraint{
    
    public static func pinSubview(subview:UIView?,superView:UIView,
                                  attribute:NSLayoutConstraint.Attribute,constant:CGFloat){
        
        superView.addConstraint(NSLayoutConstraint(item: subview,
                                                   attribute: attribute, relatedBy: NSLayoutConstraint.Relation.equal,
                                                   toItem: superView, attribute: attribute, multiplier: 1.0,
                                                   constant: constant))
        
    }
    
    public static func pinAllEdgesOfSubview(subview:UIView,superView:UIView){
        pinSubview(subview: subview, superView: superView, attribute: NSLayoutConstraint.Attribute.bottom,constant:0.0)
        pinSubview(subview: subview, superView: superView, attribute: NSLayoutConstraint.Attribute.top,constant:0.0)
        pinSubview(subview: subview, superView: superView, attribute: NSLayoutConstraint.Attribute.leading,constant:0.0)
        pinSubview(subview: subview, superView: superView, attribute: NSLayoutConstraint.Attribute.trailing,constant:0.0)
    }
    
    public static func pinCenterOfSubview(subview:UIView,superView:UIView){
        pinSubview(subview: subview, superView: superView, attribute: NSLayoutConstraint.Attribute.centerX,constant:0.0)
        pinSubview(subview: subview, superView: superView, attribute: NSLayoutConstraint.Attribute.centerY,constant:0.0)
    }
    
    public static func subviewHeight(subview:UIView,superView:UIView, constant:CGFloat){
       
        subview.addConstraint(NSLayoutConstraint(item: subview,
                                                 attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal,
                                                 toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1.0,
                                                 constant: constant))
    }
    
    public static func subviewWidth(subview:UIView,superView: UIView, constant:CGFloat){
        subview.addConstraint(NSLayoutConstraint(item: subview,
                                                 attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal,
                                                 toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1.0,
                                                 constant: constant))
    }
    
    public static func pinView(view: UIView, attribute:NSLayoutConstraint.Attribute, toView: UIView, onSuperView superView: UIView, constant:CGFloat){
        
        superView.addConstraint(NSLayoutConstraint(item: view,
                                                   attribute: attribute, relatedBy: NSLayoutConstraint.Relation.equal,
                                                   toItem: toView, attribute: attribute, multiplier: 1.0,
                                                   constant: constant))
        
    }
}
