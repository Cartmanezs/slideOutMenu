//
//  CustomMenuHeaderView.swift
//  SlideOutMenu
//
//  Created by Ingvar on 9/25/19.
//  Copyright © 2019 Igor. All rights reserved.
//

import UIKit

class CustomMenuHeaderView: UIView {

    let nameLabel = UILabel()
    let usernameLabel = UILabel()
    let statsLabel = UILabel()
    let profileImageView = ProfileImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        setupComponentProps()
        setupStackView()
    }
    
    fileprivate func setupComponentProps() {
        nameLabel.text = "Igor Palyvoda"
        nameLabel.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        usernameLabel.text = "@cartmanez"
        statsLabel.text = "42 Following 70091 followers"
        profileImageView.image = UIImage(named: "1")
        profileImageView.contentMode = .scaleAspectFit
        profileImageView.layer.cornerRadius = 45 / 2
        profileImageView.clipsToBounds = true 
    }
    
    fileprivate func setupStackView() {
          let arrangedSubviews = [
                UIStackView(arrangedSubviews: [profileImageView, UIView()]), nameLabel, usernameLabel, SpacerView(space: 14), statsLabel
          ]
          
          let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
          stackView.axis = .vertical
          stackView.spacing = 4
          
          addSubview(stackView)
          stackView.translatesAutoresizingMaskIntoConstraints = false
          
          stackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
          stackView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
          stackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
          stackView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
          
          stackView.isLayoutMarginsRelativeArrangement = true
          stackView.layoutMargins = UIEdgeInsets(top: 24, left: 24, bottom: 24, right: 24)
    }

    required init?(coder: NSCoder) {
        fatalError("init(cpder:) has not been implemented")
    }
    

}
