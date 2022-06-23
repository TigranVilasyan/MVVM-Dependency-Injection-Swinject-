//
//  FirstViewModel.swift
//  Dependency_Injection
//
//  Created by Tigran VIasyan on 23.06.22.
//

import Foundation
import Swinject



protocol FirstViewModelInput: AnyObject {
    func viewDidLoad()
}


protocol FirstViewModelOutput: AnyObject {
    func nextVC()
}

protocol FirstViewModelType: AnyObject {
    var inputs: FirstViewModelInput { get }
    var outputs: FirstViewModelOutput { get }
}

class FirstViewModel: FirstViewModelInput,
                      FirstViewModelOutput,
                      FirstViewModelType {

    //MARK: Properties
    var inputs: FirstViewModelInput { return self }
    var outputs: FirstViewModelOutput { return self }

    
    //MARK: Output Methods
    func nextVC() {
        print("Hello ViewModel")
    }
    
    //MARK: Input Methods
    func viewDidLoad() {
        
    }
    
}
