//
//  Utility.swift
//  BaseV
//
//  Created by Varun Kumar on 13/06/20.
//  Copyright © 2020 Varun Kumar. All rights reserved.
//

import Foundation
import UIKit
import DeviceGuru

class AppUtility: NSObject {
    class func deviceModel() -> String {
          let deviceGuru = DeviceGuru()
          let deviceName = deviceGuru.hardwareDescription()
          return deviceName ?? ""
      }
      
      class func typeOfUser() -> String {
          let strUserType = ""
          return strUserType
      }
    
     class func osVersion() -> String {
         let Device = UIDevice.current
         let iosVersion = NSString(string: Device.systemVersion).doubleValue
         return String(iosVersion)
         
     }
     
    class func getAppVersion() -> String {
         let version: String = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
         let build: String = Bundle.main.object(forInfoDictionaryKey: kCFBundleVersionKey as String) as! String
         return version + "." + build
     }
     
     class func saveAppVersionToDefaults() {
         UserDefaults.standard.set(self.getAppVersion(), forKey: APP_VERSION)
         UserDefaults.standard.synchronize()
     }
}
