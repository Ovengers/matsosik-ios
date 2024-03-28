//
//  URLRequest+.swift
//  Matsosik
//
//  Created by Kdaramz on 3/3/24.
//

import Foundation
import OSLog

extension URLRequest {
    mutating func setHTTPMethod(_ httpMethod: HTTPMethod) {
        self.httpMethod = String(describing: httpMethod)
    }

    mutating func setHTTPHeader(field: String, value: String?) {
        let reservedFields = [
            "Content-Length",
            "Authorization",
            "Connection",
            "Host",
            "Proxy-Authenticate",
            "Proxy-Authorization",
            "WWW-Authenticate"
        ]

        guard !reservedFields.contains(field) else {
            Logger().warning("\(field) is already reserved.")

            return
        }

        setValue(value, forHTTPHeaderField: field)
    }
}
