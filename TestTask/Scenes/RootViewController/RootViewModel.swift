//
//  FirstViewModel.swift
//  TestTask
//
//  Created by Tigran VIasyan on 23.06.22.
//

import Foundation
import Swinject



protocol RootViewModelInput: AnyObject {
    func viewDidLoad()
}


protocol RootViewModelOutput: AnyObject {
    func getData(complition: @escaping (WholeData?) -> ())

}

protocol RootViewModelType: AnyObject {
    var inputs: RootViewModelInput { get }
    var outputs: RootViewModelOutput { get }
}

class RootViewModel: RootViewModelInput,
                     RootViewModelOutput,
                     RootViewModelType {

    //MARK: Properties
    var inputs: RootViewModelInput { return self }
    var outputs: RootViewModelOutput { return self }
    
    
    //MARK: Output Methods
    func getData(complition: @escaping (WholeData?) -> ()) {
        BackendRequest().getExampleData { [weak self] data in
            if let data = data {
                complition(data)
            }
        }
    }
    
    //MARK: Input Methods
    func viewDidLoad() {
        
    }
    
}
