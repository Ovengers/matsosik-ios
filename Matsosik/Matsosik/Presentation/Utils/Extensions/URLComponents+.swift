//
//  URLComponents+.swift
//  Matsosik
//
//  Created by Kdaramz on 3/3/24.
//

import Foundation

extension URLComponents {
    func appendQueries(_ queries: [String: String?]) {
        var queryItems = self.queryItems
        queries.forEach { key, value in
            queryItems?.append(URLQueryItem(name: key, value: value))
        }
    }
}
