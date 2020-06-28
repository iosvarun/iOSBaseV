//
//  DateExtensions.swift
//  BaseV
//
//  Created by Varun Kumar on 15/06/20.
//  Copyright © 2020 Varun Kumar. All rights reserved.
//

import Foundation
import UIKit

extension Date {
    
    public enum DayStyle : UInt {
        case none
        case short
        case long
        
        var dayFormat:String{
            switch self{
            case .short:
                return "EE"
            case .long:
                return "EEEE"
            case .none:
                return ""
            }
        }
    }
    
    public static let minutesInAWeek = 24 * 60 * 7
    
    //MARK: Initializes Date from string and format
    public init?(fromString string: String, format: String, timezone: TimeZone? = nil) {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        if let zone = timezone{
            formatter.timeZone = zone
        }
        if let date = formatter.date(from: string) {
            self = date
        } else {
            return nil
        }
    }
    
    //MARK: Initializes Date from string returned from an http response, according to several RFCs
    public init? (httpDateString: String) {
        if let rfc1123 = Date(fromString: httpDateString, format: "EEE',' dd' 'MMM' 'yyyy HH':'mm':'ss zzz") {
            self = rfc1123
            return
        }
        if let rfc850 = Date(fromString: httpDateString, format: "EEEE',' dd'-'MMM'-'yy HH':'mm':'ss z") {
            self = rfc850
            return
        }
        if let asctime =  Date(fromString: httpDateString, format: "EEE MMM d HH':'mm':'ss yyyy") {
            self = asctime
            return
        }
        //self.init()
        return nil
    }
    
    public func getDateStringFromTimeStamp(timeinerval: TimeInterval ) -> String {
        let date = Date(timeIntervalSince1970: timeinerval)
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US")
        dateFormatter.dateStyle = .medium
        
        return dateFormatter.string(from: date)
    }
    
    //MARK: Converts Date to String
    public func toString(dateStyle: DateFormatter.Style = .medium, timeStyle: DateFormatter.Style = .medium) -> String {
        let formatter = DateFormatter()
        formatter.timeZone = TimeZone.current
        formatter.dateStyle = dateStyle
        formatter.timeStyle = timeStyle
        return formatter.string(from: self)
    }
    
    //MARK: Converts Date to String, with format
    public func toString(format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
//        formatter.locale = NSLocale(localeIdentifier: getAppLanguage()) as Locale
        return formatter.string(from: self)
    }
    
    //MARK: Calculates how many days passed from now to date
    public func daysInBetweenDate(_ date: Date) -> Double {
        var diff = self.timeIntervalSince1970 - date.timeIntervalSince1970
        diff = fabs(diff/86400)
        return diff
    }
    
    //MARK: Calculates how many hours passed from now to date
    public func hoursInBetweenDate(_ date: Date) -> Double {
        var diff = self.timeIntervalSince1970 - date.timeIntervalSince1970
        diff = fabs(diff/3600)
        return diff
    }
    
    //MARK: Calculates how many minutes passed from now to date
    public func minutesInBetweenDate(_ date: Date) -> Double {
        var diff = self.timeIntervalSince1970 - date.timeIntervalSince1970
        diff = fabs(diff/60)
        return diff
    }
    
    //MARK: Calculates how many seconds passed from now to date
    public func secondsInBetweenDate(_ date: Date) -> Double {
        var diff = self.timeIntervalSince1970 - date.timeIntervalSince1970
        diff = fabs(diff)
        return diff
    }
    
    //MARK: Easy creation of time passed String. Can be Years, Months, days, hours, minutes or seconds
    public func timePassed() -> String {
        let date = Date()
        let calendar = Calendar.current
        let components = (calendar as NSCalendar).components([.year, .month, .day, .hour, .minute, .second], from: self, to: date, options: [])
        var str: String
        
        if components.year! >= 1 {
            components.year == 1 ? (str = "year") : (str = "years")
            return "\(String(describing: components.year)) \(str) ago"
        } else if components.month! >= 1 {
            components.month == 1 ? (str = "month") : (str = "months")
            return "\(String(describing: components.month)) \(str) ago"
        } else if components.day! >= 1 {
            components.day == 1 ? (str = "day") : (str = "days")
            return "\(String(describing: components.day)) \(str) ago"
        } else if components.hour! >= 1 {
            components.hour == 1 ? (str = "hour") : (str = "hours")
            return "\(String(describing: components.hour)) \(str) ago"
        } else if components.minute! >= 1 {
            components.minute == 1 ? (str = "minute") : (str = "minutes")
            return "\(String(describing: components.minute)) \(str) ago"
        } else if components.second == 0 {
            return "Just now"
        } else {
            return "\(String(describing: components.second)) seconds ago"
        }
    }
    
    
    //MARK: Check if date is in future.
    public var isFuture: Bool {
        return self > Date()
    }
    
    //MARK: Check if date is in past.
    public var isPast: Bool {
        return self < Date()
    }
    
    //MARK: Check date if it is today
    public var isToday: Bool {
        let format = DateFormatter()
        format.dateFormat = "yyyy-MM-dd"
        format.locale =  Locale(identifier: "")
        return format.string(from: self) == format.string(from: Date())
    }
    
    //MARK: Check date if it is yesterday
    public var isYesterday: Bool {
        let format = DateFormatter()
        format.dateFormat = "yyyy-MM-dd"
        format.locale =  Locale(identifier: "")
        let yesterDay = Calendar.current.date(byAdding: .day, value: -1, to: Date())
        return format.string(from: self) == format.string(from: yesterDay!)
    }
    
    //MARK: Check date if it is tomorrow
    public var isTomorrow: Bool {
        let format = DateFormatter()
        format.dateFormat = "yyyy-MM-dd"
        format.locale =  Locale(identifier: "")
        let tomorrow = Calendar.current.date(byAdding: .day, value: 1, to: Date())
        return format.string(from: self) == format.string(from: tomorrow!)
    }
    
    //MARK: Check date if it is within this month.
    public var isThisMonth: Bool {
        let today = Date()
        return self.month == today.month && self.year == today.year
    }
    
    public var isThisWeek: Bool {
        return self.minutesInBetweenDate(Date()) <= Double(Date.minutesInAWeek)
    }
    
    // MARK : Get the year from the date
    public var year: Int {
        return NSCalendar.current.component(Calendar.Component.year, from: self)
    }
    
    // MARK : Get the month from the date
    public var month: Int {
        return NSCalendar.current.component(Calendar.Component.month, from: self)
    }
    
    // MARK : Get the weekday from the date
    public var weekday: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
    }
    
    // MARK : Get the month from the date
    public var monthAsString: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM"
        dateFormatter.locale =  Locale(identifier: "")
        return dateFormatter.string(from: self)
    }
    
    // MARK : Get the day from the date
    public var day: Int {
        return Calendar.current.component(.day, from: self)
    }
    
    //MARK: Get the hours from date
    public var hour: Int {
        return Calendar.current.component(.hour, from: self)
    }
    
    //MARK: Get the minute from date
    public var minute: Int {
        return Calendar.current.component(.minute, from: self)
    }
    
    //MARK: Get the second from the date
    public var second: Int {
        return Calendar.current.component(.second, from: self)
    }
    
    //MARK : Gets the nano second from the date
    public var nanosecond : Int {
        return Calendar.current.component(.nanosecond, from: self)
    }
    
    /// Returns the amount of months from another date
    func months(from date: Date) -> Int {
        return Calendar.current.dateComponents([.month], from: date, to: self).month ?? 0
    }
    
    /// Returns the amount of weeks from another date
    func weeks(from date: Date) -> Int {
        return Calendar.current.dateComponents([.weekOfMonth], from: date, to: self).weekOfMonth ?? 0
    }
    
    // MARK : Get the weekday from the date
    func weekday(dayStyle: DayStyle = .short) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = dayStyle.dayFormat
        return dateFormatter.string(from: self)
    }
    
    var age: Int {
        return Calendar.current.dateComponents([.month], from: self, to: Date()).month!
    }
    
    func toTimeStringUTC(format: String) -> String {
        let formatter = DateFormatter()
        formatter.timeZone = TimeZone.init(abbreviation: "UTC")
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
    
    func stripTime() -> Date {
        let components = Calendar.current.dateComponents([.year, .month, .day], from: self)
        let date = Calendar.current.date(from: components)
        return date!
    }
}
