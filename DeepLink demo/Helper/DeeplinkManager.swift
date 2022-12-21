//
//  DeeplinkManager.swift
//  DeepLink demo
//
//  Created by Jay Khunt on 21/12/22.
//

import Foundation

class DeeplinkManager {
    
    enum DeeplinkTarget: Equatable {
        case home
        case details(reference: String)
    }
    
    class DeepLinkConstants {
        static let scheme = "dld"
        static let host = "com.deepLink.demo"
        static let detailsPath = "/details"
        static let query = "id"
    }
    
    func manage(url: URL) -> DeeplinkTarget {
        guard url.scheme == DeepLinkConstants.scheme,
              url.host == DeepLinkConstants.host,
              url.path == DeepLinkConstants.detailsPath,
              let components = URLComponents(url: url, resolvingAgainstBaseURL: true),
              let queryItems = components.queryItems
        else { return .home }
        
        let query = queryItems.reduce(into: [String: String]()) { (result, item) in
            result[item.name] = item.value
        }
        
        guard let id = query[DeepLinkConstants.query] else { return .home }
        
        return .details(reference: id)
    }
}
