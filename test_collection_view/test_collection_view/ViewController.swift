//
//  ViewController.swift
//  test_collection_view
//
//  Created by teddy zollver on 09/07/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(View1Cell.nib(), forCellWithReuseIdentifier: View1Cell.identifier)
        
        
    }


}

struct Model {
    let label1:String
    let label2:String
    let image:String
    
    init(label1: String, label2: String, image: String) {
        self.label1 = label1
        self.label2 = label2
        self.image = image
    }
}

extension ViewController: UICollectionViewDelegate {
    
    
    
    
}

extension ViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: View1Cell.identifier, for: indexPath) as! View1Cell
        cell.configure(with: Model(
                label1 : "",
                label2 : "",
                image : ""
            )
        )
        return cell
    }
    
    
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    
    
    
}


