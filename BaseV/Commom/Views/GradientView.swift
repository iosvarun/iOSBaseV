//
//  GradientView.swift
//  BaseV
//
//  Created by Varun Kumar on 15/06/20.
//  Copyright © 2020 Varun Kumar. All rights reserved.
//

import UIKit

class GradientView: UIView {

    override public class var layerClass: Swift.AnyClass {
        return CAGradientLayer.self
    }
    
    init(colors: [UIColor]) {
        super.init(frame: .zero)
            
        guard let gradientLayer = self.layer as? CAGradientLayer else { return }
        gradientLayer.colors = colors.map{$0.cgColor}
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
