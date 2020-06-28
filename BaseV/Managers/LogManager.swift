//
//  LogManager.swift
//  BaseV
//
//  Created by Varun Kumar on 15/06/20.
//  Copyright © 2020 Varun Kumar. All rights reserved.
//

import Foundation
struct LogManager {
    
    static func debug(_ items: Any?) {
        guard let items = items else { return }
        #if DEBUG
        if let data = items as? [String: Any] {
            print(prettyPrint(data: data))
        }else {
            print(items)
        }
        #endif
    }
    
    static func prettyPrint(data: [String: Any]) -> String{
        var string: String = ""
        if let data = try? JSONSerialization.data(withJSONObject: data, options: .prettyPrinted){
            if let nstr = NSString(data: data, encoding: String.Encoding.utf8.rawValue){
                string = nstr as String
            }
        }
        return string
    }
    
    static func debug(_ text: String?) {
           guard let text = text else { return }
           
           #if DEBUG
           print(text)
           #endif
       }
    
}
