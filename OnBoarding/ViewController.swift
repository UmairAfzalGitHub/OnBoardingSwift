//
//  ViewController.swift
//  OnBoarding
//
//  Created by Umair Afzal on 03/02/2019.
//  Copyright © 2019 Umair Afzal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var getStartedButton: UIButton!
    
    var dataSource: [OnBoarding] = [OnBoarding(image: #imageLiteral(resourceName: "onboarding1"), heading: "Get it done..!!", description: "Lets get it done. Stop imagining and start performing from today. you can get ahead with our help."),
        OnBoarding(image: #imageLiteral(resourceName: "onboarding3"), heading: "Get it done..!!", description: "Lets get it done. Stop imagining and start performing from today. you can get ahead with our help."),
        OnBoarding(image: #imageLiteral(resourceName: "onboarding2"), heading: "Get it done..!!", description: "Lets get it done. Stop imagining and start performing from today. you can get ahead with our help."),
        OnBoarding(image: #imageLiteral(resourceName: "onboarding1"), heading: "Get it done..!!", description: "Lets get it done. Stop imagining and start performing from today. you can get ahead with our help."),
        OnBoarding(image: #imageLiteral(resourceName: "onboarding3"), heading: "Get it done..!!", description: "Lets get it done. Stop imagining and start performing from today. you can get ahead with our help.")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        getStartedButton.layer.cornerRadius = getStartedButton.frame.height/2
        pageControl.numberOfPages = dataSource.count
    }
    
    @IBAction func getStartedButtonTapped(_ sender: Any) {
    }
    
    @IBAction func skipButtonTapped(_ sender: Any) {
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = OnBoardingCollectionViewCell.cellForCollectionView(collectionView: collectionView, indexPath: indexPath)
        cell.setupCell(data: dataSource[indexPath.item])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        pageControl.currentPage = indexPath.item
    }
}

