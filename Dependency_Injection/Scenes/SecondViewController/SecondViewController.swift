//
//  SecondViewController.swift
//  Dependency_Injection
//
//  Created by Tigran VIasyan on 23.06.22.
//

import Foundation
import UIKit

class  SecondViewController: UIViewController {
    
    //MARK: Propeties
    weak var viewModel: SecondViewModelType!
    
    
    //MARK: Methods
    
    //MARK: INJECTION
    func inject(viewModel: SecondViewModelType) {
        self.viewModel = viewModel
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
