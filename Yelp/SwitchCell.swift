//
//  SwitchCell.swift
//  Yelp
//
//  Created by christian pichardo on 2/21/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

@objc protocol SwitchCellDelegate{
    optional func switchCell(switchCell: SwitchCell, didChangeValue value:Bool)
}

class SwitchCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var filterSwitch: UISwitch!
    @IBOutlet weak var switchLabel: UILabel!
    weak var delegate : SwitchCellDelegate?
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func switchValueChanged(sender: AnyObject) {
        
        delegate?.switchCell?(self, didChangeValue: filterSwitch.on)
    }
    

}
