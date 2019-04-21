//
//  TopNavigationStackView.swift
//  Cupid
//
//  Created by Gain Chang on 22/04/2019.
//  Copyright © 2019 Gain Chang. All rights reserved.
//

import UIKit

class TopNavigationStackView: UIStackView {
    
    let fireImgView = UIImageView(image: #imageLiteral(resourceName: "app_icon"))
    let profileButton = UIButton(type: .system)
    let messageButton = UIButton(type: .system)

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        fireImgView.contentMode = .scaleAspectFit
        profileButton.setImage(#imageLiteral(resourceName: "top_left_profile").withRenderingMode(.alwaysOriginal), for: .normal)
        messageButton.setImage(#imageLiteral(resourceName: "top_right_messages").withRenderingMode(.alwaysOriginal), for: .normal)
        
        [profileButton, UIView(), fireImgView, UIView(), messageButton].forEach { (view) in
            addArrangedSubview(view)
        }
        
        distribution = .equalCentering
        
        isLayoutMarginsRelativeArrangement = true
        layoutMargins = .init(top: 0, left: 16, bottom: 0, right: 16)
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
