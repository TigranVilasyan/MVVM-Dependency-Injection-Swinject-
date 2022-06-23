//
//  SecondViewModel.swift
//  Dependency_Injection
//
//  Created by Tigran VIasyan on 23.06.22.
//

import Foundation

protocol SecondViewModelInput: AnyObject {
    func viewDidLoad()
}


protocol SecondViewModelOutput: AnyObject {
    
}

protocol SecondViewModelType: AnyObject {
    var inputs: SecondViewModelInput { get }
    var outputs: SecondViewModelOutput { get }
}

class SecondViewModel: SecondViewModelInput,
                       SecondViewModelOutput,
                       SecondViewModelType {

    //MARK: Properties
    var inputs: SecondViewModelInput { return self }
    var outputs: SecondViewModelOutput { return self }

    //MARK: Input Methods
    func viewDidLoad() {
        
    }
    
    //MARK: Output Methods
    //...
}
