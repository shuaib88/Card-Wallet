//
//  ViewController.swift
//  Card Wallet
//
//  Created by Shuaib Ahmed on 6/13/17.
//  Copyright © 2017 Shuaib Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var Cards: [UIImageView]!
    
    var snap: UISnapBehavior!
    var animator: UIDynamicAnimator!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tapGesture = UITapGestureRecognizer(target: self, action:#selector(imageTapped))
        
        for card in Cards! {
            card.addGestureRecognizer(tapGesture)
            card.isUserInteractionEnabled = true
        }
        
        animator = UIDynamicAnimator(referenceView: self.view)
        
        self.view.layoutIfNeeded()
        
        
    }
    
    func imageTapped(gesture: UIGestureRecognizer) {
        if let imageView = gesture.view as? UIImageView {
            print("Image Tapped")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

