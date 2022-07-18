//
//  RootViewController.swift
//  TestTask
//
//  Created by Tigran VIasyan on 23.06.22.
//

import Foundation
import UIKit
import Swinject

enum DataType: String {
    case hz = "hz"
    case selector = "selector"
    case picture = "picture"
}


class RootViewController: UIViewController {
    
    //MARK: @IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    
    //MARK: Properties
    weak var viewModel: RootViewModelType!
    var data: WholeData?
    var dataTypeArr: [DataType] = [DataType]()
    
    //MARK: Methods
    func setupTableView() {
        tableView.dataSource = self
        tableView.register(identifier: HZTableViewCell.identifier)
        tableView.register(identifier: PictureTableViewCell.identifier)
        tableView.register(identifier: SelectorTableViewCell.identifier)
    }
    
    private func configTypes() {
        data?.view.forEach { variant in
            dataTypeArr.append(.init(rawValue: variant)!)
        }
    }
    
    override func viewDidLoad() {
        setupTableView()
        viewModel.inputs.viewDidLoad()
        viewModel.outputs.getData { [weak self] response in
            self?.data = response
            self?.configTypes()
            self?.tableView.reloadData()
        }
    }
    
    //MARK: INJECTION
    func inejct(viewModel: RootViewModelType) {
        self.viewModel = viewModel
    }
    
}


extension RootViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataTypeArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch dataTypeArr[indexPath.row] {
        case .hz:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: HZTableViewCell.identifier, for: indexPath) as? HZTableViewCell else {return UITableViewCell()}
            cell.setup(data: (data?.data.first(where: {$0.name == dataTypeArr[indexPath.row].rawValue}))!)
            return cell
        case .picture:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: PictureTableViewCell.identifier, for: indexPath) as? PictureTableViewCell else {return UITableViewCell()}
            cell.setup(data: (data?.data.first(where: {$0.name == dataTypeArr[indexPath.row].rawValue}))!)
            return cell
        case .selector:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: SelectorTableViewCell.identifier, for: indexPath) as? SelectorTableViewCell else {return UITableViewCell()}
            cell.setup(data: (data?.data.first(where: {$0.name == dataTypeArr[indexPath.row].rawValue}))!)
                return cell
        }
    }
}
