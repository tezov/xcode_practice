import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func openSecondView(_ sender: UIButton) {
        
        let second = SecondViewController()
        present(second, animated: true, completion: nil)
        
    }
    
    @IBAction func openSecondViewFullScreen(_ sender: UIButton) {
        
        let second = SecondViewController()
        second.modalPresentationStyle = .fullScreen
        present(second, animated: true, completion: nil)
        
    }
    
}

