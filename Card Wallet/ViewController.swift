//
//  ViewController.swift
//  Card Wallet
//
//  Created by Shuaib Ahmed on 6/13/17.
//  Copyright © 2017 Shuaib Labs. All rights reserved.
//

import UIKit
//import QuartzCore

class ViewController: UIViewController {
    
    var cards: [Card] = []
    
    var snap: UISnapBehavior!
    var push: UIPushBehavior!
    var animator: UIDynamicAnimator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let test_card = Card()
        
        // Do any additional setup after loading the view, typically from a nib.
        animator = UIDynamicAnimator(referenceView: self.view)
        
        self.view.layoutIfNeeded()
        
        let card_1 = Card()
        let card_2 = Card()
        let green_card = UIImage(named: "credit_card_green")
        card_2.front_image = UIImageView(image: green_card)
        let card_3 = Card()
        
        cards.append(card_1)
        cards.append(card_2)
        cards.append(card_3)
        
        let top_margin = view.layoutMargins.top
        let status_bar_height = UIApplication.shared.statusBarFrame.height
        var card_gap = top_margin + status_bar_height
        
        for card in cards {
            
            let card_front = card.front_image

            self.view.addSubview(card_front)
            
            // constraints
            card_front.translatesAutoresizingMaskIntoConstraints = false
            let margins = self.view.layoutMarginsGuide
            
            card_front.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
            card_front.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
            card_front.topAnchor.constraint(equalTo: margins.topAnchor, constant: card_gap).isActive = true
            
            card_gap += 4*top_margin
            card_front.heightAnchor.constraint(lessThanOrEqualToConstant: view.frame.width/2).isActive = true
            
            self.view.layoutIfNeeded()
        }
        
        print("view loading")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

