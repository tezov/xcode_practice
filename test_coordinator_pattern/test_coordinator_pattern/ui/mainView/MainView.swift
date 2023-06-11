//
//  MainView.swift
//  test_coordinator_pattern
//
//  Created by teddy zollver on 11/06/2023.
//

import UIKit

class MainView : UIView {
    
    static let identifier = "main_view"
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initView()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
    }
    
    func initView(){
//        let nib = UINib(nibName: MainView.identifier, bundle: nil)
//        guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView
//        else { fatalError("Unable to convert xib") }
//        view.frame = bounds
//        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        addSubview(view)
    }
    
    //    @IBAction func requestNavigate(_ sender: UIButton) {
    //
    //        if(coordinator == nil){
    //            print("coordinator is null")
    //        }
    //
    //        switch sender.tag {
    //            case ButtonTag.First.rawValue:
    //                    coordinator?.openFirstViewController()
    //            case ButtonTag.Second.rawValue:
    //                    coordinator?.openSecondViewController()
    //
    //            default: print("button tag not found \(sender.tag)")
    //        }
    //    }
    
    
}
