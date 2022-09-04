//
//  TestCell.swift
//  TestProject
//
//  Created by zaheer on 04/09/2022.
//

import UIKit

class TestCell: UITableViewCell {
    @IBOutlet weak var lbldetails: UILabel!
    
    @IBOutlet weak var img: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
