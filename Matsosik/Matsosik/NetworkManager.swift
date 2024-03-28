//
//  MSNetworkManager.swift
//  Matsosik
//
//  Created by Kdaramz on 3/2/24.
//

import Foundation

enum ServerEnvironment {
    case sandbox
    case development
    case staging
    case production
}

final class NetworkManager {
    private init() { }

    private static var environment: ServerEnvironment = .sandbox

    private static var baseURL: URL {
        let baseURL: String

        switch environment {
        case .sandbox:
            baseURL = "http://52.79.125.14:8080"
        case .development:
            baseURL = ""
        case .staging:
            baseURL = ""
        case .production:
            baseURL = ""
        }

        return URL(string: baseURL)!
    }

    static let listAPI = baseURL.appending(path: "api/v1/restaurants")
}
