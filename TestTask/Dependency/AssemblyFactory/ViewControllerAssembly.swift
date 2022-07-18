//
//  ViewControllerAssembly.swift
//  TestTask
//
//  Created by Tigran VIasyan on 23.06.22.
//

import Foundation
import Swinject

class ViewControllerAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(RootViewController.self) { r in
            let vc = Controllers().rootViewController()
            let viewModel = container.resolve(RootViewModelType.self)!
            vc.inejct(viewModel: viewModel)
            return vc
        }.inObjectScope(.container)
    }
}
