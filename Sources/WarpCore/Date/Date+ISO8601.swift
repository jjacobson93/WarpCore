//
//  Date+ISO8601.swift
//  WarpCore
//
//  Created by Jeremy Jacobson on 3/24/17.
//
//

import Foundation

extension Date {
    fileprivate static let iso8601Formatter: DateFormatter = { _ in
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssXXXXX"
        return formatter
    }()
    
    public var iso8601: String {
        return Date.iso8601Formatter.string(from: self)
    }
}
