//
//  FontEnum.swift
//  BaseV
//
//  Created by Varun Kumar on 13/06/20.
//  Copyright © 2020 Varun Kumar. All rights reserved.
//

import UIKit

// swiftlint:disable identifier_name
public enum FontType: String {
    case None = ""
    case Regular = "Regular"
    case Bold = "Bold"
    case DemiBold = "DemiBold"
    case Light = "Light"
    case UltraLight = "UltraLight"
    case Italic = "Italic"
    case Thin = "Thin"
    case Book = "Book"
    case Roman = "Roman"
    case Medium = "Medium"
    case MediumItalic = "MediumItalic"
    case CondensedMedium = "CondensedMedium"
    case CondensedExtraBold = "CondensedExtraBold"
    case SemiBold = "SemiBold"
    case BoldItalic = "BoldItalic"
    case LightItalic = "LightIt"
    case RegularItalic = "RegularIt"
    case Heavy = "Heavy"
}

public enum FontName: String {
    case Lato
}

public enum FontSize: CGFloat {
    case ExSmall = 12
    case Small = 14
    case Regular = 16
    case Large = 18
    case Larger = 20
    case ExLarge = 24
    case Huge = 26
    case Jumbo = 30
    case ExtraJumbo = 36
}
