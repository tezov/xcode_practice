
import UIKit

class ViewController: UIViewController, UIContextMenuInteractionDelegate {

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //version context menu sur view , defaut : visible uniquement sur un click long...
        let square =  UIView()
        square.translatesAutoresizingMaskIntoConstraints = false
        square.backgroundColor = .systemBlue
        view.addSubview(square)
        NSLayoutConstraint.activate([
            square.widthAnchor.constraint(equalToConstant: 200),
            square.heightAnchor.constraint(equalToConstant: 200),
            square.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            square.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        ])
/*
        //onClick gesture
        let tap = UITapGestureRecognizer(target: self, action: #selector(onSquareButtonClicked(_:)))
        square.addGestureRecognizer(tap)
*/
        let menuInteraction = UIContextMenuInteraction(delegate: self)
        square.isUserInteractionEnabled = true
        square.addInteraction(menuInteraction)
        
        
        //Version sur button as primary action
        button.showsMenuAsPrimaryAction = true
        let copy = UIAction(title: "Copy", image: UIImage(systemName: "doc.on.doc")) { _ in
            self.showAlert(title: "Copy")
        }
        let cut = UIAction(title: "Cut", image: UIImage(systemName: "scissors"), attributes: .destructive) { _ in
            self.showAlert(title: "Cut")
        }
        let paste = UIAction(title: "Paste", image: UIImage(systemName: "doc.on.clipboard"), attributes: .disabled) { _ in
            self.showAlert(title: "Paste")
        }
        let menu = UIMenu(title: "Context Menu", children: [copy, cut, paste])
        button.menu = menu
        
    }
    
    @objc func onSquareButtonClicked(_ send:AnyObject){
        print("tapped")
        
    }
   
    
    // MARK: - UIContextMenuInteractionDelegate
    
    func showAlert(title: String) {
            let alertController = UIAlertController(title: title, message: "", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in }))
            self.present(alertController, animated: true, completion: nil)
        }
    
    func contextMenuInteraction(_ interaction: UIContextMenuInteraction, configurationForMenuAtLocation location: CGPoint) -> UIContextMenuConfiguration?{
        return UIContextMenuConfiguration(
                identifier: nil,
                previewProvider: nil) { _ in
                    
                    let copy = UIAction(title: "Copy", image: UIImage(systemName: "doc.on.doc")) { _ in
                        self.showAlert(title: "Copy")
                    }
                    let cut = UIAction(title: "Cut", image: UIImage(systemName: "scissors"), attributes: .destructive) { _ in
                        self.showAlert(title: "Cut")
                    }
                    let paste = UIAction(title: "Paste", image: UIImage(systemName: "doc.on.clipboard"), attributes: .disabled) { _ in
                        self.showAlert(title: "Paste")
                    }
                    
                    return UIMenu(title: "Context Menu", children: [copy, cut, paste])
                }
    }
    

}

