//
//  URLRequest+.swift
//  Matsosik
//
//  Created by Kdaramz on 3/3/24.
//

import Foundation

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

        assert(!reservedFields.contains(field))

        setValue(value, forHTTPHeaderField: field)
    }
}
