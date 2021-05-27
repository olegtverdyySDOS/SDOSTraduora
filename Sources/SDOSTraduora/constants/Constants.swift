//
//  File.swift
//  
//
//  Created by Oleg Tverdyy on 27/5/21.
//

import Foundation

struct Constants {
    struct ws {
        static let baseUrl = "https://traduora.sdos.es/"
        static let auth = "api/v1/auth/token"
        static func langs(project: String) -> String { "api/v1/projects/\(project)/translations" }
        static func downloadLang(project: String, language: String, label: String? = nil) -> String {
            if let label = label {
                return "api/v1/projects/\(project)/exports/\(label)"
            } else {
                return "api/v1/projects/\(project)/exports"
            }
        }
        
        struct method {
            static let POST = "POST"
            static let GET = "GET"
        }
        
        struct headers {
            static let contentType = "Content-Type"
            static let authorization = "authorization"
            
            struct value {
                static let json = "application/json"
                static let octet = "application/octet-stream"
            }
        }
        
        struct query {
            static let locale = "locale"
            static let format = "format"
            struct value {
                static let jsonNested = "jsonnested"
            }
        }
    }
}
