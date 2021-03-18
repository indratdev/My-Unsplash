//
//  NIBProcess.swift
//  My Unsplash
//
//  Created by IndratS on 18/03/21.
//

import Foundation
import UIKit

struct NIBProcess {
    
    func showNIBCollectionView(nibName: String, collectionView: UICollectionView, IdentifierName: String){
        let nib = UINib(nibName: nibName, bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: IdentifierName)
    }
}
