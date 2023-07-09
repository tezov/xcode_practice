//
//  ViewController.swift
//  test_tableview_and_xib
//
//  Created by teddy zollver on 19/06/2023.
//

import UIKit
import LoremIpsum

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        
        //create table view
        let tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .cyan
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(UINib(nibName: TableViewCell1.identifier, bundle: nil), forCellReuseIdentifier: TableViewCell1.identifier)
        
        
        let constraintTop = NSLayoutConstraint(
            item: tableView,
            attribute: .top,
            relatedBy: .equal,
            toItem: view,
            attribute: .top,
            multiplier: 1,
            constant: 0
        )
        
        let constraintBottom = NSLayoutConstraint(
            item: tableView,
            attribute: .bottom,
            relatedBy: .equal,
            toItem: view,
            attribute: .bottom,
            multiplier: 1,
            constant: 0
        )
        
        let constraintStart = NSLayoutConstraint(
            item: tableView,
            attribute: .leading,
            relatedBy: .equal,
            toItem: view,
            attribute: .leading,
            multiplier: 1,
            constant: 0
        )
        
        let constraintEnd = NSLayoutConstraint(
            item: tableView,
            attribute: .trailing,
            relatedBy: .equal,
            toItem: view,
            attribute: .trailing,
            multiplier: 1,
            constant: 0
        )
        
        view.addSubview(tableView)
        view.addConstraints([
            constraintTop,
            constraintBottom,
            constraintStart,
            constraintEnd,
        ])
        
        
        
    }
    
    


}

extension ViewController: UITableViewDelegate {
    
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1000
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell1.identifier, for: indexPath) as? TableViewCell1 {
            //view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            
            let subTitleWordsNumber = Int.random(in: 1...10)
            let textWordsNumber = Int.random(in: 5...40)
                      
            let subTitle = LoremIpsum.words(withNumber: subTitleWordsNumber) ?? "failed to generate lorem ipsum"
            let text = LoremIpsum.words(withNumber: textWordsNumber) ?? "failed to generate lorem ipsum"
            
            cell.setTitle("title \(indexPath.row)")
            cell.setSubTitle("sub title \(indexPath.row): \(subTitle)")
            cell.setText("text \(indexPath.row): \(text)")
            return cell
        }
        
        return UITableViewCell()
    }
    
    
    
}

