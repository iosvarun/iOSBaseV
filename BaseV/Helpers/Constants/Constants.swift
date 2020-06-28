//
//  Constants.swift
//  BaseV
//
//  Created by Varun Kumar on 13/06/20.
//  Copyright © 2020 Varun Kumar. All rights reserved.
//

import Foundation
import UIKit

let IS_IPAD             = (UIDevice.current.userInterfaceIdiom == .pad ? true : false)
let IS_PORTRAIT         = (UIDevice.current.orientation == .portrait || UIDevice.current.orientation == .portraitUpsideDown)
let IS_LANDSCAPE        = (UIDevice.current.orientation == .landscapeLeft || UIDevice.current.orientation == .landscapeRight)
let APP_DELEGATE        = UIApplication.shared.delegate as! AppDelegate
let SCREEN_WIDTH        = UIScreen.main.bounds.width
let SCREEN_HEIGHT       = UIScreen.main.bounds.height
let APP_VERSION = "APP_Version"
