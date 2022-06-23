//
//  FirstVIewController.swift
//  Dependency_Injection
//
//  Created by Tigran VIasyan on 23.06.22.
//

import Foundation
import UIKit
import Swinject



class FirstViewController: UIViewController {
    
    //MARK: @IBOutlets
    @IBOutlet weak var nextVC: UIButton!
    
    
    //MARK: @IBActions
    @IBAction func nextVC(_ sender: Any) {
        self.navigationController?.pushViewController(Dependency.shared.resolver.resolve(SecondViewController.self)!, animated: true)
        viewModel.outputs.nextVC()
    }
    
    //MARK: Properties
    weak var viewModel: FirstViewModelType!
    
    //MARK: Methods
    
    //MARK: INJECTION
    func inejct(viewModel: FirstViewModelType) {
        self.viewModel = viewModel
    }
    
    override func viewDidLoad() {
        
    }
}
