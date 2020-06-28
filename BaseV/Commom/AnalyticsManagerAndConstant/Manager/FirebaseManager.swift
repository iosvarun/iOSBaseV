//
//  FirebaseManager.swift
//  BaseV
//
//  Created by Varun Kumar on 13/06/20.
//  Copyright © 2020 Varun Kumar. All rights reserved.
//

import Foundation
import Firebase

class FirebaseManager {
    static let shared = FirebaseManager()
    
    func sendAppUpdateEventToFireBase() {
        if (UserDefaults.standard.value(forKey: APP_VERSION) == nil) {
            Analytics.logEvent("first_open", parameters: nil)
            return
        }
        
        if(AppUtility.getAppVersion() != (UserDefaults.standard.value(forKey: APP_VERSION) as! String)){
            Analytics.logEvent("app_update", parameters: nil)
        }
    }
    
    func trackFireBaseEvent(_ name: String, attributes: NSMutableDictionary?) {
        
        attributes?.setValue(AppUtility.typeOfUser(), forKey: AnalyticsConstants.UserAttributes.TYPE_OF_USER)
        attributes?.setValue(AppUtility.deviceModel(), forKey: AnalyticsConstants.UserAttributes.DEVICE_MODEL)
        attributes?.setValue(AnalyticsConstants.UserConstants.APPLE, forKey: AnalyticsConstants.UserAttributes.DEVICE_MANUFACTURER)
        attributes?.setValue(AppUtility.osVersion(), forKey: AnalyticsConstants.UserAttributes.OS_VERSION)
        attributes?.setValue(AnalyticsConstants.UserConstants.IOS, forKey: AnalyticsConstants.UserAttributes.DEVICE_PLATFORM)
        attributes?.setValue("Active", forKey:  AnalyticsConstants.UserAttributes.ACCOUNT_STATUS)
        
        if let dicAttribute = attributes {
            for (key, value) in dicAttribute {
                if value is String {
                    
                    if value as! String == "" {
                        dicAttribute.removeObject(forKey: key)
                    }
                }
            }
            print("The Firebase analytics event name is:- ", name)
            print("The Firebase analytics parameters are:- ", dicAttribute)
            Analytics.logEvent(name, parameters: (dicAttribute as! [String : Any]))
        }
    }
    
    func setUserAttributes() {
        
        Analytics.setUserProperty("", forName: AnalyticsConstants.UserAttributes.SID)
        Analytics.setUserProperty(AppUtility.typeOfUser(), forName: AnalyticsConstants.UserAttributes.TYPE_OF_USER)
        Analytics.setUserProperty(AppUtility.deviceModel(), forName: AnalyticsConstants.UserAttributes.DEVICE_MODEL)
        Analytics.setUserProperty(AnalyticsConstants.UserConstants.APPLE , forName: AnalyticsConstants.UserAttributes.DEVICE_MANUFACTURER )
        Analytics.setUserProperty(AppUtility.osVersion()  , forName: AnalyticsConstants.UserAttributes.OS_VERSION)
    }
    
    func resetUser() {
        Analytics.setUserProperty(" ", forName: AnalyticsConstants.UserAttributes.SID)
    }
    
}
