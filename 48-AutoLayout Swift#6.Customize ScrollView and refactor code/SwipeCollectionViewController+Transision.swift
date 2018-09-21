//
//  SwipeCollectionViewController+Transision.swift
//  AutoLayoutExample
//
//  Created by Nguyen Duc Hoang on 2/2/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import UIKit
extension SwipeCollectionViewController {
    //Call when size changed
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        coordinator.animate(alongsideTransition: { (_) in
            if(self.pageControl.currentPage == 0) {
                self.collectionView?.contentOffset = .zero
            } else {
                self.collectionViewLayout.invalidateLayout() //reset the layout to redraw again
                let indexPath = IndexPath(item: self.pageControl.currentPage, section: 0)
                self.collectionView?.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
            }
        }) { (_) in
            //Do nothing when complete !
        }
    }
}
