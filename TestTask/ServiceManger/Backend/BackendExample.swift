//
//  BackendExample.swift
//  TestTask
//
//  Created by Tigran VIasyan on 18.07.22.
//

import Foundation

extension BackendRequest {
    
    func getExampleData(complition: @escaping (WholeData?) -> ()) {
        let request = ExampleRequest.getData
        let url = URL(string: basePath + request.path)!
        BackendRequest.shared.requestWith(url: url, method: request.method) { resposne in
            do {
                let data = try JSONDecoder().decode(WholeData.self, from: resposne as! Data)
                print(data)
                complition(data)
            } catch {
                print(error)
                complition(nil)
            }
        }
    }
}
