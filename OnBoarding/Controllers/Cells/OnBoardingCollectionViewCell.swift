//
//  OnBoardingCollectionViewCell.swift
//  OnBoarding
//
//  Created by Umair Afzal on 03/02/2019.
//  Copyright © 2019 Umair Afzal. All rights reserved.
//

import UIKit

class OnBoardingCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var topImageView: UIImageView!
    @IBOutlet weak var headingLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setupCell(data: OnBoarding) {
        topImageView.image = data.topImage
        headingLabel.text = data.heading
        descriptionLabel.text = data.description
    }
    
    class func cellForCollectionView(collectionView: UICollectionView, indexPath: IndexPath) -> OnBoardingCollectionViewCell {
        let kOnBoardingCollectionViewCellIdentifier = "kOnBoardingCollectionViewCellIdentifier"
        collectionView.register(UINib(nibName: "OnBoardingCollectionViewCell", bundle: Bundle.main), forCellWithReuseIdentifier: kOnBoardingCollectionViewCellIdentifier)
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: kOnBoardingCollectionViewCellIdentifier, for: indexPath) as! OnBoardingCollectionViewCell
        return cell
    }
}
