//
//  SecondViewXib.swift
//  test_coordinator_pattern
//
//  Created by teddy zollver on 11/06/2023.
//

import UIKit

class SecondViewXib: UIView, NavigateProducer {
    private static let identifier = "SecondViewXib"
    
    weak var navigationConsummer: NavigateConsummer?
    
    @IBOutlet var buttonBack: UIButton!
    
    @IBOutlet var buttonFirstView: UIButton!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
    }
    
    func initView() {
        let nib = UINib(nibName: SecondViewXib.identifier, bundle: nil)
        guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView
        else {
            fatalError("Unable to convert nib")
        }
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.backgroundColor = .clear
        addSubview(view)
    }
    
    @IBAction func requestNavigate(_ sender: UIButton) {
        var route: Route? = nil
        switch sender {
            case buttonFirstView: route = Route.FirstView
            case buttonBack: route = Route.Back
            default: break
        }
        guard let route = route else { return }
        navigationConsummer?.requestNavigate(to: route)
    }
}
