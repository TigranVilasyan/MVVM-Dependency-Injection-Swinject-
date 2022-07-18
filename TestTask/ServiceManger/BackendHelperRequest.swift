//
//  BackendHelperRequest.swift
//  TestTask
//
//  Created by Tigran VIasyan on 18.07.22.
//

import Foundation
import Alamofire

public protocol BackEndHelperRequest {
   
    /// Relative path of the endpoint we want to call (ie. `/users/login`)
    var path            : String                { get }
    
    /// This define the HTTP method we should use to perform the call
    
    var method        : HTTPMethod            { get }
    
    /// You may also define a list of headers to pass along with each request.
    var headers        : HTTPHeaders?        { get }
    
}
