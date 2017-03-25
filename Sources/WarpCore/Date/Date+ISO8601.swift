//
//  Date+ISO8601.swift
//  WarpCore
//
//  Created by Jeremy Jacobson on 3/24/17.
//
//

import Foundation

extension Date {
    public var iso8601: String {
        let formatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .iso8601)
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssXXXXX"
        return formatter.string(from: self)
    }
}
