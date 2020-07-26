//
//  SpacerView.swift
//  SlideOutMenu
//
//  Created by Ingvar on 9/25/19.
//  Copyright © 2019 Igor. All rights reserved.
//

import UIKit

class SpacerView: UIView {

    let space: CGFloat
    
    override var intrinsicContentSize: CGSize {
        return .init(width: space, height: space)
    }
    
    init(space: CGFloat) {
        self.space = space
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
