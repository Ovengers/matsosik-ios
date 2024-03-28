//
//  HTTPMethod.swift
//  Matsosik
//
//  Created by Kdaramz on 3/3/24.
//

import Foundation

enum HTTPMethod: CustomStringConvertible {
    case get
    case post
    case patch
    case delete

    var description: String {
        return switch self {
        case .get:
            "GET"
        case .post:
            "POST"
        case .patch:
            "PATCH"
        case .delete:
            "DELETE"
        }
    }
}
