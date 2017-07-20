//
//  Card.swift
//  Card Wallet
//
//  Created by Shuaib Ahmed on 7/19/17.
//  Copyright © 2017 Shuaib Labs. All rights reserved.
//

import Foundation
import UIKit

class Card {
    var front_image: UIImageView
    var back_image: UIImageView
    
    init() {
        let stock_image = UIImage(named:"stock_credit_card")
        front_image = UIImageView(image: stock_image)
        back_image = UIImageView(image: stock_image)
    }
}
