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
    
    
    var cards: [Card]!
    
    var snap: UISnapBehavior!
    var push: UIPushBehavior!
    var animator: UIDynamicAnimator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        animator = UIDynamicAnimator(referenceView: self.view)
        
        self.view.layoutIfNeeded()
    
        // added gesture recognizers
//        for card_object in cards! {
//            let card = card_object.front_image
//            
        
            // tap behaviors
//            let tapGesture = UITapGestureRecognizer(target: self, action:#selector(imageTapped))
//            card.addGestureRecognizer(tapGesture)
//            card.isUserInteractionEnabled = true
        
        let card_image = UIImage(named: "credit_card_blue")
        let card = UIImageView(image: card_image)
        card.contentMode = UIViewContentMode.scaleAspectFit
        
//        var origPos = card.center

        
        self.view.addSubview(card)
        
        // constraints
        card.translatesAutoresizingMaskIntoConstraints = false
        let margins = self.view.layoutMarginsGuide
        
        let status_bar_height = UIApplication.shared.statusBarFrame.height
        let top_margin = view.layoutMargins.top
        
//        card.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
//        card.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        card.topAnchor.constraint(equalTo: margins.topAnchor, constant: status_bar_height + top_margin).isActive = true
        card.heightAnchor.constraint(equalToConstant: view.frame.width/2).isActive = true
        card.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        card.widthAnchor.constraint(lessThanOrEqualToConstant: view.frame.width - 2*view.layoutMargins.left).isActive = true
        
        self.view.layoutIfNeeded()
        
        
        
        
//        card.topAnchor.constraint(equalTo: margins.topAnchor, constant: defaultMargin.top ).isActive = true
        // pan gesture
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(cardDragged))
        card.addGestureRecognizer(panGesture)
        card.isUserInteractionEnabled = true
        
//        snap = UISnapBehavior(item: card, snapTo: origPos)
//        snap.damping = 0.3
//        animator.addBehavior(snap)
        
//        }
        
        print("view loading")
    }
    
    func imageTapped(gesture: UIGestureRecognizer) {
        if let imageView = gesture.view as? UIImageView {
//            print("Image Tapped")
        }
    }
    
    func cardDragged(gesture: UIPanGestureRecognizer) {
        if let cardView = gesture.view as? UIImageView {
            print("Image dragged")
        }
    }
    /**
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesBegan")
    }
 **/
    
//    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
//        print("touchesEnded")
//    }
//    
//    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
//        print("touchesCancelled")
//    }
    
    /**
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            animator.removeAllBehaviors()
            
            push = UIPushBehavior(items: Cards, mode: UIPushBehaviorMode.instantaneous)
            push.setAngle( CGFloat(Double.pi / 2) , magnitude: 5)
            //            push.magnitude = 0.2
            //            push.pushDirection = CGVector(dx: 0.0, dy: -1.0)
            animator.addBehavior(push)
            
            /**
            let card = Cards[1]
            let location = touch.location(in: self.view)
            push = UIPushBehavior(items: Cards, mode: UIPushBehaviorMode.continuous)
            
            
            snap = UISnapBehavior(item: card as UIImageView!, snapTo: location)
            snap.damping = 0.3
            **/

        }
    }
 
 **/
 
    /**
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
//            animator.removeAllBehaviors()
            let card = Cards[1]
            let location = touch.location(in: self.view)
            
            
//            print(push.items)
            print ("touches moved")
            
      **/
            
//            card.center = CGPoint(x: self.view.frame.width / 2, y: location.y)
            
            /**
            snap = UISnapBehavior(item: card as UIImageView!, snapTo: location)
            snap.damping = 0.3
            animator.addBehavior(snap)
 
 
        }
    }
 
 **/
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

