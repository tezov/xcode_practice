//
//  ViewController.swift
//  test_json
//
//  Created by teddy zollver on 29/05/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        performRequest()
    }

    
    func performRequest(){
//    https://robohash.org/??? = fake image

        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1") else{
            print("url error")
            return
        }
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url){ data, response, error in
            if(error != nil){
                print("response error")
                return
            }
            if let data = data {
                self.parseJson(data)
                
            }
            else{
                print("data is null")
            }
        }
        task.resume()
        
    }
    
    struct JsonData : Decodable {
        let userId: Int?
        let id: Int?
        let title: String?
        let body: String?
        let nothing: String?
    }
    
    func parseJson(_ data:Data){
        
        guard let string_value = String(bytes: data, encoding: String.Encoding.utf8) else{
            print("string error")
            return
        }
        print("\(string_value)")
        let decoder = JSONDecoder()
        guard let jsonData = try? decoder.decode(JsonData.self, from: data) else {
            print("json decoder erreur")
            return
        }
        
        print(jsonData)
        
    }

}

