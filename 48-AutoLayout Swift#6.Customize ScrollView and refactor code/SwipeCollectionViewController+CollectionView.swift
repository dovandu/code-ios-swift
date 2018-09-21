//
//  SwipeCollectionViewController+CollectionView.swift
//  AutoLayoutExample
//
//  Created by Nguyen Duc Hoang on 2/2/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import Foundation
import UIKit
extension SwipeCollectionViewController {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //        return 5
        //Now add a list of objects ?
        return pageModels.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! PageCollectionCell
        cell.pageModel = pageModels[indexPath.item]
        return cell
    }
    //UICollectionViewDelegateFlowLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    override func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let x = targetContentOffset.pointee.x
        print("x/view.frame.x = \(x/view.frame.width)")
        pageControl.currentPage = Int(x/view.frame.width)
    }
}
