//
//  View1Cell.swift
//  test_collection_view
//
//  Created by teddy zollver on 09/07/2023.
//

import UIKit

class View1Cell: UICollectionViewCell {
    
    static let identifier = "View1Cell"
    
    static func nib() ->UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    @IBOutlet weak var xibLabel1: UILabel!
    @IBOutlet weak var xibLabel2: UILabel!
    @IBOutlet weak var xibImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
  
    func configure(with model:Model){
        xibLabel1.text = model.label1
        xibLabel2.text = model.label2
        //xibImage.image = UIImage(named: model.image)
    }
    
    
}


