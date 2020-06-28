//
//  NSObjectExtensions.swift
//  BaseV
//
//  Created by Varun Kumar on 15/06/20.
//  Copyright © 2020 Varun Kumar. All rights reserved.
//

import UIKit

extension NSObject {

    func callSelectorAsync(_ selector: Selector, object: AnyObject?, delay: TimeInterval) -> Timer {

        let timer = Timer.scheduledTimer(timeInterval: delay, target: self, selector: selector, userInfo: object, repeats: false)
        return timer
    }

    public class var nameOfClass: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }

    func sendAction(_ action: Selector, sender: AnyObject) -> Bool {
        var target: AnyObject? = sender
        while((target != nil) && (!target!.canPerformAction(action, withSender: sender))) {
            target = target!.next!
        }

        if target == nil {
            return false
        }
        return UIApplication.shared.sendAction(action, to: target, from: sender, for: nil)
    }

}
