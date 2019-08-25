//
//  BorderButton.swift
//  Swoosh
//
//  Created by Winston on 8/24/19.
//  Copyright © 2019 Winston. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }
}

