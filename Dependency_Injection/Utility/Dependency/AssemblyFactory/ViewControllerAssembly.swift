//
//  ViewControllerAssembly.swift
//  Dependency_Injection
//
//  Created by Tigran VIasyan on 23.06.22.
//

import Foundation
import Swinject

class ViewControllerAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(FirstViewController.self) { r in
            let vc = Controllers.firstViewController()
            let viewModel = container.resolve(FirstViewModelType.self)!
            vc.inejct(viewModel: viewModel)
            return vc
        }.inObjectScope(.container)
        
        container.register(SecondViewController.self) { r in
            let vc = Controllers.secondViewController()
            let viewModel = container.resolve(SecondViewModelType.self)!
            vc.inject(viewModel: viewModel)
            return vc
        }.inObjectScope(.container)
    }
}
