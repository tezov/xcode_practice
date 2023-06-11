//
//  SecondView.swift
//  test_coordinator_pattern
//
//  Created by teddy zollver on 11/06/2023.
//

import UIKit

class SecondView : UIView {
    
    static let identifier = "second_view"
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initView()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
    }
    
    func initView(){
//        let nib = UINib(nibName: SecondView.identifier, bundle: nil)
//        guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView
//        else { fatalError("Unable to convert xib") }
//        view.frame = bounds
//        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        addSubview(view)
    }
    
}
