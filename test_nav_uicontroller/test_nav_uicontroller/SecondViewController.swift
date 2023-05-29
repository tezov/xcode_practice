
import UIKit

class SecondViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        let label = UILabel()
        label.text = "label"
        label.frame = CGRect(x: 50, y: 50, width: 100, height: 80)
        view.addSubview(label)
        
        let button = UIButton()
        button.setTitle("dismis", for: .normal)
        button.backgroundColor = .blue
        button.frame = CGRect(x: 100, y: 200, width: 100, height: 80)
        button.addTarget(self, action: #selector(back), for: .touchUpInside)
        view.addSubview(button)
        
        
    }
    
    @objc func back(_ sender:UIButton!){
        dismiss(animated: true, completion: nil)
        
    }
    

}
