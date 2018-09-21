//
//  SwipeCollectionViewController.swift
//  AutoLayoutExample
//
//  Created by Nguyen Duc Hoang on 2/2/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import UIKit
let reuseIdentifier = "PageCellId"

class SwipeCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    var pageModels = [
        PageModel(image: #imageLiteral(resourceName: "icon-lifeform1"), headerText: "Welcome to Nodejs tutorials"),
        PageModel(image: #imageLiteral(resourceName: "icon-lifeform2"), headerText: "React Native tutorials"),
        PageModel(image: #imageLiteral(resourceName: "icon-lifeform3"), headerText: "Vue.js tutorials"),
        PageModel(image: #imageLiteral(resourceName: "icon-lifeform4"), headerText: "Swift 4 tutorials"),
        PageModel(image: #imageLiteral(resourceName: "icon-lifeform5"), headerText: "Angular 5 tutorials"),
    ]
    let previousButton:UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Previous", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.addTarget(self, action: #selector(handlePrevious), for: .touchUpInside)
        return button
    }()
    @objc func handlePrevious(sender: Any) {
        let previousIndex = max(pageControl.currentPage - 1, 0)
        let indexPath = IndexPath(item: previousIndex, section: 0)
        pageControl.currentPage = previousIndex
        collectionView?.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
    lazy var pageControl:UIPageControl = {//lazy = only access when called
        let _pageControl = UIPageControl()
        _pageControl.translatesAutoresizingMaskIntoConstraints = false
        _pageControl.currentPage = 0
        _pageControl.numberOfPages = pageModels.count//why error? Because here "pageControl" does not know about "pageModels"
        _pageControl.currentPageIndicatorTintColor = .red
        _pageControl.pageIndicatorTintColor = .lightGray
        return _pageControl
    }()
    let nextButton:UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Next", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.addTarget(self, action: #selector(handleNext), for: .touchUpInside)
        return button
    }()
    @objc func handleNext(sender: Any) {
        let nextIndex = min(pageControl.currentPage + 1, pageModels.count - 1)
        let indexPath = IndexPath(item: nextIndex, section: 0)
        pageControl.currentPage = nextIndex
        collectionView?.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
    fileprivate func layoutBottomButtons() {
        view.addSubview(previousButton)
        view.addSubview(pageControl)
        view.addSubview(nextButton)
        let bottomStackView = UIStackView(arrangedSubviews: [previousButton, pageControl, nextButton])
        view.addSubview(bottomStackView)
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false //Enable "auto layout"
        NSLayoutConstraint.activate([
            //Add SafetyArea
            bottomStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            bottomStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bottomStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            bottomStackView.heightAnchor.constraint(equalToConstant: 50)
            ])
        bottomStackView.distribution = .fillEqually
        bottomStackView.axis = .horizontal
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Register cell classes
        self.collectionView!.register(PageCollectionCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        collectionView?.backgroundColor = .white
        collectionView?.isPagingEnabled = true
        layoutBottomButtons()
    }
    
}
