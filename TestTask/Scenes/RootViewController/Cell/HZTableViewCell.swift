//
//  HZTableViewCell.swift
//  TestTask
//
//  Created by Tigran VIasyan on 18.07.22.
//

import UIKit

class HZTableViewCell: UITableViewCell {
    
    // MARK: Properties
    static var identifier = "HZTableViewCell"
    
    // MARK: @IBOutlet
    @IBOutlet weak var hzLabel: UILabel!
    
    // MARK: Methods
    func setup(data: Datum) {
        hzLabel.text = data.data.text
    }
}
