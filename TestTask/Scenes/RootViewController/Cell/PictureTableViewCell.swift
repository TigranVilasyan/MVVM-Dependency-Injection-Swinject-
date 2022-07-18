//
//  PictureTableViewCell.swift
//  TestTask
//
//  Created by Tigran VIasyan on 18.07.22.
//

import UIKit
import SDWebImage

class PictureTableViewCell: UITableViewCell {

    // MARK: @IBOutlet
    @IBOutlet weak var exampleLabel: UILabel!
    @IBOutlet weak var exampleImageView: UIImageView!
    
    // MARK: Properties
    static var identifier = "PictureTableViewCell"
    
    // MARK: Methods
    func setup(data: Datum) {
        exampleLabel.text = data.data.text
        exampleImageView.sd_setImage(with: URL(string: data.data.url!))
    }
}
