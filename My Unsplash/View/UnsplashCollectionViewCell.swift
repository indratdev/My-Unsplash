//
//  UnsplashCollectionViewCell.swift
//  My Unsplash
//
//  Created by IndratS on 18/03/21.
//

import UIKit

class UnsplashCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var unsplashImage: UIImageView!
    @IBOutlet weak var unsplashLabel: UILabel!
    
    static let identifier = "unsplashidentifier"
    static let nibName = "UnsplashCollectionViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setLayout()
    }
    
    func setLayout(){
        unsplashLabel.textAlignment = .center
        unsplashLabel.numberOfLines = 0
    }

}
