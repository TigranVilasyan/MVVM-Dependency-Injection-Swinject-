//
//  ExampleRequesst.swift
//  TestTask
//
//  Created by Tigran VIasyan on 18.07.22.
//

import Foundation
import Alamofire


public enum ExampleRequest: BackEndHelperRequest {
    case getData
    
    
    public var path: String {
        switch self {
        case .getData:
            return "/static/json/sample.json"
        }
    }
    
    public var method: HTTPMethod {
        switch self {
        case .getData:
            return .get
        }
    }
    
    public var parameters: [String: Any]? {
        switch self {
        case .getData:
            return nil
        }
    }
    
    public var headers: HTTPHeaders? {
        switch self {
        case .getData:
            return nil
        }
    }
}
