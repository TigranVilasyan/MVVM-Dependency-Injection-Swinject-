//
//  TableView+Extention.swift
//  TestTask
//
//  Created by Tigran VIasyan on 18.07.22.
//

import Foundation
import UIKit

extension UITableView {
    
    func register(identifier: String) {
        self.register(UINib(nibName: identifier, bundle: nil), forCellReuseIdentifier: identifier)
    }
}
