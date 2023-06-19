//
//  TableViewCell1.swift
//  test_tableview_and_xib
//
//  Created by teddy zollver on 19/06/2023.
//

import UIKit

class TableViewCell1: UITableViewCell {

    static let identifier = "TableViewCell1"
    
    @IBOutlet weak var xibTitle: UILabel!
    @IBOutlet weak var xibSubTitle: UILabel!
    @IBOutlet weak var xibText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setTitle(_ value:String){
        xibTitle.text = value
    }
    
    func setSubTitle(_ value:String){
        xibSubTitle.text = value
    }
    
    func setText(_ value:String){
        xibText.text = value
    }
    
}
