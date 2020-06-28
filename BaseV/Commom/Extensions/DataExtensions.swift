//
//  DataExtensions.swift
//  BaseV
//
//  Created by Varun Kumar on 15/06/20.
//  Copyright © 2020 Varun Kumar. All rights reserved.
//

import Foundation

extension Data {
    
    var deviceTokenString: String {
        
        let tokenParts = self.map { data -> String in
            return String(format: "%02.2hhx", data)
        }
        
        let token = tokenParts.joined()
        LogManager.debug("Device Token: \(token)")
        return token
    }
    
}
