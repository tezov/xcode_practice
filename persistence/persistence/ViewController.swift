//
//  ViewController.swift
//  persistence
//
//  Created by privee on 09/05/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    enum Key: String, CaseIterable {
            case name, avatar
            func make(for user: String) -> String {
                return self.rawValue + "_" + user
            }
        }
    
    @IBAction func save_user_default(_ sender: Any) {
        let userDefaults: UserDefaults = .standard
        userDefaults.set("teddy bear", forKey: Key.name.make(for: "teddy"))
        print("saved")
        
    }

    @IBAction func read_user_default(_ sender: Any) {
        let userDefaults: UserDefaults = .standard
        let value = userDefaults.value(forKey: Key.name.make(for: "teddy")) as? String
        print("read: \(value)")
        
    }
    
    
}

