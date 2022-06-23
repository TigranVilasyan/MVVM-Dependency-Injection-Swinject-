//
//  ViewModelAssembly.swift
//  Dependency_Injection
//
//  Created by Tigran VIasyan on 23.06.22.
//

import Foundation
import Swinject


class ViewModelAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(FirstViewModelType.self) { r in
            return FirstViewModel()
        }.inObjectScope(.container)
        
        container.register(SecondViewModelType.self) { r in
            return SecondViewModel()
        }.inObjectScope(.container)
    }
}
