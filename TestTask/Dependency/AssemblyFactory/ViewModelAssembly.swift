//
//  ViewModelAssembly.swift
//  TestTask
//
//  Created by Tigran VIasyan on 23.06.22.
//

import Foundation
import Swinject


class ViewModelAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(RootViewModelType.self) { r in
            return RootViewModel()
        }.inObjectScope(.container)
        
    }
}
