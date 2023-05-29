//
//  ViewController.swift
//  test_plist
//
//  Created by teddy zollver on 29/05/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //read_plist()
        write_plist()
    }

    
    func read_plist(){
        guard let path = Bundle.main.path(forResource: "data", ofType: "plist") else {
            print("failed to get path")
            return
            
        }
        let url = URL(fileURLWithPath: path)
        guard let data = try? Data(contentsOf: url) else {
            print("failed to get data")
            return
        }
        guard let plist = try? PropertyListSerialization.propertyList(from: data, options: .mutableContainers, format: nil) as? [String:Any] else {
            print("failed to get plist")
            return
        }
        plist.forEach{ key, value in
            if(value is String){
                print("key \(key) ** value \(value)")
                
            }
            else if(value is [String]){
                print("key \(key) **")
                (value as! [String]).forEach{ v in
                    print("v \(v)")
                }
       
            }
            else if(value is [String:String]){
                print("key \(key) **")
                (value as! [String:String]).forEach{ k, v in
                    print("k \(k) ** v \(v)")
                }
                
       
            }
        }
        
    }
    
    func write_plist(){
        //read current
        guard let documentsDirectory = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false) else{
            print("failed to get documentsDirectory")
            return
        }
        let url = documentsDirectory.appendingPathComponent("writing.plist")
        guard let dataCurrent = try? Data(contentsOf: url) else {
            print("failed to get data")
            return
        }
        guard var plistCurrent = try? PropertyListSerialization.propertyList(from: dataCurrent, options: .mutableContainers, format: nil) as? [String:String] else {
            print("failed to get plist")
            return
        }
        
        
        //write or update
        plistCurrent["key1"] = "value1"
        guard let dataNew = try? PropertyListSerialization.data(fromPropertyList: plistCurrent, format: .xml, options: 0) else {
            print("failed to get data")
            return
        }
        do{
            try dataNew.write(to: url)
        } catch {
            print("write failed")
        }

        //read back
        guard let dataRead = try? Data(contentsOf: url) else {
            print("failed to re get data")
            return
        }
        guard let plistRead = try? PropertyListSerialization.propertyList(from: dataRead, options: .mutableContainers, format: nil) as? [String:String] else {
            print("failed to re get plist")
            return
        }
        plistRead.forEach{ key, value in
            print("key \(key) ** value \(value)")
        }
        
        
    }
        

}

