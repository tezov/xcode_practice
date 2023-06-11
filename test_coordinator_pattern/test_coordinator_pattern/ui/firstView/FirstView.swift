//
//  FirstView.swift
//  test_coordinator_pattern
//
//  Created by teddy zollver on 11/06/2023.
//

import UIKit

class FirstView : UIView {
    
    static let identifier = "first_view"
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initView()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
    }
    
    func initView(){
//        let nib = UINib(nibName: FirstView.identifier, bundle: nil)
//        guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView
//        else { fatalError("Unable to convert xib") }
//        view.frame = bounds
//        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        addSubview(view)
    }
    
}
