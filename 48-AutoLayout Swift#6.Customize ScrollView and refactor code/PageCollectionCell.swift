//
//  PageCollectionCell.swift
//  AutoLayoutExample
//
//  Created by Nguyen Duc Hoang on 2/2/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import UIKit

class PageCollectionCell: UICollectionViewCell {
    //"Controller"
    var pageModel: PageModel? {
        didSet {
            //This is a "setter", it can access "private" titleTextView
            lifeFormImageView.image = pageModel?.image
            titleTextView.text = pageModel?.headerText ?? ""
            titleTextView.textAlignment = .center
        }
    }
    let topHalfView: UIView = {
        let view = UIView()
        //        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private let lifeFormImageView:UIImageView = {
        //This is a closure = "no name" function
        let imageView = UIImageView()//why ? Because this image has been deleted
        imageView.translatesAutoresizingMaskIntoConstraints = false //Enable "auto layout"
        return imageView
    }()
    private let titleTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false //Enable "auto layout"
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.text = "Welcome to my amazing App !."
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.textAlignment = .center
        textView.backgroundColor = UIColor.clear
        return textView
    }()
    fileprivate func autoLayoutUI() {
        backgroundColor = .white
        addSubview(topHalfView)
        NSLayoutConstraint.activate([topHalfView.topAnchor.constraint(equalTo: topAnchor),
                                     topHalfView.leadingAnchor.constraint(equalTo: leadingAnchor),
                                     topHalfView.trailingAnchor.constraint(equalTo: trailingAnchor),
                                     topHalfView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5)
            ])
        topHalfView.addSubview(lifeFormImageView)
        lifeFormImageView.centerXAnchor.constraint(equalTo: topHalfView.centerXAnchor).isActive = true
        lifeFormImageView.centerYAnchor.constraint(equalTo: topHalfView.centerYAnchor).isActive = true
        lifeFormImageView.widthAnchor.constraint(equalToConstant: 130).isActive = true
        lifeFormImageView.heightAnchor.constraint(equalToConstant: 130).isActive = true
        //Title text
        addSubview(titleTextView)
        titleTextView.topAnchor.constraint(equalTo: lifeFormImageView.bottomAnchor, constant: 20).isActive = true
        titleTextView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        titleTextView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        titleTextView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        self.backgroundColor = .yellow
        autoLayoutUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
