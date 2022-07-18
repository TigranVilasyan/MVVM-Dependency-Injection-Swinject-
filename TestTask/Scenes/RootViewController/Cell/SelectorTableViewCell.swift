//
//  SelectorTableViewCell.swift
//  TestTask
//
//  Created by Tigran VIasyan on 18.07.22.
//

import UIKit

class SelectorTableViewCell: UITableViewCell {

    // MARK: Properties
    static var identifier = "SelectorTableViewCell"
    var selectionItems = [Variant]()
    
    // MARK: @IBOutlet
    @IBOutlet weak var selectorLabel: UILabel!
    @IBOutlet weak var selectorSegmentControl: UISegmentedControl!

    // MARK: @IBAction
    @IBAction func selectionAction(_ sender: UISegmentedControl) {
        selectorLabel.text = selectionItems[selectorSegmentControl.selectedSegmentIndex].text + " ID =>  \(selectionItems[selectorSegmentControl.selectedSegmentIndex].id)"
    }

    // MARK: Methods
    func setup(data: Datum) {
        self.selectionItems = data.data.variants!
        setupSegment()
        selectorLabel.text =  selectionItems[selectorSegmentControl.selectedSegmentIndex].text + " ID =>  \(selectionItems[selectorSegmentControl.selectedSegmentIndex].id)"
    }
    
    func setupSegment() {
        for i in 0..<selectionItems.count {
            selectorSegmentControl.setTitle(selectionItems[i].text, forSegmentAt: i)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
}
