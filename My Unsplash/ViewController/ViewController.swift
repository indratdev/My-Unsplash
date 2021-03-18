//
//  ViewController.swift
//  My Unsplash
//
//  Created by IndratS on 18/03/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mySearchBar: UISearchBar!
    @IBOutlet weak var mySegmented: UISegmentedControl!
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    let nibProcess = NIBProcess()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        
        layoutView()
    }
    
}


extension ViewController {
    func layoutView(){
        nibProcess.showNIBCollectionView(nibName: UnsplashCollectionViewCell.nibName, collectionView: myCollectionView, IdentifierName: UnsplashCollectionViewCell.identifier)
    }
}

// MARK: COLLECTION VIEW
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: UnsplashCollectionViewCell.identifier, for: indexPath) as! UnsplashCollectionViewCell
        cell.unsplashImage.backgroundColor = .blue
        cell.unsplashLabel.text = "ini adalah test asdjahdjah adasdlkjasdjalkjl"
        cell.layer.cornerRadius = 10
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let flowayout = collectionViewLayout as? UICollectionViewFlowLayout
        let space: CGFloat = (flowayout?.minimumInteritemSpacing ?? 0.0) + (flowayout?.sectionInset.left ?? 0.0) + (flowayout?.sectionInset.right ?? 0.0)
        let size:CGFloat = (myCollectionView.frame.size.width - space) / 2.0
        return CGSize(width: size, height: size + 100)
    }
    
    
    
}

