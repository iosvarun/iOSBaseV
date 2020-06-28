//
//  Theme.swift
//  BaseV
//
//  Created by Varun Kumar on 13/06/20.
//  Copyright © 2020 Varun Kumar. All rights reserved.
//

import UIKit

class Theme {

    struct Font {
        static func light(_ size: CGFloat) -> UIFont {
            return UIFont.displayFont(type: .Light, size: size)
        }

        static func regular(_ size: CGFloat) -> UIFont {
            return UIFont.displayFont(type: .Regular, size: size)
        }

        static func medium(_ size: CGFloat) -> UIFont {
            return UIFont.displayFont(type: .Medium, size: size)
        }
        static func semiBold(_ size: CGFloat) -> UIFont {
            return UIFont.displayFont(type: .SemiBold, size: size)
        }

        static func bold(_ size: CGFloat) -> UIFont {
            return UIFont.displayFont(type: .Bold, size: size)
        }

        static func lightItalic(_ size: CGFloat) -> UIFont {
            return UIFont.displayFont(type: .LightItalic, size: size)
        }

        static func regularItalic(_ size: CGFloat) -> UIFont {
            return UIFont.displayFont(type: .RegularItalic, size: size)
        }

        static func boldItalic(_ size: CGFloat) -> UIFont {
            return UIFont.displayFont(type: .BoldItalic, size: size)
        }
    }
    
    static func color(_ customization: ColorCustomization) -> UIColor {
        return colorBase(customization)
    }
    
    static func colorBase(_ customization: ColorCustomization) -> UIColor {
        switch customization {
        case.tabBarBackground: return Color.brownishGrey
        case.appThemeColor: return Color.voilet
        case.navBarColor: return Color.warmGrey
        case.gradientViewColor: return Color.gradientViewColor

        }
    }
    
}
