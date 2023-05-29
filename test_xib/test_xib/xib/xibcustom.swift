//
//  xib.swift
//  test_xib
//
//  Created by teddy zollver on 02/05/2023.
//

import UIKit

class Xibcustom: UIView {

    @IBOutlet weak var label: UILabel!

    static let identifier = "xib"
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initView()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
    }

    func initView(){
        let nib = UINib(nibName: Xibcustom.identifier, bundle: nil)
        guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView
        else {
            fatalError("Unable to convert nib")
        }
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(view)
    }
    
    func setText(_ text:String){
        label.text = text
    }
    
    

}
